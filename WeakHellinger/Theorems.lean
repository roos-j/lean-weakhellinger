/-
Copyright (c) 2026 Joris Roos. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joris Roos
-/

import WeakHellinger.Defs
import WeakHellinger.Auto.Reduction

namespace WeakHellinger

open Set
open scoped WeakHellinger

/-- The three-point inequality -/
theorem three_point_inequality {s c d : ℝ}
    (hs : s ∈ Icc 0 1) (hc : c ∈ Icc 0 1) (hd : d ∈ Icc 0 1) : 0 ≤ F s c d :=
  Auto.three_point_inequality_manual hs hc hd

/-- Equality cases of the three-point inequality -/
theorem three_point_inequality_equality {s c d : ℝ}
    (hs : s ∈ Icc 0 1) (hc : c ∈ Icc 0 1) (hd : d ∈ Icc 0 1) :
    F s c d = 0 ↔ s = 0 ∨ s = 1 ∨ c + d = 1 ∨ (s = 2⁻¹ ∧ c = d) :=
  Auto.three_point_inequality_equality_manual hs hc hd

/-- **Weak Hellinger theorem.**

For every `n`, `ρ ∈ [-1,1]`, uniform `X` on `{±1}ⁿ` and `ρ`-correlated `Y`:
`√(1 - (E f(X))²) - E √(1 - (E[f(X) | g(Y)])²) ≤ 1 - √(1 - ρ²)`. -/
theorem weak_hellinger {n : ℕ} {ρ : ℝ} (hρ : ρ ∈ Icc (-1) 1) {f g : BooleanFunc n}
    (hf : BooleanValued f) (hg : BooleanValued g) :
    √(1 - (𝐄 f) ^ 2) - 𝐄 (fun y ↦ √(1 - (𝐄_ ρ [f ∣ g] y) ^ 2)) ≤
      1 - √(1 - ρ ^ 2) :=
  Auto.weak_hellinger_manual hρ hf hg

end WeakHellinger
