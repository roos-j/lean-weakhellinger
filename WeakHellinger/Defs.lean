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


end

end WeakHellinger
