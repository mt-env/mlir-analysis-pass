#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <errno.h>
#include <glob.h>

#define SH_TOK_BUFSIZE 64
#define SH_TOK_DELIM " \t\r\n\a"
#define SH_HISTORY_BUFSIZE 64

// Command history
static char** history_list;
static int history_count;
static int history_capacity;

// Command structure with I/O redirection info
typedef struct command {
    char** args;       // NULL-terminated argument list (without redirection tokens)
    char* infile;      // Input file for < redirection (NULL if none)
    char* outfile;     // Output file for > redirection (NULL if none)
} command;

// Pipeline structure: a sequence of commands connected by pipes
typedef struct pipeline {
    command** commands;  // Array of command pointers
    int num_commands;    // Number of commands in the pipeline
    int background;      // Run in background if trailing '&'
} pipeline;

static void sh_loop(void);
static char* sh_read_line(void);
static char* sh_preprocess(char* line);
static char** sh_split_line(char* line);
static command* sh_parse_cmd(char** tokens, int start, int end);
static pipeline* sh_parse_pipeline(char** tokens);
static void sh_free_cmd(command* cmd);
static void sh_free_pipeline(pipeline* pl);
static void sh_execute(pipeline* pl);
static void sh_launch(command* cmd);
static int sh_builtin(command* cmd);
static void sh_history_add(const char* line);
static void sh_history_init(void);
static void sh_history_free(void);

int main(int argc, char **argv) {
    sh_history_init();
    sh_loop();
    sh_history_free();
    return EXIT_SUCCESS;
}

static void sh_loop(void) {
    char* line;
    char** tokens;
    pipeline* pl;

    do {
        fprintf(stderr, "utsh$ ");
        line = sh_read_line();
        sh_history_add(line);
        char* processed = sh_preprocess(line);
        tokens = sh_split_line(processed);

        // Process each semicolon-delimited segment
        int start = 0;
        for (int i = 0; ; i++) {
            if (tokens[i] == NULL || strcmp(tokens[i], ";") == 0) {
                // Only parse/execute if the segment is non-empty
                if (i > start) {
                    // Temporarily null-terminate the segment
                    char* saved = tokens[i];
                    tokens[i] = NULL;
                    pl = sh_parse_pipeline(tokens + start);
                    sh_execute(pl);
                    sh_free_pipeline(pl);
                    tokens[i] = saved;
                }
                if (tokens[i] == NULL)
                    break;
                start = i + 1;
            }
        }

        free(line);
        free(processed);
        free(tokens);
    } while (1);
}

static char* sh_read_line(void) {
    char* line = NULL;
    size_t bufsize = 0;  // have getline allocate a buffer for us

    if (getline(&line, &bufsize, stdin) == -1) {
        if (feof(stdin)) { // EOF
            fprintf(stderr, "EOF\n");
            exit(EXIT_SUCCESS);
        } else {
            fprintf(stderr, "Value of errno: %d\n", errno);
            exit(EXIT_FAILURE);
        }
    }
    return line;
}

// Preprocess a line to insert spaces around semicolons (respecting quotes)
// so that the tokenizer treats ';' as a standalone token.
// Returns a newly allocated string; caller must free it.
static char* sh_preprocess(char* line) {
    // Worst case: every char is ';', each needs " ; " = 3 chars
    size_t len = strlen(line);
    char* result = malloc(len * 3 + 1);
    if (result == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }

    int in_quotes = 0;
    size_t j = 0;
    for (size_t i = 0; i < len; i++) {
        if (line[i] == '"') {
            in_quotes = !in_quotes;
            result[j++] = line[i];
        } else if ((line[i] == ';' || line[i] == '&') && !in_quotes) {
            result[j++] = ' ';
            result[j++] = line[i];
            result[j++] = ' ';
        } else {
            result[j++] = line[i];
        }
    }
    result[j] = '\0';
    return result;
}

static char** sh_split_line(char* line) {
    int bufsize = SH_TOK_BUFSIZE;
    int position = 0;
    char** tokens = malloc(bufsize * sizeof(char*));

    if (tokens == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }

    char* p = line;
    while (*p != '\0') {
        // Skip whitespace
        while (*p != '\0' && strchr(SH_TOK_DELIM, *p) != NULL) {
            p++;
        }
        if (*p == '\0') break;

        char* token_start;
        char* token_end;
        int is_quoted = 0;

        if (*p == '"') {
            // Quoted string: find matching closing quote
            is_quoted = 1;
            p++;  // Skip opening quote
            token_start = p;
            while (*p != '\0' && *p != '"') {
                p++;
            }
            token_end = p;
            if (*p == '"') {
                p++;  // Skip closing quote
            }
        } else {
            // Unquoted token: read until whitespace
            token_start = p;
            while (*p != '\0' && strchr(SH_TOK_DELIM, *p) == NULL && *p != '"') {
                p++;
            }
            token_end = p;
        }

        // Null-terminate the token in place (allow empty strings for quoted tokens)
        if (token_end > token_start || is_quoted) {
            char next_char = *token_end;
            *token_end = '\0';
            tokens[position] = token_start;
            position++;
            // If we null-terminated a non-null char, advance p past it
            if (next_char != '\0' && p == token_end) {
                p++;
            }

            if (position >= bufsize) {
                bufsize += SH_TOK_BUFSIZE;
                char** tokens_backup = tokens;
                tokens = realloc(tokens, bufsize * sizeof(char*));
                if (tokens == NULL) {
                    free(tokens_backup);
                    fprintf(stderr, "sh: allocation error\n");
                    exit(EXIT_FAILURE);
                }
            }
        }
    }
    tokens[position] = NULL;
    return tokens;
}

