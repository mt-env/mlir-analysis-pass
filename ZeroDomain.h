//===- ZeroDomain.h - The abstract domain ---------------------------------===//
//
// A four-point lattice recording whether an integer value is known to be zero.
//
//        Top          nothing is known
//       /   \
//    Zero  NonZero
//       \   /
//       Bottom       unreachable, or not yet analyzed
//
// This is the file to replace first when building a different analysis.  MLIR's
// dataflow framework asks only three things of a lattice value:
//
//   * a default constructor, which must produce the bottom element, because the
//     solver starts every value optimistically and lowers it as facts arrive;
//   * a static join(), which must be commutative, associative, idempotent, and
//     monotone -- assertions in Lattice<> check monotonicity in debug builds;
//   * operator== and print().
//
//===----------------------------------------------------------------------===//

#ifndef ZERO_DOMAIN_H
#define ZERO_DOMAIN_H

#include "llvm/Support/raw_ostream.h"

namespace zero {

enum class Kind { Bottom = 0, Neg = 1, Zero = 2, One = 3, Pos = 4, ZeroNeg = 5, ZeroPos = 6, Top = 7 };

inline const char* name(Kind kind) {
  switch (kind) {
  case Kind::Bottom:
    return "bottom";
  case Kind::Neg:
    return "minus";
  case Kind::Zero:
    return "zero";
  case Kind::One:
    return "one";
  case Kind::Pos:
    return "plus";
  case Kind::ZeroNeg:
    return "non-positive";
  case Kind::ZeroPos:
    return "non-negative";
  case Kind::Top:
    return "top";
  }
  return "top";
}

struct SignedState {
  Kind kind = Kind::Bottom;

  SignedState() = default;
  /* implicit */ SignedState(Kind kind) : kind(kind) {}

  static SignedState bottom() { return Kind::Bottom; }
  static SignedState top() { return Kind::Top; }

  bool isBottom() const { return kind == Kind::Bottom; }

  /// Least upper bound.  Two disagreeing facts lose all information.
  static SignedState join(const SignedState& lhs, const SignedState& rhs) {
    // who up magicking they numbers
    constexpr Kind join_table[8][8] = {
      { Kind::Bottom, Kind::Neg, Kind::Zero, Kind::One, Kind::Pos, Kind::ZeroNeg, Kind::ZeroPos, Kind::Top },
      { Kind::Neg, Kind::Neg, Kind::ZeroNeg, Kind::Top, Kind::Top, Kind::ZeroNeg, Kind::Top, Kind::Top },
      { Kind::Zero, Kind::ZeroNeg, Kind::Zero, Kind::ZeroPos, Kind::ZeroPos, Kind::ZeroNeg, Kind::ZeroPos, Kind::Top },
      { Kind::One, Kind::Top, Kind::ZeroPos, Kind::One, Kind::Pos, Kind::Top, Kind::ZeroPos, Kind::Top },
      { Kind::Pos, Kind::Top, Kind::ZeroPos, Kind::Pos, Kind::Pos, Kind::Top, Kind::ZeroPos, Kind::Top },
      { Kind::ZeroNeg, Kind::ZeroNeg, Kind::ZeroNeg, Kind::Top, Kind::Top, Kind::ZeroNeg, Kind::Top, Kind::Top },
      { Kind::ZeroPos, Kind::Top, Kind::ZeroPos, Kind::ZeroPos, Kind::ZeroPos, Kind::Top, Kind::ZeroPos, Kind::Top },
      { Kind::Top, Kind::Top, Kind::Top, Kind::Top, Kind::Top, Kind::Top, Kind::Top, Kind::Top }
    };
    int lhs_index = static_cast<int>(lhs.kind);
    int rhs_index = static_cast<int>(rhs.kind);
    return join_table[lhs_index][rhs_index];
  }

  bool operator==(const SignedState& other) const { return kind == other.kind; }
  bool operator!=(const SignedState& other) const { return kind != other.kind; }

  void print(llvm::raw_ostream& os) const { os << name(kind); }
};

inline llvm::raw_ostream& operator<<(llvm::raw_ostream& os,
                                     const SignedState& state) {
  state.print(os);
  return os;
}

} // namespace zero

#endif
