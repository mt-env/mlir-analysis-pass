//===- ZeroAnalysis.cpp - Transfer functions ------------------------------===//
//
// The transfer function: given what is known about an operation's operands,
// state what is known about its results.  This file and ZeroDomain.h are the
// two to replace when building a different analysis; the rest of the project
// is scaffolding.
//
// There are deliberately only two rules here, one of each kind an analysis
// needs: one that introduces facts out of nothing (constants), and one that
// propagates facts it was given (`and`).  Everything else is unknown.  Adding
// a third rule should be a matter of adding a third `if`.
//
//===----------------------------------------------------------------------===//

#include "ZeroAnalysis.h"

#include "ZeroDomain.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/IR/Matchers.h"

using namespace mlir;

namespace zero {

void SignedAnalysis::setToEntryState(SignedLattice *lattice) {
  propagateIfChanged(lattice, lattice->join(SignedState::top()));
}

LogicalResult
SignedAnalysis::visitOperation(Operation *op,
                               ArrayRef<const SignedLattice *> operands,
                               ArrayRef<SignedLattice *> results) {
  // Raising a result to top says "this operation could produce anything",
  // which is always a sound answer and is what every unhandled case does.
  auto unknown = [&] {
    setAllToEntryStates(results);
    return success();
  };

  // Only single-result integer operations are interesting here.  Calls, loads,
  // floats, and vectors all land in `unknown`.
  if (op->getNumResults() != 1 || !op->getResult(0).getType().isIntOrIndex())
    return unknown();
  SignedLattice *result = results[0];

  // assign signed lattice abstract values to constants
  IntegerAttr value;
  if (matchPattern(op, m_Constant(&value))) {
    // SignedState state = value.getValue().isZero() ? Kind::Zero :
    // Kind::ZeroNeg;
    SignedState state;
    if (value.getValue().isZero()) {
      state = SignedState(Kind::Zero);
    } else if (value.getValue().isOne()) {
      state = SignedState(Kind::One);
    } else if (value.getValue().isNegative()) {
      state = SignedState(Kind::Neg);
    } else {
      state = SignedState(Kind::Pos);
    }
    propagateIfChanged(result, result->join(state));
    return success();
  }

  // assign signed lattice abstract values to binary operators
  SignedState lhs = operands[0]->getValue();
  SignedState rhs = operands[1]->getValue();
  int lhs_index = static_cast<int>(lhs.kind);
  int rhs_index = static_cast<int>(rhs.kind);

  // assign values to `x + y`
  if (isa<LLVM::AddOp>(op)) {
    constexpr Kind addition_table[8][8] = {
        {Kind::Bot, Kind::Bot, Kind::Bot, Kind::Bot, Kind::Bot, Kind::Bot,
         Kind::Bot, Kind::Bot},
        {Kind::Bot, Kind::Neg, Kind::Neg, Kind::Top, Kind::Top, Kind::Neg,
         Kind::Top, Kind::Top},
        {Kind::Bot, Kind::Neg, Kind::Zero, Kind::One, Kind::Pos, Kind::ZeroNeg,
         Kind::ZeroPos, Kind::Top},
        {Kind::Bot, Kind::Top, Kind::One, Kind::Pos, Kind::Pos, Kind::Top,
         Kind::Pos, Kind::Top},
        {Kind::Bot, Kind::Top, Kind::Pos, Kind::Pos, Kind::Pos, Kind::Top,
         Kind::Pos, Kind::Top},
        {Kind::Bot, Kind::Neg, Kind::ZeroNeg, Kind::Top, Kind::Top,
         Kind::ZeroNeg, Kind::Top, Kind::Top},
        {Kind::Bot, Kind::Top, Kind::ZeroPos, Kind::Pos, Kind::Pos, Kind::Top,
         Kind::ZeroPos, Kind::Top},
        {Kind::Bot, Kind::Top, Kind::Top, Kind::Top, Kind::Top, Kind::Top,
         Kind::Top, Kind::Top}};
    SignedState result_state = addition_table[lhs_index][rhs_index];
    propagateIfChanged(result, result->join(SignedState(Kind::Zero)));
    return success();
  }

  // assign values to `x - y`
  if (isa<LLVM::SubOp>(op)) {
    constexpr Kind subtraction_table[8][8] = {}; // TODO
    SignedState result_state = subtraction_table[lhs_index][rhs_index];
    propagateIfChanged(result, result->join(SignedState(Kind::Zero)));
    return success();
  }

  // assign values to `x * y`
  if (isa<LLVM::MulOp>(op)) {
    constexpr Kind multiplication_table[8][8] = {
        {Kind::Bot, Kind::Bot, Kind::Bot, Kind::Bot, Kind::Bot, Kind::Bot,
         Kind::Bot, Kind::Bot},
        {Kind::Bot, Kind::Pos, Kind::Zero, Kind::Neg, Kind::Neg, Kind::ZeroPos,
         Kind::ZeroNeg, Kind::Top},
        {Kind::Bot, Kind::Zero, Kind::Zero, Kind::Zero, Kind::Zero, Kind::Zero,
         Kind::Zero, Kind::Top},
        {Kind::Bot, Kind::Neg, Kind::Zero, Kind::One, Kind::Pos, Kind::ZeroNeg,
         Kind::ZeroPos, Kind::Top},
        {Kind::Bot, Kind::Neg, Kind::Zero, Kind::Pos, Kind::Pos, Kind::ZeroNeg,
         Kind::ZeroPos, Kind::Top},
        {Kind::Bot, Kind::ZeroPos, Kind::Zero, Kind::ZeroNeg, Kind::ZeroNeg,
         Kind::ZeroPos, Kind::ZeroNeg, Kind::Top},
        {Kind::Bot, Kind::ZeroNeg, Kind::Zero, Kind::ZeroPos, Kind::ZeroPos,
         Kind::ZeroNeg, Kind::ZeroPos, Kind::Top},
        {Kind::Bot, Kind::Top, Kind::Top, Kind::Top, Kind::Top, Kind::Top,
         Kind::Top, Kind::Top}};
    SignedState result_state = multiplication_table[lhs_index][rhs_index];
    propagateIfChanged(result, result->join(SignedState(Kind::Zero)));
    return success();
  }

  // assign values to `x / y`
  if (isa<LLVM::SDivOp>(op)) {
    constexpr Kind division_table[8][8] = {}; // TODO
    SignedState result_state = division_table[lhs_index][rhs_index];
    propagateIfChanged(result, result->join(SignedState(Kind::Zero)));
    return success();
  }

  // assign values to `x & y`
  if (isa<LLVM::AndOp>(op)) {
    constexpr Kind and_table[8][8] = {}; // TODO
    SignedState result_state = and_table[lhs_index][rhs_index];
    propagateIfChanged(result, result->join(SignedState(Kind::Zero)));
    return success();
  }

  return unknown();
}

} // namespace zero