// Parse a single command from tokens[start] to tokens[end-1]
static command* sh_parse_cmd(char** tokens, int start, int end) {
    command* cmd = malloc(sizeof(command));
    if (cmd == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }

    cmd->infile = NULL;
    cmd->outfile = NULL;

    // Allocate args array (may grow during glob expansion)
    int args_capacity = (end - start) + 1;
    cmd->args = malloc(args_capacity * sizeof(char*));
    if (cmd->args == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }

    int arg_pos = 0;
    for (int i = start; i < end; i++) {
        if (strcmp(tokens[i], "<") == 0) {
            // Input redirection
            if (i + 1 < end) {
                cmd->infile = tokens[i + 1];
                i++;  // Skip the filename
            } else {
                fprintf(stderr, "sh: syntax error: expected filename after '<'\n");
            }
        } else if (strcmp(tokens[i], ">") == 0) {
            // Output redirection
            if (i + 1 < end) {
                cmd->outfile = tokens[i + 1];
                i++;  // Skip the filename
            } else {
                fprintf(stderr, "sh: syntax error: expected filename after '>'\n");
            }
        } else if (strpbrk(tokens[i], "*?[") != NULL) {
            // Glob expansion
            glob_t glob_result;
            int ret = glob(tokens[i], GLOB_NOCHECK | GLOB_TILDE, NULL, &glob_result);
            if (ret != 0 && ret != GLOB_NOMATCH) {
                // On error, keep original token
                cmd->args[arg_pos++] = strdup(tokens[i]);
            } else {
                // Ensure capacity for all matched paths
                int needed = arg_pos + (int)glob_result.gl_pathc + 1;
                if (needed > args_capacity) {
                    args_capacity = needed * 2;
                    cmd->args = realloc(cmd->args, args_capacity * sizeof(char*));
                    if (cmd->args == NULL) {
                        fprintf(stderr, "sh: allocation error\n");
                        exit(EXIT_FAILURE);
                    }
                }
                for (size_t j = 0; j < glob_result.gl_pathc; j++) {
                    cmd->args[arg_pos++] = strdup(glob_result.gl_pathv[j]);
                }
            }
            globfree(&glob_result);
        } else {
            // Regular argument
            cmd->args[arg_pos++] = strdup(tokens[i]);
        }
    }
    cmd->args[arg_pos] = NULL;

    return cmd;
}

// Parse a pipeline by splitting on '|' tokens
static pipeline* sh_parse_pipeline(char** tokens) {
    pipeline* pl = malloc(sizeof(pipeline));
    if (pl == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }

    // Count total tokens and pipe characters
    int total_tokens = 0;
    int num_pipes = 0;
    for (int i = 0; tokens[i] != NULL; i++) {
        total_tokens++;
        if (strcmp(tokens[i], "|") == 0) {
            num_pipes++;
        }
    }

    // Check for trailing '&' to run in background
    pl->background = 0;
    if (total_tokens > 0 && strcmp(tokens[total_tokens - 1], "&") == 0) {
        pl->background = 1;
        tokens[total_tokens - 1] = NULL;
        total_tokens--;
    }

    pl->num_commands = num_pipes + 1;
    pl->commands = malloc(pl->num_commands * sizeof(command*));
    if (pl->commands == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }

    // Parse each command segment
    int cmd_idx = 0;
    int start = 0;
    for (int i = 0; i <= total_tokens; i++) {
        if (tokens[i] == NULL || strcmp(tokens[i], "|") == 0) {
            pl->commands[cmd_idx] = sh_parse_cmd(tokens, start, i);
            cmd_idx++;
            start = i + 1;
        }
    }

    return pl;
}

static void sh_free_cmd(command* cmd) {
    if (cmd != NULL) {
        if (cmd->args != NULL) {
            for (int i = 0; cmd->args[i] != NULL; i++) {
                free(cmd->args[i]);
            }
            free(cmd->args);
        }
        free(cmd);
    }
}

