/-
Copyright (c) 2026 Joris Roos. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joris Roos
-/

import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.EReal.Basic
import Mathlib.Order.LiminfLimsup
import Mathlib.Data.Fintype.Pi

namespace WeakHellinger

noncomputable section

open Real Set Filter
open scoped Classical



/-- `n` dimensional Hamming cube -/
abbrev HammingCube (n : ℕ) := Fin n → Fin 2

/-- A Boolean function is a real valued function on a Hamming cube. -/
abbrev BooleanFunc (n : ℕ) : Type := HammingCube n → ℝ

/-- `BooleanValued f` means that `f` takes values `±1`. -/
def BooleanValued {n : ℕ} (f : BooleanFunc n) : Prop :=
  ∀ x, f x = 1 ∨ f x = -1

/-- Expectation with respect to uniform distribution. -/
def expectation {n : ℕ} (f : BooleanFunc n) := (∑ x, f x) / (2 : ℝ) ^ n

@[inherit_doc]
scoped notation "𝐄" => expectation

/--
Noise kernel for correlation parameter `ρ ∈ [-1,1]`, i.e.
the conditional probability `P(Y = y | X = x)`. -/
def noiseKernel {n : ℕ} (ρ : ℝ) (x y : HammingCube n) : ℝ :=
  ∏ i, if x i = y i then (1 + ρ) / 2 else (1 - ρ) / 2

/--
Ad-hoc definition of the conditional expectation occuring in this project, i.e.
`E[f(X) | g(Y) = b]` for uniform `X` and `ρ`-correlated `Y` at `b`.

**Implementation note:** If the event in the denominator has zero probability,
the Lean junk value for zero division will be reached, but it provides the
correct intended value of zero here. -/
def conditionalExpectation {n : ℕ} (ρ : ℝ) (f : BooleanFunc n)
    (g : BooleanFunc n) (b : ℝ) : ℝ :=
  𝐄 (fun x ↦ ∑ y, if g y = b then noiseKernel ρ x y * f x else 0) /
    𝐄 (if g · = b then 1 else 0)

@[inherit_doc]
scoped notation "𝐄_" ρ:max "[" f:51 " ∣ " g "]" y =>
  conditionalExpectation ρ f g (g y)

/-- For a real number `r`, its "complement" is `1 - r`. -/
def bar (r : ℝ) : ℝ := 1 - r

/-- Binary Kullback–Leibler divergence as extended real.
Note it is actually nonnegative. -/
def D (p q : ℝ) : EReal :=
  if p ∈ Icc 0 1 ∧ q ∈ Icc 0 1 then
    if p = q then 0
    else if q = 0 ∨ q = 1 then ⊤
    else if p = 0 then -log (bar q)
    else if p = 1 then -log q
    else p * log (p / q) + bar p * log (bar p / bar q)
  else 0

/-- The semicircle function `h(x) = √(1 - x²)`. -/
def h (x : ℝ) : ℝ := √(1 - x ^ 2)

/-- "Interior" domain `U` -/
def U := {(s, c, d) : ℝ × ℝ × ℝ | s ∈ Ioo 0 1 ∧ c ∈ Ioo 0 1 ∧ d ∈ Ioo 0 1 ∧ c ≠ d}

/-- Interior definition of the divergence quotient `R` . -/
def R_interior (s c d : ℝ) : ℝ :=
  √((D (s * bar c + bar s * d) (s * bar d + bar s * c)).toReal /
    (s * (D c d).toReal + bar s * (D d c).toReal))

/-- The divergence quotient `R` -/
def R (s c d : ℝ) : ℝ :=
  if (s, c, d) ∈ U then R_interior s c d
  else if s ∈ Icc 0 1 ∧ c ∈ Icc 0 1 ∧ d ∈ Icc 0 1 then
    limsup (fun (s, c, d) ↦ R_interior s c d) (nhdsWithin (s, c, d) U)
  else 0

/-- The three-point inequality's left-hand side on the closed cube. -/
def F (s c d : ℝ) : ℝ :=
  1 - h (s * (bar d - d) + bar s * (c - bar c)) +
    s * h (bar d - d) + bar s * h (c - bar c) - R s c d


end

end WeakHellinger
