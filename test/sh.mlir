#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "Homebrew clang version 23.1.2", llvm.module_asm = [], llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.mlir.global external @stderr() {addr_space = 0 : i32, alignment = 8 : i64} : !llvm.ptr
  llvm.mlir.global private unnamed_addr constant @".str"("utsh$ \00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.1"(";\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global external @stdin() {addr_space = 0 : i32, alignment = 8 : i64} : !llvm.ptr
  llvm.mlir.global private unnamed_addr constant @".str.2"("EOF\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.3"("Value of errno: %d\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global internal @history_count(0 : i32) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : i32
  llvm.mlir.global internal @history_capacity(0 : i32) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : i32
  llvm.mlir.global internal @history_list() {addr_space = 0 : i32, alignment = 8 : i64, dso_local} : !llvm.ptr {
    %0 = llvm.mlir.zero : !llvm.ptr
    llvm.return %0 : !llvm.ptr
  }
  llvm.mlir.global private unnamed_addr constant @".str.4"("sh: allocation error\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.5"(" \09\0D\0A\07\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.6"("|\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.7"("&\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.8"("<\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.9"("sh: syntax error: expected filename after '<'\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.10"(">\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.11"("sh: syntax error: expected filename after '>'\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.12"("*?[\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @__const.sh_execute.fds(dense<-1> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<2 x i32>
  llvm.mlir.global private unnamed_addr constant @".str.13"("sh: broken pipe\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.14"("cd\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.15"("HOME\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.16"("sh: cd: HOME not set\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.17"("sh: cd: %s: %s\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.18"("history\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.19"("%5d  %s\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.20"("sh: cannot redirect standard in\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.21"("sh: %s: Error reading file\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.22"("sh: cannot redirect standard out\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.23"("sh: %s: Error outputting file\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.24"("sh: %s: command not found\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.module_flags [#llvm.mlir.module_flag<min, "PIC Level", 2 : i32>, #llvm.mlir.module_flag<max, "PIE Level", 2 : i32>, #llvm.mlir.module_flag<max, "uwtable", 2 : i32>, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>]
  llvm.func @main(%arg0: i32 {llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}) -> i32 attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %2 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg0, %3 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.call @sh_history_init() : () -> ()
    llvm.call @sh_loop() : () -> ()
    llvm.call @sh_history_free() : () -> ()
    llvm.return %1 : i32
  }
  llvm.func internal @sh_history_init() attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(64 : i32) : i32
    %1 = llvm.mlir.addressof @history_capacity : !llvm.ptr
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.addressof @history_count : !llvm.ptr
    %4 = llvm.mlir.constant(8 : i64) : i64
    %5 = llvm.mlir.addressof @history_list : !llvm.ptr
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = llvm.mlir.addressof @stderr : !llvm.ptr
    %8 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %9 = llvm.mlir.constant(1 : i32) : i32
    llvm.store %0, %1 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %2, %3 {alignment = 4 : i64} : i32, !llvm.ptr
    %10 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.sext %10 : i32 to i64
    %12 = llvm.mul %11, %4 : i64
    %13 = llvm.call @malloc(%12) {allocsize = array<i32: 0>, no_unwind} : (i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    llvm.store %13, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %14 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.icmp "eq" %14, %6 : !llvm.ptr
    llvm.cond_br %15, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %16 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %17 = llvm.call @fprintf(%16, %8) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%9) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb2:  // pred: ^bb0
    llvm.return
  }
  llvm.func internal @sh_loop() attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.addressof @stderr : !llvm.ptr
    %2 = llvm.mlir.addressof @".str" : !llvm.ptr
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.zero : !llvm.ptr
    %5 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb12
    %14 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.call @fprintf(%14, %2) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %16 = llvm.call @sh_read_line() : () -> !llvm.ptr
    llvm.store %16, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %17 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @sh_history_add(%17) : (!llvm.ptr {llvm.noundef}) -> ()
    %18 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %19 = llvm.call @sh_preprocess(%18) : (!llvm.ptr {llvm.noundef}) -> !llvm.ptr
    llvm.store %19, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %20 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.call @sh_split_line(%20) : (!llvm.ptr {llvm.noundef}) -> !llvm.ptr
    llvm.store %21, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %3, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb1, ^bb10
    %22 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %23 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.sext %23 : i32 to i64
    %25 = llvm.getelementptr inbounds %22[%24] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %26 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.icmp "eq" %26, %4 : !llvm.ptr
    llvm.cond_br %27, ^bb4, ^bb3
  ^bb3:  // pred: ^bb2
    %28 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %29 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %30 = llvm.sext %29 : i32 to i64
    %31 = llvm.getelementptr inbounds %28[%30] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %32 = llvm.load %31 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %33 = llvm.call @strcmp(%32, %5) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %34 = llvm.icmp "eq" %33, %3 : i32
    llvm.cond_br %34, ^bb4, ^bb9
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %35 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.icmp "sgt" %35, %36 : i32
    llvm.cond_br %37, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %38 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %39 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %40 = llvm.sext %39 : i32 to i64
    %41 = llvm.getelementptr inbounds %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %42 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %42, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %43 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %45 = llvm.sext %44 : i32 to i64
    %46 = llvm.getelementptr inbounds %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %4, %46 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %47 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %48 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.sext %48 : i32 to i64
    %50 = llvm.getelementptr inbounds %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %51 = llvm.call @sh_parse_pipeline(%50) : (!llvm.ptr {llvm.noundef}) -> !llvm.ptr
    llvm.store %51, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %52 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @sh_execute(%52) : (!llvm.ptr {llvm.noundef}) -> ()
    %53 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @sh_free_pipeline(%53) : (!llvm.ptr {llvm.noundef}) -> ()
    %54 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %55 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %56 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %57 = llvm.sext %56 : i32 to i64
    %58 = llvm.getelementptr inbounds %55[%57] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %54, %58 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %59 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %60 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %61 = llvm.sext %60 : i32 to i64
    %62 = llvm.getelementptr inbounds %59[%61] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %63 = llvm.load %62 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %64 = llvm.icmp "eq" %63, %4 : !llvm.ptr
    llvm.cond_br %64, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.br ^bb11
  ^bb8:  // pred: ^bb6
    %65 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.add %65, %0 overflow<nsw> : i32
    llvm.store %66, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb3, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    %67 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.add %67, %0 overflow<nsw> : i32
    llvm.store %68, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb2
  ^bb11:  // pred: ^bb7
    %69 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%69) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    %70 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%70) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    %71 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%71) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb12
  ^bb12:  // pred: ^bb11
    llvm.cond_br %6, ^bb1, ^bb13
  ^bb13:  // pred: ^bb12
    llvm.return
  }
  llvm.func internal @sh_history_free() attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.addressof @history_count : !llvm.ptr
    %3 = llvm.mlir.addressof @history_list : !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %5 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %6 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %7 = llvm.icmp "slt" %5, %6 : i32
    llvm.cond_br %7, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %8 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.sext %9 : i32 to i64
    %11 = llvm.getelementptr inbounds %8[%10] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %12 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%12) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %13 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %14 = llvm.add %13, %0 overflow<nsw> : i32
    llvm.store %14, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    %15 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%15) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.return
  }
  llvm.func @fprintf(!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, ...) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func internal @sh_read_line() -> !llvm.ptr attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.addressof @stdin : !llvm.ptr
    %4 = llvm.mlir.constant(-1 : i64) : i64
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr
    %7 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %8 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %2, %10 {alignment = 8 : i64} : i64, !llvm.ptr
    %11 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %12 = llvm.call @getline(%9, %10, %11) : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i64
    %13 = llvm.icmp "eq" %12, %4 : i64
    llvm.cond_br %13, ^bb1, ^bb4
  ^bb1:  // pred: ^bb0
    %14 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.call @feof(%14) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> i32
    %16 = llvm.icmp "ne" %15, %5 : i32
    llvm.cond_br %16, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %17 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %18 = llvm.call @fprintf(%17, %8) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%5) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb3:  // pred: ^bb1
    %19 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %20 = llvm.call @__errno_location() {memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, will_return} : () -> !llvm.ptr
    %21 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %22 = llvm.call @fprintf(%19, %7, %21) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb4:  // pred: ^bb0
    %23 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %23 : !llvm.ptr
  }
  llvm.func internal @sh_history_add(%arg0: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.addressof @history_count : !llvm.ptr
    %2 = llvm.mlir.addressof @history_capacity : !llvm.ptr
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.addressof @history_list : !llvm.ptr
    %5 = llvm.mlir.constant(8 : i64) : i64
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = llvm.mlir.addressof @stderr : !llvm.ptr
    %8 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %10 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %12 = llvm.icmp "sge" %10, %11 : i32
    llvm.cond_br %12, ^bb1, ^bb4
  ^bb1:  // pred: ^bb0
    %13 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %14 = llvm.mul %13, %3 overflow<nsw> : i32
    llvm.store %14, %2 {alignment = 4 : i64} : i32, !llvm.ptr
    %15 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %16 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %17 = llvm.sext %16 : i32 to i64
    %18 = llvm.mul %17, %5 : i64
    %19 = llvm.call @realloc(%15, %18) {allocsize = array<i32: 1>, no_unwind} : (!llvm.ptr {llvm.noundef}, i64 {llvm.noundef}) -> !llvm.ptr
    llvm.store %19, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %20 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.icmp "eq" %20, %6 : !llvm.ptr
    llvm.cond_br %21, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %22 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %23 = llvm.call @fprintf(%22, %8) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb0, ^bb3
    %24 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.call @strdup(%24) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    %26 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.sext %27 : i32 to i64
    %29 = llvm.getelementptr inbounds %26[%28] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %25, %29 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %30 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %31 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %32 = llvm.sext %31 : i32 to i64
    %33 = llvm.getelementptr inbounds %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %34 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %35 = llvm.icmp "eq" %34, %6 : !llvm.ptr
    llvm.cond_br %35, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %36 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %37 = llvm.call @fprintf(%36, %8) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb6:  // pred: ^bb4
    %38 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %39 = llvm.add %38, %0 overflow<nsw> : i32
    llvm.store %39, %1 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.return
  }
  llvm.func internal @sh_preprocess(%arg0: !llvm.ptr {llvm.noundef}) -> !llvm.ptr attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(3 : i64) : i64
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.mlir.zero : !llvm.ptr
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.mlir.constant(0 : i8) : i8
    %7 = llvm.mlir.constant(34 : i32) : i32
    %8 = llvm.mlir.constant(59 : i32) : i32
    %9 = llvm.mlir.constant(38 : i32) : i32
    %10 = llvm.mlir.constant(32 : i8) : i8
    %11 = llvm.mlir.constant(true) : i1
    %12 = llvm.mlir.addressof @stderr : !llvm.ptr
    %13 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %20 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.call @strlen(%20) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}) -> i64
    llvm.store %21, %15 {alignment = 8 : i64} : i64, !llvm.ptr
    %22 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> i64
    %23 = llvm.mul %22, %1 : i64
    %24 = llvm.add %23, %2 : i64
    %25 = llvm.call @malloc(%24) {allocsize = array<i32: 0>, no_unwind} : (i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    llvm.store %25, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %26 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.icmp "eq" %26, %3 : !llvm.ptr
    llvm.cond_br %27, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %28 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %29 = llvm.call @fprintf(%28, %13) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb2:  // pred: ^bb0
    llvm.store %4, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %5, %18 {alignment = 8 : i64} : i64, !llvm.ptr
    llvm.store %5, %19 {alignment = 8 : i64} : i64, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb13
    %30 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %31 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> i64
    %32 = llvm.icmp "ult" %30, %31 : i64
    llvm.cond_br %32, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %33 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %34 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %35 = llvm.getelementptr inbounds|nuw %33[%34] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %36 = llvm.load %35 {alignment = 1 : i64} : !llvm.ptr -> i8
    %37 = llvm.sext %36 : i8 to i32
    %38 = llvm.icmp "eq" %37, %7 : i32
    llvm.cond_br %38, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %39 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %40 = llvm.icmp "ne" %39, %4 : i32
    %41 = llvm.xor %40, %11 : i1
    %42 = llvm.zext %41 : i1 to i32
    llvm.store %42, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    %43 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %45 = llvm.getelementptr inbounds|nuw %43[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %46 = llvm.load %45 {alignment = 1 : i64} : !llvm.ptr -> i8
    %47 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %48 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> i64
    %49 = llvm.add %48, %2 : i64
    llvm.store %49, %18 {alignment = 8 : i64} : i64, !llvm.ptr
    %50 = llvm.getelementptr inbounds|nuw %47[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %46, %50 {alignment = 1 : i64} : i8, !llvm.ptr
    llvm.br ^bb12
  ^bb6:  // pred: ^bb4
    %51 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %52 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %53 = llvm.getelementptr inbounds|nuw %51[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %54 = llvm.load %53 {alignment = 1 : i64} : !llvm.ptr -> i8
    %55 = llvm.sext %54 : i8 to i32
    %56 = llvm.icmp "eq" %55, %8 : i32
    llvm.cond_br %56, ^bb8, ^bb7
  ^bb7:  // pred: ^bb6
    %57 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %59 = llvm.getelementptr inbounds|nuw %57[%58] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %60 = llvm.load %59 {alignment = 1 : i64} : !llvm.ptr -> i8
    %61 = llvm.sext %60 : i8 to i32
    %62 = llvm.icmp "eq" %61, %9 : i32
    llvm.cond_br %62, ^bb8, ^bb10
  ^bb8:  // 2 preds: ^bb6, ^bb7
    %63 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %64 = llvm.icmp "ne" %63, %4 : i32
    llvm.cond_br %64, ^bb10, ^bb9
  ^bb9:  // pred: ^bb8
    %65 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %66 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> i64
    %67 = llvm.add %66, %2 : i64
    llvm.store %67, %18 {alignment = 8 : i64} : i64, !llvm.ptr
    %68 = llvm.getelementptr inbounds|nuw %65[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %10, %68 {alignment = 1 : i64} : i8, !llvm.ptr
    %69 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %70 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %71 = llvm.getelementptr inbounds|nuw %69[%70] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %72 = llvm.load %71 {alignment = 1 : i64} : !llvm.ptr -> i8
    %73 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %74 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> i64
    %75 = llvm.add %74, %2 : i64
    llvm.store %75, %18 {alignment = 8 : i64} : i64, !llvm.ptr
    %76 = llvm.getelementptr inbounds|nuw %73[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %72, %76 {alignment = 1 : i64} : i8, !llvm.ptr
    %77 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %78 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> i64
    %79 = llvm.add %78, %2 : i64
    llvm.store %79, %18 {alignment = 8 : i64} : i64, !llvm.ptr
    %80 = llvm.getelementptr inbounds|nuw %77[%78] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %10, %80 {alignment = 1 : i64} : i8, !llvm.ptr
    llvm.br ^bb11
  ^bb10:  // 2 preds: ^bb7, ^bb8
    %81 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %82 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %83 = llvm.getelementptr inbounds|nuw %81[%82] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %84 = llvm.load %83 {alignment = 1 : i64} : !llvm.ptr -> i8
    %85 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %86 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> i64
    %87 = llvm.add %86, %2 : i64
    llvm.store %87, %18 {alignment = 8 : i64} : i64, !llvm.ptr
    %88 = llvm.getelementptr inbounds|nuw %85[%86] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %84, %88 {alignment = 1 : i64} : i8, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // 2 preds: ^bb9, ^bb10
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb5, ^bb11
    llvm.br ^bb13
  ^bb13:  // pred: ^bb12
    %89 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %90 = llvm.add %89, %2 : i64
    llvm.store %90, %19 {alignment = 8 : i64} : i64, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb14:  // pred: ^bb3
    %91 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %92 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> i64
    %93 = llvm.getelementptr inbounds|nuw %91[%92] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %6, %93 {alignment = 1 : i64} : i8, !llvm.ptr
    %94 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %94 : !llvm.ptr
  }
  llvm.func internal @sh_split_line(%arg0: !llvm.ptr {llvm.noundef}) -> !llvm.ptr attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(64 : i32) : i32
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(8 : i64) : i64
    %4 = llvm.mlir.zero : !llvm.ptr
    %5 = llvm.mlir.constant(false) : i1
    %6 = llvm.mlir.addressof @".str.5" : !llvm.ptr
    %7 = llvm.mlir.constant(34 : i32) : i32
    %8 = llvm.mlir.constant(0 : i8) : i8
    %9 = llvm.mlir.addressof @stderr : !llvm.ptr
    %10 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i8 {alignment = 1 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %1, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %2, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    %21 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %22 = llvm.sext %21 : i32 to i64
    %23 = llvm.mul %22, %3 : i64
    %24 = llvm.call @malloc(%23) {allocsize = array<i32: 0>, no_unwind} : (i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    llvm.store %24, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %25 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %26 = llvm.icmp "eq" %25, %4 : !llvm.ptr
    llvm.cond_br %26, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %27 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %28 = llvm.call @fprintf(%27, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb2:  // pred: ^bb0
    %29 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %29, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb37
    %30 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %31 = llvm.load %30 {alignment = 1 : i64} : !llvm.ptr -> i8
    %32 = llvm.sext %31 : i8 to i32
    %33 = llvm.icmp "ne" %32, %2 : i32
    llvm.cond_br %33, ^bb4, ^bb38
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb8
    %34 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %35 = llvm.load %34 {alignment = 1 : i64} : !llvm.ptr -> i8
    %36 = llvm.sext %35 : i8 to i32
    %37 = llvm.icmp "ne" %36, %2 : i32
    llvm.cond_br %37, ^bb6, ^bb7(%5 : i1)
  ^bb6:  // pred: ^bb5
    %38 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %39 = llvm.load %38 {alignment = 1 : i64} : !llvm.ptr -> i8
    %40 = llvm.sext %39 : i8 to i32
    %41 = llvm.call @strchr(%6, %40) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> !llvm.ptr
    %42 = llvm.icmp "ne" %41, %4 : !llvm.ptr
    llvm.br ^bb7(%42 : i1)
  ^bb7(%43: i1):  // 2 preds: ^bb5, ^bb6
    llvm.cond_br %43, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %44 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.getelementptr inbounds|nuw %44[%0] : (!llvm.ptr, i32) -> !llvm.ptr, i8
    llvm.store %45, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb9:  // pred: ^bb7
    %46 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.load %46 {alignment = 1 : i64} : !llvm.ptr -> i8
    %48 = llvm.sext %47 : i8 to i32
    %49 = llvm.icmp "eq" %48, %2 : i32
    llvm.cond_br %49, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.br ^bb38
  ^bb11:  // pred: ^bb9
    llvm.store %2, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    %50 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %51 = llvm.load %50 {alignment = 1 : i64} : !llvm.ptr -> i8
    %52 = llvm.sext %51 : i8 to i32
    %53 = llvm.icmp "eq" %52, %7 : i32
    llvm.cond_br %53, ^bb12, ^bb20
  ^bb12:  // pred: ^bb11
    llvm.store %0, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    %54 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %55 = llvm.getelementptr inbounds|nuw %54[%0] : (!llvm.ptr, i32) -> !llvm.ptr, i8
    llvm.store %55, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %56 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %56, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb12, ^bb16
    %57 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.load %57 {alignment = 1 : i64} : !llvm.ptr -> i8
    %59 = llvm.sext %58 : i8 to i32
    %60 = llvm.icmp "ne" %59, %2 : i32
    llvm.cond_br %60, ^bb14, ^bb15(%5 : i1)
  ^bb14:  // pred: ^bb13
    %61 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %62 = llvm.load %61 {alignment = 1 : i64} : !llvm.ptr -> i8
    %63 = llvm.sext %62 : i8 to i32
    %64 = llvm.icmp "ne" %63, %7 : i32
    llvm.br ^bb15(%64 : i1)
  ^bb15(%65: i1):  // 2 preds: ^bb13, ^bb14
    llvm.cond_br %65, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %66 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %67 = llvm.getelementptr inbounds|nuw %66[%0] : (!llvm.ptr, i32) -> !llvm.ptr, i8
    llvm.store %67, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb13 {loop_annotation = #loop_annotation}
  ^bb17:  // pred: ^bb15
    %68 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %68, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %69 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %70 = llvm.load %69 {alignment = 1 : i64} : !llvm.ptr -> i8
    %71 = llvm.sext %70 : i8 to i32
    %72 = llvm.icmp "eq" %71, %7 : i32
    llvm.cond_br %72, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %73 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %74 = llvm.getelementptr inbounds|nuw %73[%0] : (!llvm.ptr, i32) -> !llvm.ptr, i8
    llvm.store %74, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb19
  ^bb19:  // 2 preds: ^bb17, ^bb18
    llvm.br ^bb27
  ^bb20:  // pred: ^bb11
    %75 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %75, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb20, ^bb25
    %76 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %77 = llvm.load %76 {alignment = 1 : i64} : !llvm.ptr -> i8
    %78 = llvm.sext %77 : i8 to i32
    %79 = llvm.icmp "ne" %78, %2 : i32
    llvm.cond_br %79, ^bb22, ^bb24(%5 : i1)
  ^bb22:  // pred: ^bb21
    %80 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %81 = llvm.load %80 {alignment = 1 : i64} : !llvm.ptr -> i8
    %82 = llvm.sext %81 : i8 to i32
    %83 = llvm.call @strchr(%6, %82) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> !llvm.ptr
    %84 = llvm.icmp "eq" %83, %4 : !llvm.ptr
    llvm.cond_br %84, ^bb23, ^bb24(%5 : i1)
  ^bb23:  // pred: ^bb22
    %85 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %86 = llvm.load %85 {alignment = 1 : i64} : !llvm.ptr -> i8
    %87 = llvm.sext %86 : i8 to i32
    %88 = llvm.icmp "ne" %87, %7 : i32
    llvm.br ^bb24(%88 : i1)
  ^bb24(%89: i1):  // 3 preds: ^bb21, ^bb22, ^bb23
    llvm.cond_br %89, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %90 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %91 = llvm.getelementptr inbounds|nuw %90[%0] : (!llvm.ptr, i32) -> !llvm.ptr, i8
    llvm.store %91, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb21 {loop_annotation = #loop_annotation}
  ^bb26:  // pred: ^bb24
    %92 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %92, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb27
  ^bb27:  // 2 preds: ^bb19, ^bb26
    %93 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %94 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %95 = llvm.icmp "ugt" %93, %94 : !llvm.ptr
    llvm.cond_br %95, ^bb29, ^bb28
  ^bb28:  // pred: ^bb27
    %96 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %97 = llvm.icmp "ne" %96, %2 : i32
    llvm.cond_br %97, ^bb29, ^bb37
  ^bb29:  // 2 preds: ^bb27, ^bb28
    %98 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %99 = llvm.load %98 {alignment = 1 : i64} : !llvm.ptr -> i8
    llvm.store %99, %19 {alignment = 1 : i64} : i8, !llvm.ptr
    %100 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %8, %100 {alignment = 1 : i64} : i8, !llvm.ptr
    %101 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %102 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %103 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %104 = llvm.sext %103 : i32 to i64
    %105 = llvm.getelementptr inbounds %102[%104] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %101, %105 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %106 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %107 = llvm.add %106, %0 overflow<nsw> : i32
    llvm.store %107, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    %108 = llvm.load %19 {alignment = 1 : i64} : !llvm.ptr -> i8
    %109 = llvm.sext %108 : i8 to i32
    %110 = llvm.icmp "ne" %109, %2 : i32
    llvm.cond_br %110, ^bb30, ^bb32
  ^bb30:  // pred: ^bb29
    %111 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %112 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %113 = llvm.icmp "eq" %111, %112 : !llvm.ptr
    llvm.cond_br %113, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %114 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %115 = llvm.getelementptr inbounds|nuw %114[%0] : (!llvm.ptr, i32) -> !llvm.ptr, i8
    llvm.store %115, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb32
  ^bb32:  // 3 preds: ^bb29, ^bb30, ^bb31
    %116 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %117 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %118 = llvm.icmp "sge" %116, %117 : i32
    llvm.cond_br %118, ^bb33, ^bb36
  ^bb33:  // pred: ^bb32
    %119 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %120 = llvm.add %119, %1 overflow<nsw> : i32
    llvm.store %120, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    %121 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %121, %20 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %122 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %123 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %124 = llvm.sext %123 : i32 to i64
    %125 = llvm.mul %124, %3 : i64
    %126 = llvm.call @realloc(%122, %125) {allocsize = array<i32: 1>, no_unwind} : (!llvm.ptr {llvm.noundef}, i64 {llvm.noundef}) -> !llvm.ptr
    llvm.store %126, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %127 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %128 = llvm.icmp "eq" %127, %4 : !llvm.ptr
    llvm.cond_br %128, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %129 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%129) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    %130 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %131 = llvm.call @fprintf(%130, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb35:  // pred: ^bb33
    llvm.br ^bb36
  ^bb36:  // 2 preds: ^bb32, ^bb35
    llvm.br ^bb37
  ^bb37:  // 2 preds: ^bb28, ^bb36
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb38:  // 2 preds: ^bb3, ^bb10
    %132 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %133 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %134 = llvm.sext %133 : i32 to i64
    %135 = llvm.getelementptr inbounds %132[%134] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %4, %135 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %136 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %136 : !llvm.ptr
  }
  llvm.func @strcmp(!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", will_return}
  llvm.func internal @sh_parse_pipeline(%arg0: !llvm.ptr {llvm.noundef}) -> !llvm.ptr attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(16 : i64) : i64
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(2 : i32) : i32
    %5 = llvm.mlir.addressof @".str.7" : !llvm.ptr
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(8 : i64) : i64
    %8 = llvm.mlir.addressof @".str.6" : !llvm.ptr
    %9 = llvm.mlir.addressof @stderr : !llvm.ptr
    %10 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %19 = llvm.call @malloc(%1) {allocsize = array<i32: 0>, no_unwind} : (i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    llvm.store %19, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %20 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.icmp "eq" %20, %2 : !llvm.ptr
    llvm.cond_br %21, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %22 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %23 = llvm.call @fprintf(%22, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb2:  // pred: ^bb0
    llvm.store %3, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb7
    %24 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %26 = llvm.sext %25 : i32 to i64
    %27 = llvm.getelementptr inbounds %24[%26] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %28 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %29 = llvm.icmp "ne" %28, %2 : !llvm.ptr
    llvm.cond_br %29, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %30 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.add %30, %0 overflow<nsw> : i32
    llvm.store %31, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    %32 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %33 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.sext %33 : i32 to i64
    %35 = llvm.getelementptr inbounds %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %36 = llvm.load %35 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %37 = llvm.call @strcmp(%36, %8) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %38 = llvm.icmp "eq" %37, %3 : i32
    llvm.cond_br %38, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %39 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %40 = llvm.add %39, %0 overflow<nsw> : i32
    llvm.store %40, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %41 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %42 = llvm.add %41, %0 overflow<nsw> : i32
    llvm.store %42, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb3
    %43 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.getelementptr inbounds|nuw %43[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    llvm.store %3, %44 {alignment = 4 : i64} : i32, !llvm.ptr
    %45 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.icmp "sgt" %45, %3 : i32
    llvm.cond_br %46, ^bb9, ^bb11
  ^bb9:  // pred: ^bb8
    %47 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %48 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.sub %48, %0 overflow<nsw> : i32
    %50 = llvm.sext %49 : i32 to i64
    %51 = llvm.getelementptr inbounds %47[%50] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %52 = llvm.load %51 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %53 = llvm.call @strcmp(%52, %5) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %54 = llvm.icmp "eq" %53, %3 : i32
    llvm.cond_br %54, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %55 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %56 = llvm.getelementptr inbounds|nuw %55[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    llvm.store %0, %56 {alignment = 4 : i64} : i32, !llvm.ptr
    %57 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.sub %58, %0 overflow<nsw> : i32
    %60 = llvm.sext %59 : i32 to i64
    %61 = llvm.getelementptr inbounds %57[%60] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %2, %61 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %62 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %63 = llvm.add %62, %6 overflow<nsw> : i32
    llvm.store %63, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // 3 preds: ^bb8, ^bb9, ^bb10
    %64 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.add %64, %0 overflow<nsw> : i32
    %66 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %67 = llvm.getelementptr inbounds|nuw %66[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    llvm.store %65, %67 {alignment = 8 : i64} : i32, !llvm.ptr
    %68 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %69 = llvm.getelementptr inbounds|nuw %68[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %70 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> i32
    %71 = llvm.sext %70 : i32 to i64
    %72 = llvm.mul %71, %7 : i64
    %73 = llvm.call @malloc(%72) {allocsize = array<i32: 0>, no_unwind} : (i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    %74 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %75 = llvm.getelementptr inbounds|nuw %74[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    llvm.store %73, %75 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %76 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %77 = llvm.getelementptr inbounds|nuw %76[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %78 = llvm.load %77 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %79 = llvm.icmp "eq" %78, %2 : !llvm.ptr
    llvm.cond_br %79, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %80 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %81 = llvm.call @fprintf(%80, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb13:  // pred: ^bb11
    llvm.store %3, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb14
  ^bb14:  // 2 preds: ^bb13, ^bb19
    %82 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %83 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %84 = llvm.icmp "sle" %82, %83 : i32
    llvm.cond_br %84, ^bb15, ^bb20
  ^bb15:  // pred: ^bb14
    %85 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %86 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %87 = llvm.sext %86 : i32 to i64
    %88 = llvm.getelementptr inbounds %85[%87] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %89 = llvm.load %88 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %90 = llvm.icmp "eq" %89, %2 : !llvm.ptr
    llvm.cond_br %90, ^bb17, ^bb16
  ^bb16:  // pred: ^bb15
    %91 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %92 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %93 = llvm.sext %92 : i32 to i64
    %94 = llvm.getelementptr inbounds %91[%93] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %95 = llvm.load %94 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %96 = llvm.call @strcmp(%95, %8) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %97 = llvm.icmp "eq" %96, %3 : i32
    llvm.cond_br %97, ^bb17, ^bb18
  ^bb17:  // 2 preds: ^bb15, ^bb16
    %98 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %99 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %100 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %101 = llvm.call @sh_parse_cmd(%98, %99, %100) : (!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}, i32 {llvm.noundef}) -> !llvm.ptr
    %102 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %103 = llvm.getelementptr inbounds|nuw %102[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %104 = llvm.load %103 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %105 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %106 = llvm.sext %105 : i32 to i64
    %107 = llvm.getelementptr inbounds %104[%106] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %101, %107 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %108 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %109 = llvm.add %108, %0 overflow<nsw> : i32
    llvm.store %109, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    %110 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %111 = llvm.add %110, %0 overflow<nsw> : i32
    llvm.store %111, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb18
  ^bb18:  // 2 preds: ^bb16, ^bb17
    llvm.br ^bb19
  ^bb19:  // pred: ^bb18
    %112 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %113 = llvm.add %112, %0 overflow<nsw> : i32
    llvm.store %113, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb14 {loop_annotation = #loop_annotation}
  ^bb20:  // pred: ^bb14
    %114 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %114 : !llvm.ptr
  }
  llvm.func internal @sh_execute(%arg0: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(-1 : i32) : i32
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(0 : i64) : i64
    %5 = llvm.mlir.addressof @__const.sh_execute.fds : !llvm.ptr
    %6 = llvm.mlir.constant(8 : i64) : i64
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(127 : i32) : i32
    %10 = llvm.mlir.constant(65280 : i32) : i32
    %11 = llvm.mlir.constant(8 : i32) : i32
    %12 = llvm.mlir.addressof @stderr : !llvm.ptr
    %13 = llvm.mlir.addressof @".str.13" : !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.array<2 x i32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %23 = llvm.call @waitpid(%1, %2, %0) : (i32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> i32
    %24 = llvm.icmp "sgt" %23, %3 : i32
    llvm.cond_br %24, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb3:  // pred: ^bb1
    %25 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %26 = llvm.getelementptr inbounds|nuw %25[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %27 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> i32
    %28 = llvm.icmp "eq" %27, %0 : i32
    llvm.cond_br %28, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %29 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %30 = llvm.getelementptr inbounds|nuw %29[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %31 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %32 = llvm.getelementptr inbounds %31[%4] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %33 = llvm.load %32 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %34 = llvm.getelementptr inbounds|nuw %33[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %35 = llvm.load %34 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.getelementptr inbounds %35[%4] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %37 = llvm.load %36 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %38 = llvm.icmp "ne" %37, %2 : !llvm.ptr
    llvm.cond_br %38, ^bb5, ^bb8
  ^bb5:  // pred: ^bb4
    %39 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %40 = llvm.getelementptr inbounds|nuw %39[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %41 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %42 = llvm.getelementptr inbounds %41[%4] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %43 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.call @sh_builtin(%43) : (!llvm.ptr {llvm.noundef}) -> i32
    %45 = llvm.icmp "ne" %44, %3 : i32
    llvm.cond_br %45, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.br ^bb35
  ^bb7:  // pred: ^bb5
    llvm.br ^bb8
  ^bb8:  // 3 preds: ^bb3, ^bb4, ^bb7
    llvm.store %1, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    %46 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.getelementptr inbounds|nuw %46[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %48 = llvm.load %47 {alignment = 8 : i64} : !llvm.ptr -> i32
    %49 = llvm.zext %48 : i32 to i64
    %50 = llvm.intr.stacksave : !llvm.ptr
    llvm.store %50, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %51 = llvm.alloca %49 x i32 {alignment = 16 : i64} : (i64) -> !llvm.ptr
    llvm.store %49, %17 {alignment = 8 : i64} : i64, !llvm.ptr
    llvm.store %3, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb8, ^bb33
    %52 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %54 = llvm.getelementptr inbounds|nuw %53[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %55 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> i32
    %56 = llvm.icmp "slt" %52, %55 : i32
    llvm.cond_br %56, ^bb10, ^bb34
  ^bb10:  // pred: ^bb9
    %57 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.getelementptr inbounds|nuw %57[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %59 = llvm.load %58 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %60 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %61 = llvm.sext %60 : i32 to i64
    %62 = llvm.getelementptr inbounds %59[%61] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %63 = llvm.load %62 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %63, %19 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    "llvm.intr.memcpy"(%20, %5, %6) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %64 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %66 = llvm.getelementptr inbounds|nuw %65[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %67 = llvm.load %66 {alignment = 8 : i64} : !llvm.ptr -> i32
    %68 = llvm.sub %67, %0 overflow<nsw> : i32
    %69 = llvm.icmp "slt" %64, %68 : i32
    llvm.cond_br %69, ^bb11, ^bb14
  ^bb11:  // pred: ^bb10
    %70 = llvm.getelementptr inbounds %20[%4, %4] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %71 = llvm.call @pipe(%70) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> i32
    %72 = llvm.icmp "ne" %71, %3 : i32
    llvm.cond_br %72, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %73 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %74 = llvm.call @fprintf(%73, %13) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb13:  // pred: ^bb11
    llvm.br ^bb14
  ^bb14:  // 2 preds: ^bb10, ^bb13
    %75 = llvm.call @fork() {no_unwind} : () -> i32
    llvm.store %75, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    %76 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %77 = llvm.icmp "slt" %76, %3 : i32
    llvm.cond_br %77, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb16:  // pred: ^bb14
    %78 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %79 = llvm.icmp "eq" %78, %3 : i32
    llvm.cond_br %79, ^bb17, ^bb22
  ^bb17:  // pred: ^bb16
    %80 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %81 = llvm.icmp "ne" %80, %1 : i32
    llvm.cond_br %81, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %82 = llvm.call @close(%3) : (i32 {llvm.noundef}) -> i32
    %83 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %84 = llvm.call @dup(%83) {no_unwind} : (i32 {llvm.noundef}) -> i32
    %85 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %86 = llvm.call @close(%85) : (i32 {llvm.noundef}) -> i32
    llvm.br ^bb19
  ^bb19:  // 2 preds: ^bb17, ^bb18
    %87 = llvm.getelementptr inbounds %20[%4, %7] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr -> i32
    %89 = llvm.icmp "ne" %88, %1 : i32
    llvm.cond_br %89, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %90 = llvm.call @close(%0) : (i32 {llvm.noundef}) -> i32
    %91 = llvm.getelementptr inbounds %20[%4, %7] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %92 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> i32
    %93 = llvm.call @dup(%92) {no_unwind} : (i32 {llvm.noundef}) -> i32
    %94 = llvm.getelementptr inbounds %20[%4, %4] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %95 = llvm.load %94 {alignment = 4 : i64} : !llvm.ptr -> i32
    %96 = llvm.call @close(%95) : (i32 {llvm.noundef}) -> i32
    %97 = llvm.getelementptr inbounds %20[%4, %7] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %98 = llvm.load %97 {alignment = 4 : i64} : !llvm.ptr -> i32
    %99 = llvm.call @close(%98) : (i32 {llvm.noundef}) -> i32
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb19, ^bb20
    %100 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @sh_launch(%100) : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb32
  ^bb22:  // pred: ^bb16
    %101 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %102 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %103 = llvm.sext %102 : i32 to i64
    %104 = llvm.getelementptr inbounds %51[%103] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %101, %104 {alignment = 4 : i64} : i32, !llvm.ptr
    %105 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %106 = llvm.icmp "ne" %105, %1 : i32
    llvm.cond_br %106, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %107 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %108 = llvm.call @close(%107) : (i32 {llvm.noundef}) -> i32
    llvm.br ^bb24
  ^bb24:  // 2 preds: ^bb22, ^bb23
    %109 = llvm.getelementptr inbounds %20[%4, %7] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %110 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> i32
    %111 = llvm.icmp "ne" %110, %1 : i32
    llvm.cond_br %111, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %112 = llvm.getelementptr inbounds %20[%4, %7] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %113 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr -> i32
    %114 = llvm.call @close(%113) : (i32 {llvm.noundef}) -> i32
    llvm.br ^bb26
  ^bb26:  // 2 preds: ^bb24, ^bb25
    %115 = llvm.getelementptr inbounds %20[%4, %4] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %116 = llvm.load %115 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %116, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    %117 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %118 = llvm.getelementptr inbounds|nuw %117[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> i32
    %120 = llvm.icmp "ne" %119, %3 : i32
    llvm.cond_br %120, ^bb31, ^bb27
  ^bb27:  // pred: ^bb26
    %121 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %122 = llvm.call @waitpid(%121, %22, %3) : (i32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> i32
    %123 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %124 = llvm.and %123, %9 : i32
    %125 = llvm.icmp "eq" %124, %3 : i32
    llvm.cond_br %125, ^bb28, ^bb30
  ^bb28:  // pred: ^bb27
    %126 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %127 = llvm.and %126, %10 : i32
    %128 = llvm.ashr %127, %11 : i32
    %129 = llvm.icmp "ne" %128, %3 : i32
    llvm.cond_br %129, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    llvm.br ^bb34
  ^bb30:  // 2 preds: ^bb27, ^bb28
    llvm.br ^bb31
  ^bb31:  // 2 preds: ^bb26, ^bb30
    llvm.br ^bb32
  ^bb32:  // 2 preds: ^bb21, ^bb31
    llvm.br ^bb33
  ^bb33:  // pred: ^bb32
    %130 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %131 = llvm.add %130, %0 overflow<nsw> : i32
    llvm.store %131, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb34:  // 2 preds: ^bb9, ^bb29
    %132 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.intr.stackrestore %132 : !llvm.ptr
    llvm.br ^bb35
  ^bb35:  // 2 preds: ^bb6, ^bb34
    llvm.return
  }
  llvm.func internal @sh_free_pipeline(%arg0: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %5 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %6 = llvm.icmp "ne" %5, %1 : !llvm.ptr
    llvm.cond_br %6, ^bb1, ^bb6
  ^bb1:  // pred: ^bb0
    llvm.store %2, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb1, ^bb4
    %7 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %8 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds|nuw %8[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %10 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> i32
    %11 = llvm.icmp "slt" %7, %10 : i32
    llvm.cond_br %11, ^bb3, ^bb5
  ^bb3:  // pred: ^bb2
    %12 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %13 = llvm.getelementptr inbounds|nuw %12[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %14 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %16 = llvm.sext %15 : i32 to i64
    %17 = llvm.getelementptr inbounds %14[%16] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %18 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @sh_free_cmd(%18) : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %19 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %20 = llvm.add %19, %0 overflow<nsw> : i32
    llvm.store %20, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb2 {loop_annotation = #loop_annotation}
  ^bb5:  // pred: ^bb2
    %21 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.getelementptr inbounds|nuw %21[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.pipeline", (ptr, i32, i32)>
    %23 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%23) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    %24 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%24) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb0, ^bb5
    llvm.return
  }
  llvm.func @free(!llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @getline(!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i64 attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @feof(!llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @exit(i32 {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, noreturn, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @__errno_location() -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", will_return}
  llvm.func @realloc(!llvm.ptr {llvm.noundef}, i64 {llvm.noundef}) -> !llvm.ptr attributes {allocsize = array<i32: 1>, frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @strdup(!llvm.ptr {llvm.noundef}) -> (!llvm.ptr {llvm.noalias}) attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @strlen(!llvm.ptr {llvm.noundef}) -> i64 attributes {frame_pointer = #llvm.framePointerKind<all>, memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", will_return}
  llvm.func @malloc(i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias}) attributes {allocsize = array<i32: 0>, frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @strchr(!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", will_return}
  llvm.func internal @sh_parse_cmd(%arg0: !llvm.ptr {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: i32 {llvm.noundef}) -> !llvm.ptr attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(24 : i64) : i64
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(2 : i32) : i32
    %5 = llvm.mlir.constant(8 : i64) : i64
    %6 = llvm.mlir.addressof @".str.8" : !llvm.ptr
    %7 = llvm.mlir.addressof @".str.10" : !llvm.ptr
    %8 = llvm.mlir.addressof @".str.12" : !llvm.ptr
    %9 = llvm.mlir.constant(4112 : i32) : i32
    %10 = llvm.mlir.constant(3 : i32) : i32
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.addressof @stderr : !llvm.ptr
    %14 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %15 = llvm.mlir.addressof @".str.11" : !llvm.ptr
    %16 = llvm.mlir.addressof @".str.9" : !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x !llvm.struct<"struct.glob_t", (i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    %28 = llvm.call @malloc(%1) {allocsize = array<i32: 0>, no_unwind} : (i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    llvm.store %28, %20 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %29 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %30 = llvm.icmp "eq" %29, %2 : !llvm.ptr
    llvm.cond_br %30, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %31 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %32 = llvm.call @fprintf(%31, %14) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb2:  // pred: ^bb0
    %33 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %34 = llvm.getelementptr inbounds|nuw %33[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    llvm.store %2, %34 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %35 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.getelementptr inbounds|nuw %35[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    llvm.store %2, %36 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %37 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %39 = llvm.sub %37, %38 overflow<nsw> : i32
    %40 = llvm.add %39, %0 overflow<nsw> : i32
    llvm.store %40, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    %41 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %42 = llvm.sext %41 : i32 to i64
    %43 = llvm.mul %42, %5 : i64
    %44 = llvm.call @malloc(%43) {allocsize = array<i32: 0>, no_unwind} : (i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    %45 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %46 = llvm.getelementptr inbounds|nuw %45[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    llvm.store %44, %46 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %47 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %48 = llvm.getelementptr inbounds|nuw %47[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %49 = llvm.load %48 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %50 = llvm.icmp "eq" %49, %2 : !llvm.ptr
    llvm.cond_br %50, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %51 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %52 = llvm.call @fprintf(%51, %14) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb4:  // pred: ^bb2
    llvm.store %3, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    %53 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %53, %23 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb34
    %54 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %55 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.icmp "slt" %54, %55 : i32
    llvm.cond_br %56, ^bb6, ^bb35
  ^bb6:  // pred: ^bb5
    %57 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.sext %58 : i32 to i64
    %60 = llvm.getelementptr inbounds %57[%59] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %61 = llvm.load %60 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %62 = llvm.call @strcmp(%61, %6) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %63 = llvm.icmp "eq" %62, %3 : i32
    llvm.cond_br %63, ^bb7, ^bb11
  ^bb7:  // pred: ^bb6
    %64 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.add %64, %0 overflow<nsw> : i32
    %66 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %67 = llvm.icmp "slt" %65, %66 : i32
    llvm.cond_br %67, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %68 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %69 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %70 = llvm.add %69, %0 overflow<nsw> : i32
    %71 = llvm.sext %70 : i32 to i64
    %72 = llvm.getelementptr inbounds %68[%71] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %73 = llvm.load %72 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %74 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %75 = llvm.getelementptr inbounds|nuw %74[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    llvm.store %73, %75 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %76 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %77 = llvm.add %76, %0 overflow<nsw> : i32
    llvm.store %77, %23 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb10
  ^bb9:  // pred: ^bb7
    %78 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %79 = llvm.call @fprintf(%78, %16) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    llvm.br ^bb33
  ^bb11:  // pred: ^bb6
    %80 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %81 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %82 = llvm.sext %81 : i32 to i64
    %83 = llvm.getelementptr inbounds %80[%82] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %84 = llvm.load %83 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %85 = llvm.call @strcmp(%84, %7) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %86 = llvm.icmp "eq" %85, %3 : i32
    llvm.cond_br %86, ^bb12, ^bb16
  ^bb12:  // pred: ^bb11
    %87 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %88 = llvm.add %87, %0 overflow<nsw> : i32
    %89 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %90 = llvm.icmp "slt" %88, %89 : i32
    llvm.cond_br %90, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %91 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %92 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %93 = llvm.add %92, %0 overflow<nsw> : i32
    %94 = llvm.sext %93 : i32 to i64
    %95 = llvm.getelementptr inbounds %91[%94] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %96 = llvm.load %95 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %97 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %98 = llvm.getelementptr inbounds|nuw %97[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    llvm.store %96, %98 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %99 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %100 = llvm.add %99, %0 overflow<nsw> : i32
    llvm.store %100, %23 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb14:  // pred: ^bb12
    %101 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %102 = llvm.call @fprintf(%101, %15) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb13, ^bb14
    llvm.br ^bb32
  ^bb16:  // pred: ^bb11
    %103 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %104 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %105 = llvm.sext %104 : i32 to i64
    %106 = llvm.getelementptr inbounds %103[%105] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %107 = llvm.load %106 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %108 = llvm.call @strpbrk(%107, %8) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> !llvm.ptr
    %109 = llvm.icmp "ne" %108, %2 : !llvm.ptr
    llvm.cond_br %109, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %110 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %111 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %112 = llvm.sext %111 : i32 to i64
    %113 = llvm.getelementptr inbounds %110[%112] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %114 = llvm.load %113 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %115 = llvm.call @glob(%114, %9, %2, %24) {no_unwind} : (!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.store %115, %25 {alignment = 4 : i64} : i32, !llvm.ptr
    %116 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> i32
    %117 = llvm.icmp "ne" %116, %3 : i32
    llvm.cond_br %117, ^bb18, ^bb20
  ^bb18:  // pred: ^bb17
    %118 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> i32
    %119 = llvm.icmp "ne" %118, %10 : i32
    llvm.cond_br %119, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %120 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %121 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %122 = llvm.sext %121 : i32 to i64
    %123 = llvm.getelementptr inbounds %120[%122] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %124 = llvm.load %123 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %125 = llvm.call @strdup(%124) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    %126 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %127 = llvm.getelementptr inbounds|nuw %126[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %128 = llvm.load %127 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %129 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %130 = llvm.add %129, %0 overflow<nsw> : i32
    llvm.store %130, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    %131 = llvm.sext %129 : i32 to i64
    %132 = llvm.getelementptr inbounds %128[%131] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %125, %132 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb29
  ^bb20:  // 2 preds: ^bb17, ^bb18
    %133 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %134 = llvm.getelementptr inbounds|nuw %24[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.glob_t", (i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr)>
    %135 = llvm.load %134 {alignment = 8 : i64} : !llvm.ptr -> i64
    %136 = llvm.trunc %135 : i64 to i32
    %137 = llvm.add %133, %136 overflow<nsw> : i32
    %138 = llvm.add %137, %0 overflow<nsw> : i32
    llvm.store %138, %26 {alignment = 4 : i64} : i32, !llvm.ptr
    %139 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %140 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %141 = llvm.icmp "sgt" %139, %140 : i32
    llvm.cond_br %141, ^bb21, ^bb24
  ^bb21:  // pred: ^bb20
    %142 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %143 = llvm.mul %142, %4 overflow<nsw> : i32
    llvm.store %143, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    %144 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %145 = llvm.getelementptr inbounds|nuw %144[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %146 = llvm.load %145 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %147 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %148 = llvm.sext %147 : i32 to i64
    %149 = llvm.mul %148, %5 : i64
    %150 = llvm.call @realloc(%146, %149) {allocsize = array<i32: 1>, no_unwind} : (!llvm.ptr {llvm.noundef}, i64 {llvm.noundef}) -> !llvm.ptr
    %151 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %152 = llvm.getelementptr inbounds|nuw %151[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    llvm.store %150, %152 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %153 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %154 = llvm.getelementptr inbounds|nuw %153[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %155 = llvm.load %154 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %156 = llvm.icmp "eq" %155, %2 : !llvm.ptr
    llvm.cond_br %156, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %157 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %158 = llvm.call @fprintf(%157, %14) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb23:  // pred: ^bb21
    llvm.br ^bb24
  ^bb24:  // 2 preds: ^bb20, ^bb23
    llvm.store %11, %27 {alignment = 8 : i64} : i64, !llvm.ptr
    llvm.br ^bb25
  ^bb25:  // 2 preds: ^bb24, ^bb27
    %159 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> i64
    %160 = llvm.getelementptr inbounds|nuw %24[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.glob_t", (i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr)>
    %161 = llvm.load %160 {alignment = 8 : i64} : !llvm.ptr -> i64
    %162 = llvm.icmp "ult" %159, %161 : i64
    llvm.cond_br %162, ^bb26, ^bb28
  ^bb26:  // pred: ^bb25
    %163 = llvm.getelementptr inbounds|nuw %24[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.glob_t", (i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr)>
    %164 = llvm.load %163 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %165 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> i64
    %166 = llvm.getelementptr inbounds|nuw %164[%165] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %167 = llvm.load %166 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %168 = llvm.call @strdup(%167) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    %169 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %170 = llvm.getelementptr inbounds|nuw %169[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %171 = llvm.load %170 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %172 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %173 = llvm.add %172, %0 overflow<nsw> : i32
    llvm.store %173, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    %174 = llvm.sext %172 : i32 to i64
    %175 = llvm.getelementptr inbounds %171[%174] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %168, %175 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb27
  ^bb27:  // pred: ^bb26
    %176 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> i64
    %177 = llvm.add %176, %12 : i64
    llvm.store %177, %27 {alignment = 8 : i64} : i64, !llvm.ptr
    llvm.br ^bb25 {loop_annotation = #loop_annotation}
  ^bb28:  // pred: ^bb25
    llvm.br ^bb29
  ^bb29:  // 2 preds: ^bb19, ^bb28
    llvm.call @globfree(%24) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb31
  ^bb30:  // pred: ^bb16
    %178 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %179 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %180 = llvm.sext %179 : i32 to i64
    %181 = llvm.getelementptr inbounds %178[%180] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %182 = llvm.load %181 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %183 = llvm.call @strdup(%182) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
    %184 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %185 = llvm.getelementptr inbounds|nuw %184[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %186 = llvm.load %185 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %187 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %188 = llvm.add %187, %0 overflow<nsw> : i32
    llvm.store %188, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    %189 = llvm.sext %187 : i32 to i64
    %190 = llvm.getelementptr inbounds %186[%189] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %183, %190 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb31
  ^bb31:  // 2 preds: ^bb29, ^bb30
    llvm.br ^bb32
  ^bb32:  // 2 preds: ^bb15, ^bb31
    llvm.br ^bb33
  ^bb33:  // 2 preds: ^bb10, ^bb32
    llvm.br ^bb34
  ^bb34:  // pred: ^bb33
    %191 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %192 = llvm.add %191, %0 overflow<nsw> : i32
    llvm.store %192, %23 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb35:  // pred: ^bb5
    %193 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %194 = llvm.getelementptr inbounds|nuw %193[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %195 = llvm.load %194 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %196 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %197 = llvm.sext %196 : i32 to i64
    %198 = llvm.getelementptr inbounds %195[%197] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %2, %198 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %199 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %199 : !llvm.ptr
  }
  llvm.func @strpbrk(!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", will_return}
  llvm.func @glob(!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @globfree(!llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @waitpid(i32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func internal @sh_builtin(%arg0: !llvm.ptr {llvm.noundef}) -> i32 attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.addressof @".str.14" : !llvm.ptr
    %4 = llvm.mlir.addressof @".str.18" : !llvm.ptr
    %5 = llvm.mlir.addressof @history_count : !llvm.ptr
    %6 = llvm.mlir.addressof @history_list : !llvm.ptr
    %7 = llvm.mlir.addressof @".str.19" : !llvm.ptr
    %8 = llvm.mlir.constant(1 : i64) : i64
    %9 = llvm.mlir.zero : !llvm.ptr
    %10 = llvm.mlir.addressof @".str.15" : !llvm.ptr
    %11 = llvm.mlir.addressof @stderr : !llvm.ptr
    %12 = llvm.mlir.addressof @".str.17" : !llvm.ptr
    %13 = llvm.mlir.addressof @".str.16" : !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %19 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %20 = llvm.getelementptr inbounds|nuw %19[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %21 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.getelementptr inbounds %21[%2] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %23 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %23, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %24 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.call @strcmp(%24, %3) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %26 = llvm.icmp "eq" %25, %1 : i32
    llvm.cond_br %26, ^bb1, ^bb8
  ^bb1:  // pred: ^bb0
    %27 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %28 = llvm.getelementptr inbounds|nuw %27[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %29 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %30 = llvm.getelementptr inbounds %29[%8] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %31 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %31, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %32 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %33 = llvm.icmp "eq" %32, %9 : !llvm.ptr
    llvm.cond_br %33, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    %34 = llvm.call @getenv(%10) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> !llvm.ptr
    llvm.store %34, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %35 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.icmp "eq" %35, %9 : !llvm.ptr
    llvm.cond_br %36, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %37 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %38 = llvm.call @fprintf(%37, %13) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.store %0, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb4:  // pred: ^bb2
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb1, ^bb4
    %39 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %40 = llvm.call @chdir(%39) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> i32
    %41 = llvm.icmp "ne" %40, %1 : i32
    llvm.cond_br %41, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %42 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %43 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.call @__errno_location() {memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, will_return} : () -> !llvm.ptr
    %45 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.call @strerror(%45) {no_unwind} : (i32 {llvm.noundef}) -> !llvm.ptr
    %47 = llvm.call @fprintf(%42, %12, %43, %46) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    llvm.store %0, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb8:  // pred: ^bb0
    %48 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %49 = llvm.call @strcmp(%48, %4) {memory_effects = #llvm.memory_effects<other = read, argMem = read, inaccessibleMem = read, errnoMem = read, targetMem0 = read, targetMem1 = read>, no_unwind, will_return} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %50 = llvm.icmp "eq" %49, %1 : i32
    llvm.cond_br %50, ^bb9, ^bb14
  ^bb9:  // pred: ^bb8
    llvm.store %1, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb9, ^bb12
    %51 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %52 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.icmp "slt" %51, %52 : i32
    llvm.cond_br %53, ^bb11, ^bb13
  ^bb11:  // pred: ^bb10
    %54 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %55 = llvm.add %54, %0 overflow<nsw> : i32
    %56 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.sext %57 : i32 to i64
    %59 = llvm.getelementptr inbounds %56[%58] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %60 = llvm.load %59 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %61 = llvm.call @printf(%7, %55, %60) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.br ^bb12
  ^bb12:  // pred: ^bb11
    %62 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %63 = llvm.add %62, %0 overflow<nsw> : i32
    llvm.store %63, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb10 {loop_annotation = #loop_annotation}
  ^bb13:  // pred: ^bb10
    llvm.store %0, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb14:  // pred: ^bb8
    llvm.store %1, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:  // 4 preds: ^bb3, ^bb7, ^bb13, ^bb14
    %64 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %64 : i32
  }
  llvm.func @pipe(!llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @fork() -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @close(i32 {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @dup(i32 {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func internal @sh_launch(%arg0: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.constant(577 : i32) : i32
    %5 = llvm.mlir.constant(420 : i32) : i32
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.mlir.addressof @stderr : !llvm.ptr
    %8 = llvm.mlir.addressof @".str.24" : !llvm.ptr
    %9 = llvm.mlir.addressof @".str.23" : !llvm.ptr
    %10 = llvm.mlir.addressof @".str.22" : !llvm.ptr
    %11 = llvm.mlir.addressof @".str.21" : !llvm.ptr
    %12 = llvm.mlir.addressof @".str.20" : !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %14 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.getelementptr inbounds|nuw %14[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %16 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %17 = llvm.icmp "ne" %16, %2 : !llvm.ptr
    llvm.cond_br %17, ^bb1, ^bb6
  ^bb1:  // pred: ^bb0
    %18 = llvm.call @close(%1) : (i32 {llvm.noundef}) -> i32
    %19 = llvm.icmp "slt" %18, %1 : i32
    llvm.cond_br %19, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %20 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.call @fprintf(%20, %12) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb3:  // pred: ^bb1
    %22 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %23 = llvm.getelementptr inbounds|nuw %22[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %24 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.call @open(%24, %1) vararg(!llvm.func<i32 (ptr, i32, ...)>) : (!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}) -> i32
    %26 = llvm.icmp "slt" %25, %1 : i32
    llvm.cond_br %26, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %27 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %28 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %29 = llvm.getelementptr inbounds|nuw %28[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %30 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %31 = llvm.call @fprintf(%27, %11, %30) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb5:  // pred: ^bb3
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb0, ^bb5
    %32 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %33 = llvm.getelementptr inbounds|nuw %32[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %34 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %35 = llvm.icmp "ne" %34, %2 : !llvm.ptr
    llvm.cond_br %35, ^bb7, ^bb12
  ^bb7:  // pred: ^bb6
    %36 = llvm.call @close(%0) : (i32 {llvm.noundef}) -> i32
    %37 = llvm.icmp "slt" %36, %1 : i32
    llvm.cond_br %37, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %38 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %39 = llvm.call @fprintf(%38, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb9:  // pred: ^bb7
    %40 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %41 = llvm.getelementptr inbounds|nuw %40[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %42 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %43 = llvm.call @open(%42, %4, %5) vararg(!llvm.func<i32 (ptr, i32, ...)>) : (!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}, i32 {llvm.noundef}) -> i32
    %44 = llvm.icmp "slt" %43, %1 : i32
    llvm.cond_br %44, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %45 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %46 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.getelementptr inbounds|nuw %46[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %48 = llvm.load %47 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %49 = llvm.call @fprintf(%45, %9, %48) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  ^bb11:  // pred: ^bb9
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb6, ^bb11
    %50 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %51 = llvm.getelementptr inbounds|nuw %50[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %52 = llvm.load %51 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %53 = llvm.getelementptr inbounds %52[%6] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %54 = llvm.load %53 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %55 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %56 = llvm.getelementptr inbounds|nuw %55[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %57 = llvm.load %56 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.call @execvp(%54, %57) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    %59 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %60 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %61 = llvm.getelementptr inbounds|nuw %60[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %62 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %63 = llvm.getelementptr inbounds %62[%6] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %64 = llvm.load %63 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %65 = llvm.call @fprintf(%59, %8, %64) vararg(!llvm.func<i32 (ptr, ptr, ...)>) {no_unwind} : (!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32
    llvm.call @exit(%0) {no_unwind, noreturn} : (i32 {llvm.noundef}) -> ()
    llvm.unreachable
  }
  llvm.func @getenv(!llvm.ptr {llvm.noundef}) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @chdir(!llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @strerror(i32 {llvm.noundef}) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @open(!llvm.ptr {llvm.noundef}, i32 {llvm.noundef}, ...) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func @execvp(!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<all>, no_unwind, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
  llvm.func internal @sh_free_cmd(%arg0: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %5 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %6 = llvm.icmp "ne" %5, %1 : !llvm.ptr
    llvm.cond_br %6, ^bb1, ^bb8
  ^bb1:  // pred: ^bb0
    %7 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %8 = llvm.getelementptr inbounds|nuw %7[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %9 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %10 = llvm.icmp "ne" %9, %1 : !llvm.ptr
    llvm.cond_br %10, ^bb2, ^bb7
  ^bb2:  // pred: ^bb1
    llvm.store %2, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %11 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %12 = llvm.getelementptr inbounds|nuw %11[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %13 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %14 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %15 = llvm.sext %14 : i32 to i64
    %16 = llvm.getelementptr inbounds %13[%15] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %17 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %18 = llvm.icmp "ne" %17, %1 : !llvm.ptr
    llvm.cond_br %18, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %19 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %20 = llvm.getelementptr inbounds|nuw %19[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %21 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.sext %22 : i32 to i64
    %24 = llvm.getelementptr inbounds %21[%23] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %25 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%25) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %26 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %27 = llvm.add %26, %0 overflow<nsw> : i32
    llvm.store %27, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    %28 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %29 = llvm.getelementptr inbounds|nuw %28[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.command", (ptr, ptr, ptr)>
    %30 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%30) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb1, ^bb6
    %31 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%31) {no_unwind} : (!llvm.ptr {llvm.noundef}) -> ()
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb0, ^bb7
    llvm.return
  }
}