static void sh_free_pipeline(pipeline* pl) {
    if (pl != NULL) {
        for (int i = 0; i < pl->num_commands; i++) {
            sh_free_cmd(pl->commands[i]);
        }
        free(pl->commands);
        free(pl);
    }
}

static void sh_execute(pipeline* pl) {
    // reap any finished background processes
    while (waitpid(-1, NULL, WNOHANG) > 0);

    // handle builtins in the parent process (only for single commands)
    if (pl->num_commands == 1 && pl->commands[0]->args[0] != NULL) {
        if (sh_builtin(pl->commands[0]))
            return;
    }

    int prev_read_fd = -1;  // read end from previous command's pipe
    int pids[pl->num_commands];

    for (int i = 0; i < pl->num_commands; i++) {
        command* cmd = pl->commands[i];
        int fds[2] = {-1, -1};

        // create pipe for this command's output (if not the last command)
        if (i < pl->num_commands - 1) {
            if (pipe(fds) != 0) {
                fprintf(stderr, "sh: broken pipe\n");
                exit(EXIT_FAILURE);
            }
        }


        int pid = fork();

        // fork somehow failed
        if (pid < 0)
            exit(EXIT_FAILURE);

        // child will exec
        if (pid == 0) {
            // redirect stdin from previous command's pipe
            if (prev_read_fd != -1) {
                close(STDIN_FILENO);
                dup(prev_read_fd);
                close(prev_read_fd);
            }

            // redirect stdout to this command's pipe
            if (fds[1] != -1) {
                close(STDOUT_FILENO);
                dup(fds[1]);
                close(fds[0]);
                close(fds[1]);
            }

            sh_launch(cmd);
        }

        // parent closes fds
        else {
            pids[i] = pid;
            // close previous read, current write, keep current read for next cmd
            if (prev_read_fd != -1)
                close(prev_read_fd);
            if (fds[1] != -1)
                close(fds[1]);
            prev_read_fd = fds[0];

            if (!pl->background) {
                int status;
                waitpid(pid, &status, 0);
                if (WIFEXITED(status) && WEXITSTATUS(status) != 0)
                    break;
            }
        }
    }
}

static void sh_launch(command* cmd) {
    // handle input redirection
    if (cmd->infile != NULL) {
        if (close(STDIN_FILENO) < 0) {
            fprintf(stderr, "sh: cannot redirect standard in\n");
            exit(EXIT_FAILURE);
        }
        if (open(cmd->infile, O_RDONLY) < 0) {
            fprintf(stderr, "sh: %s: Error reading file\n", cmd->infile);
            exit(EXIT_FAILURE);
        }
    }

    // handle output redirection
    if (cmd->outfile != NULL) {
        if (close(STDOUT_FILENO) < 0) {
            fprintf(stderr, "sh: cannot redirect standard out\n");
            exit(EXIT_FAILURE);
        }
        if (open(cmd->outfile, O_CREAT | O_WRONLY | O_TRUNC, 0644) < 0) {
            fprintf(stderr, "sh: %s: Error outputting file\n", cmd->outfile);
            exit(EXIT_FAILURE);
        }
    }

    execvp(cmd->args[0], cmd->args);
    fprintf(stderr, "sh: %s: command not found\n", cmd->args[0]);
    exit(EXIT_FAILURE);
}

// returns 1 if the command was a builtin (handled), 0 otherwise.
static int sh_builtin(command* cmd) {
    char* name = cmd->args[0];

    if (strcmp(name, "cd") == 0) {
        const char* dir = cmd->args[1];
        if (dir == NULL) {
            dir = getenv("HOME");
            if (dir == NULL) {
                fprintf(stderr, "sh: cd: HOME not set\n");
                return 1;
            }
        }
        if (chdir(dir) != 0) {
            fprintf(stderr, "sh: cd: %s: %s\n", dir, strerror(errno));
        }
        return 1;
    }

    if (strcmp(name, "history") == 0) {
        for (int i = 0; i < history_count; i++) {
            printf("%5d  %s", i + 1, history_list[i]);
        }
        return 1;
    }

    return 0;
}

static void sh_history_init(void) {
    history_capacity = SH_HISTORY_BUFSIZE;
    history_count = 0;
    history_list = malloc(history_capacity * sizeof(char*));
    if (history_list == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }
}

static void sh_history_add(const char* line) {
    if (history_count >= history_capacity) {
        history_capacity *= 2;
        history_list = realloc(history_list, history_capacity * sizeof(char*));
        if (history_list == NULL) {
            fprintf(stderr, "sh: allocation error\n");
            exit(EXIT_FAILURE);
        }
    }
    history_list[history_count] = strdup(line);
    if (history_list[history_count] == NULL) {
        fprintf(stderr, "sh: allocation error\n");
        exit(EXIT_FAILURE);
    }
    history_count++;
}

static void sh_history_free(void) {
    for (int i = 0; i < history_count; i++) {
        free(history_list[i]);
    }
    free(history_list);
}
