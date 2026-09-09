/-
Copyright (c) 2026 Joris Roos. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joris Roos
-/

import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.EReal.Basic
import Mathlib.Order.LiminfLimsup

namespace WeakHellinger

noncomputable section

/-- For a real number `r`, its complement is `1 - r`. -/
def bar (r : ℝ) : ℝ := 1 - r

/-- Binary Kullback–Leibler divergence, with values in the extended reals. -/
def D (p q : ℝ) : EReal :=
  if p ∈ Set.Icc (0 : ℝ) 1 ∧ q ∈ Set.Icc (0 : ℝ) 1 then
    if p = q then 0
    else if q = 0 ∨ q = 1 then ⊤
    else if p = 0 then (Real.log (1 / bar q) : EReal)
    else if p = 1 then (Real.log (1 / q) : EReal)
    else ((p * Real.log (p / q) + bar p * Real.log (bar p / bar q) : ℝ) : EReal)
  else 0

/-- The semicircle function `h(x) = sqrt (1 - x²)`. -/
def h (x : ℝ) : ℝ := Real.sqrt (1 - x ^ 2)

/-- "Interior" domain `U` -/
def U : Set (ℝ × ℝ × ℝ) :=
  {x | x.1 ∈ Set.Ioo (0 : ℝ) 1 ∧
    x.2.1 ∈ Set.Ioo (0 : ℝ) 1 ∧ x.2.2 ∈ Set.Ioo (0 : ℝ) 1 ∧ x.2.1 ≠ x.2.2}

/-- Interior definition of `R` . -/
def RInterior (s c d : ℝ) : ℝ :=
  Real.sqrt ((D (s * bar c + bar s * d) (s * bar d + bar s * c)).toReal /
    (s * (D c d).toReal + bar s * (D d c).toReal))

/-- The divergence quotient `R` -/
def R (s c d : ℝ) : ℝ := by
  classical
  exact if (s, c, d) ∈ U then RInterior s c d
  else if s ∈ Set.Icc (0 : ℝ) 1 ∧ c ∈ Set.Icc (0 : ℝ) 1 ∧ d ∈ Set.Icc (0 : ℝ) 1 then
    Filter.limsup (fun x : ℝ × ℝ × ℝ => RInterior x.1 x.2.1 x.2.2)
      (nhdsWithin (s, c, d) U)
  else 0

/-- The three-point inequality's left-hand side on the closed cube. -/
def F (s c d : ℝ) : ℝ :=
  1 - h (s * (bar d - d) + bar s * (c - bar c)) +
    s * h (bar d - d) + bar s * h (c - bar c) - R s c d

end

end WeakHellinger
