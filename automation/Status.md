# Active target: weak Hellinger reduction

Complete: the reduction imports the actual three-point theorem and its final audit uses standard axioms only. The previous three-point formalization is recorded below.

status | exact source location | brief mathematical step | ISO 8601 timestamp with offset
--- | --- | --- | ---
complete | User prop:three-point-implies-main and weak-Hellinger thm:main | Derive the noisy-cube weak Hellinger inequality from the exact three-point theorem | 2026-09-08T22:54:20.866938-04:00

## Reverse-hypercontractivity prerequisite

User-authorized file: WeakHellinger/Auto/ReverseHypercontractivity.lean, importing Mathlib only. The reduction needs the entropy-lifting coefficient, data processing, and its binary-symmetric product value. These substantial information-theoretic facts are absent from the searched Mathlib sources; ordinary KL data processing alone does not establish them. Prove them for finite laws/channels so they apply to arbitrary Boolean output functions and the stochastic perturbation needed at c=d. They may not be introduced as axioms.

## Forward proof order

Each row depends only on earlier rows (the main-target row is an overview). Only the first unfinished item is active. Rows for previously checked isolated Reduction lemmas remain pending until their incoming prerequisites and source interfaces have been verified.

status | exact source location | brief mathematical step | ISO 8601 timestamp with offset
--- | --- | --- | ---
complete | Reduction setup | Finite probability laws, KL, noisy-cube law, expectations and conditional expectations | 2026-09-08T21:27:31.246848-04:00
complete | Reverse coefficient definition | Entropy transportation cost and exact infimum formula for s-dagger | 2026-09-08T21:29:35.420375-04:00
complete | Finite KL prerequisites | Continuity, positivity, KL contraction and chain rule with support conditions | 2026-09-08T21:36:23.545284-04:00
complete | Entropy transport attainment | Feasible coupling polytope, minimum and marginal KL lower bound | 2026-09-08T21:41:09.540393-04:00
complete | Reverse coefficient characterization | Equivalence with entropy lifting; range and degenerate conventions | 2026-09-08T21:46:48.405784-04:00
complete | Data processing | Deterministic and stochastic output maps via lifted target laws and KL contraction | 2026-09-08T21:53:33.806318-04:00
complete | Binary symmetric optimizer | Interior coupling optimizer and exact log-odds stationarity | 2026-09-08T22:00:38.510479-04:00
complete | Binary symmetric curvature | Optimizer variance bound and entropy cost <= D/(1-rho^2) | 2026-09-08T22:11:45.385580-04:00
complete | Tensorization | Sequential product coupling and entropy-chain-rule bound | 2026-09-08T22:17:40.581508-04:00
complete | Sharp coefficient | Small-perturbation lower bound and exact binary-symmetric/noisy-cube s-dagger=rho^2 for -1<rho<1 | 2026-09-08T22:27:35.773831-04:00
complete | Boolean law reduction | s,c,d probabilities, domains, and the two expectation identities | 2026-09-08T22:32:59.683883-04:00
complete | Swap minimizer | Global constrained minimizer, including boundary competitors | 2026-09-08T22:36:14.591667-04:00
complete | Quotient comparison | Admissible changed marginal for c!=d and 1-s-dagger <= divergence ratio | 2026-09-08T22:39:03.654132-04:00
complete | Diagonal extension | Stochastic perturbation and continuity of the Hellinger expression at c=d | 2026-09-08T22:41:35.810609-04:00
complete | Degenerate cases | Constant f/g, null events, and rho=+-1 | 2026-09-08T22:43:43.111239-04:00
complete | Weak Hellinger assembly | Full theorem using only the exact temporary three-point axiom | 2026-09-08T22:50:05.109716-04:00
complete | Final integration ONLY LAST | Remove axiom/copied definitions, import actual theorem, final build and standard-axiom audit | 2026-09-08T22:54:20.866938-04:00

## Current verification

2026-09-08T22:54:20.866938-04:00 — FINAL COMPLETE. Reduction imports the actual ThreePointInequality and the Mathlib-only ReverseHypercontractivity module. The temporary axiom and copied definition closure are removed. Targeted olean compilation passed for ReverseHypercontractivity, the existing renamed ThreePointInequality, and Reduction; an independent import audit of weak_hellinger, both closed-interval coefficient formulas, and deterministic/stochastic data processing reports only propext, Classical.choice, Quot.sound. No whole-project build or certificate compilation was run. FiniteCertificate source retains frozen SHA256 0c99273c54cbe0affb6b4f6a09c474026b8bae73da98265a079c12b4281dd13e; its existing olean remains 835804024 bytes with unchanged modification time. Reduction is added to the Lake library roots. The final commit also records the previously authorized ThreePointInequality rename and diagnostic cleanup; comparison confirms no mathematical source changes in that rename. Defs.lean, Theorems.lean, and WeakHellinger.lean remain untouched.

2026-09-08T22:50:05.109716-04:00 — Full weak_hellinger theorem passes targeted compilation for all n (including n=0), rho in [-1,1], and Boolean f,g. Audit has only standard axioms plus the EXACT temporary three-point axiom; statement comparison with the real theorem passes. sDagger_cubeNoise_closed and sDagger_binarySymmetric_closed now include deterministic endpoints and audit to standard axioms only. All proof-development rows are complete. Final integration starts now: remove the sole axiom and copied definitions, import the actual theorem, compile targeted modules using the existing frozen certificate artifact.

2026-09-08T22:43:43.111239-04:00 — Degenerate cases complete: constant f has a nonpositive gap; constant g gives exact equality of conditional and unconditional semicircle values, with null fibers contributing zero; rho endpoints follow from the universal gap<=1 bound. Targeted compilation and all three audits pass with standard axioms only. Next: assemble the full noisy-cube theorem.

2026-09-08T22:41:35.810609-04:00 — Diagonal extension complete: the positive biased channel perturbs c and d by distinct amounts, stochastic processing preserves the coefficient bound, and continuity of the final Hellinger expression gives the limit. reduction_diagonal and reduction_positive_law pass targeted checks with only the authorized three-point axiom beyond standard axioms. Next: constants, null fibers and correlation endpoints.

2026-09-08T22:39:03.654132-04:00 — Off-diagonal reduction complete: reduction_complement_quotient has standard axioms only; reduction_R_quotient preserves the exact original definition; reduction_off_diagonal uses only standard axioms plus the single authorized three-point axiom. Targeted compilation and audits pass. Next: stochastic perturbation and the diagonal limit.

2026-09-08T22:36:14.591667-04:00 — Swap minimizer complete: reduction_swap_transport identifies the extended entropy-transport minimum exactly with s D(c|d)+(1-s) D(d|c). The proof covers every feasible competitor, including zero conditional probabilities. Targeted compilation and standard-axiom audit pass. Next: the admissible ratio bound and its exact connection to the original R definition.

2026-09-08T22:32:59.683883-04:00 — Boolean-law reduction complete: every positive binary law has the specified s,c,d table, both expectation identities and passage to the output joint law are checked, and nonconstant Boolean outputs satisfy sDagger<=rho^2. All five target audits use standard axioms only. For the diagonal, pass to the limit in the final Hellinger expression after proving the off-diagonal inequality; this avoids any need to prove continuity of normalized R. Next: identify the swapped table with the attained entropy minimum.

2026-09-08T22:27:35.773831-04:00 — Sharpness complete for -1<rho<1: the entropy ratio along nonzero sigmoid tilts converges to 1-rho^2 by derivative comparison and l’Hôpital; coordinate projection transfers the lower bound to every n>=1. sDagger_binarySymmetric and sDagger_cubeNoise pass targeted compilation and standard-axiom audits. Endpoint weak Hellinger cases remain in the degenerate-case row. Next: Boolean probability and expectation identities.

2026-09-08T22:17:40.581508-04:00 — Tensorization complete: a sequential coupling handles arbitrary correlated target marginals, and its KL chain rule preserves the lifting coefficient under independent products. Reindexing and the exact noisy-cube successor identity establish entropyLifting_cubeNoise for every dimension and -1<rho<1. Consequently sDagger_cubeNoise_le proves the needed upper bound rho^2. Targeted compilation and audits pass with standard axioms. Next: small-perturbation sharpness and the exact coefficient formula requested by the user.

2026-09-08T22:11:45.385580-04:00 — Binary-channel entropy lifting complete: an exact nonnegative rational factorization proves the conditional-variance curvature bound; derivative comparison proves the entropy bound for all finite tilts, and limits cover both endpoint target laws. The logistic reference is proved equal to the binary symmetric probability table with the specified rho. entropyLifting_binarySymmetric proves factor 1-rho^2 for every -1<rho<1 using only standard axioms. Targeted compilation/audits passed. Next: product tensorization and the noisy-cube lifting bound.

2026-09-08T22:00:38.510479-04:00 — Binary-symmetric optimizer complete: common sigmoid/log-odds tilts realize every interior target marginal; the log-density ratio separates into the two constrained marginal potentials. A proved finite KL Pythagorean identity establishes global optimality against all feasible competitors, including boundary competitors. Targeted compilation and audits pass with standard axioms. Next: the curvature/entropy bound and its endpoint extension.

2026-09-08T21:53:33.806318-04:00 — Data processing complete on the positive effective-support domains needed by the reduction: reference-conditional target lifts preserve output marginals and exact KL cost; deterministic sDagger_map_le and positive stochastic right-channel sDagger_rightChannel_le pass targeted compilation and standard-axiom audits. The stochastic theorem covers the biased output perturbation for c=d. Next: construct the binary-symmetric entropy optimizer.

2026-09-08T21:46:48.405784-04:00 — Reverse coefficient characterization complete: complement <=1, sDagger in [0,1], positive costs for nontrivial supported marginals, and entropyLifting_iff for positive reference tables pass targeted compilation and standard-axiom audits. The no-admissible-marginal convention gives sDagger=0. Next: deterministic and stochastic data processing of the reverse coefficient.

2026-09-08T21:41:09.540393-04:00 — Entropy transport attainment complete for positive reference tables: compact feasible probability polytope, continuous KL minimum, attained extended cost, finite cost, marginal KL lower bound, and exact equality with the conditional-law infimum all pass targeted checks with only standard axioms. This includes boundary competitors and null rows of the changed law. Next: coefficient range and entropy-lifting characterization.

2026-09-08T21:36:23.545284-04:00 — Finite KL prerequisites complete: Gibbs nonnegativity and strict positivity, log-sum inequality, extended-valued deterministic KL data processing, continuity for positive reference vectors, finite conditional disintegration, and the KL chain rule all passed targeted compilation and standard-axiom audits. With fixed first marginal, joint KL equals the expected conditional KL cost exactly. Next: compactness and attainment of the entropy transportation minimum.

2026-09-08T21:29:35.420375-04:00 — Reverse coefficient definitions passed targeted compilation and standard-axiom audits. The transport cost fixes the first marginal and prescribes the second; sDagger is defined by the entropy ratio infimum on the effective support, with value zero when no nontrivial changed marginal exists. Its range, data processing, equality with the conditional-law formulation, and cube formula remain separate unproved obligations in subsequent rows. Next: finite KL prerequisites.

2026-09-08T21:27:31.246848-04:00 — Reduction setup complete: targeted ReverseHypercontractivity.lean compilation and audits passed. Finite laws and pushforward expectations are normalized; the noisy-cube kernel is symmetric/stochastic, both marginals are uniform, and extended KL and finite conditional semicircle expectations are defined with explicit zero-mass conventions. Audits use only propext, Classical.choice, Quot.sound. Next: the entropy transport and reverse coefficient definitions.

2026-09-08T21:21:03.480067-04:00 — Mathematical dependency plan recorded. Reduction.lean has a targeted successful Lean check of the copied definition closure, the EXACT single authorized three-point axiom, the final algebraic implication conditional on a channel bound, KL nonnegativity, and the exact swap-minimizer proof. These isolated results do not supply the reverse-hypercontractivity prerequisite or the full theorem. No certificate import, certificate edit, or whole-project build was performed. Final axiom removal and actual-theorem integration are explicitly deferred to the last row.

# Completed earlier effort: three-point inequality

# Main target

Complete: the existing full real-certificate build passed, including the closed-cube inequality and every equality case. Final audits use only propext, Classical.choice, and Quot.sound; no temporary axiom remains.

status | exact source location | brief mathematical step | ISO 8601 timestamp with offset
--- | --- | --- | ---
complete | thm:main | Closed-cube inequality and exact equality characterization | 2026-09-08T14:05:25.442391-04:00

# Proof order

The blueprint's order through lem:boundary is a forward dependency order. The main proof stays in the existing Lean file; the user has authorized extracting certificate computation into FiniteCertificate.lean after verification. A source lemma is complete only after its proof and axiom audit pass.

status | exact source location | brief mathematical step | ISO 8601 timestamp with offset
--- | --- | --- | ---
complete | lem:r | Square-root identities, bounds, continuity, and derivative | 2026-09-07T18:54:24.2590968-04:00
complete | lem:artanh | Derivative and logarithmic identities | 2026-09-07T18:55:33.7506872-04:00
complete | lem:remainder | Integral remainder on the unit interval | 2026-09-07T18:56:53.5267229-04:00
complete | lem:Kintegral | Integral formula, including the diagonal | 2026-09-07T19:03:58.3522207-04:00
complete | lem:Kregular | Positivity, complement symmetry, bounds, and joint continuity of K | 2026-09-07T19:10:58.0955701-04:00
complete | lem:HIidentities | Evaluation, differentiation, and continuity of H and I | 2026-09-07T19:15:02.4863733-04:00
complete | lem:Hbounds | Bounds for H | 2026-09-07T19:16:37.2065789-04:00
complete | lem:Ibounds | Bounds for I | 2026-09-07T19:18:50.7319953-04:00
complete | lem:Hdifference | A logarithm difference estimate | 2026-09-07T19:21:39.4705561-04:00
complete | lem:domain | Domain, continuity, and the divergence ratio | 2026-09-07T19:26:22.0969442-04:00
complete | lem:reduction | Symmetries and the reduced problem | 2026-09-07T19:31:40.0943783-04:00
complete | lem:exceptional | The exceptional interior cases, including diagonal equality | 2026-09-07T19:35:14.3232742-04:00
complete | lem:TS | Identities for T and S | 2026-09-07T19:39:30.8886857-04:00
complete | lem:vy | Range and inverse formulas | 2026-09-07T19:44:05.7728616-04:00
complete | lem:kformula | Logarithms and the integral for $k$ | 2026-09-07T19:49:42.8070450-04:00
complete | lem:rawderivatives | Differentiation with $b,u$ fixed | 2026-09-07T19:51:26.2007391-04:00
complete | lem:MAE | Identities and bounds for $M,A,E$ | 2026-09-07T19:55:00.4558853-04:00
complete | lem:Videntity | The exact normalized derivative identity | 2026-09-07T19:59:51.9749230-04:00
complete | lem:Phi | Comparison with $V$ | 2026-09-07T20:01:19.3396992-04:00
complete | lem:Psi | The sharper comparison | 2026-09-07T20:03:20.1784429-04:00
complete | lem:polyops | Soundness of polynomial arithmetic | 2026-09-07T20:08:22.0455953-04:00
complete | lem:division | Division soundness | 2026-09-07T20:11:06.9801108-04:00
complete | lem:rational | Rational-expression soundness | 2026-09-07T20:13:21.8471092-04:00
complete | lem:bernstein | Bernstein identity and strict positivity | 2026-09-07T20:18:26.3797152-04:00
complete | lem:bernstein-compute | Soundness of the three transforms | 2026-09-07T20:20:02.9055187-04:00
complete | lem:homogeneous-eval | Rational point signs using integers only | 2026-09-07T20:21:35.1472123-04:00
complete | lem:substitutions | Substitution soundness | 2026-09-07T20:33:24.1209493-04:00
complete | lem:rational-param | Rational parametrization of the two roots | 2026-09-07T20:36:01.8487324-04:00
complete | lem:remove-root | Removal of the remaining square root | 2026-09-07T20:43:32.1014806-04:00
complete | lem:chartfactors | Positivity of the removed nonmonomial factors | 2026-09-07T20:46:04.9594993-04:00
complete | lem:coverage | Complete substitution coverage | 2026-09-07T20:51:12.3910571-04:00
complete | lem:chart-domain | Domain information in each substitution | 2026-09-07T20:52:51.2473100-04:00
complete | lem:check-sound | Reflection for these finite checks | 2026-09-07T21:03:23.1002312-04:00
complete | lem:finite-certificate | Finite certificate | 2026-09-08T11:09:47.354333-04:00
complete | lem:chart-strict | Strict positivity on every required substitution face | 2026-09-08T14:05:25.442391-04:00
complete | lem:disc-positive | The squared inequality in the original parameters | 2026-09-08T14:05:25.442391-04:00
complete | lem:Fpositive | Recovery of the sign lost by squaring | 2026-09-08T14:05:25.442391-04:00
complete | lem:Vpositive | Positivity of $V$ and the derivative | 2026-09-08T14:05:25.442391-04:00
complete | lem:interior-strict | Strict inequality off the exceptional interior sets | 2026-09-08T14:05:25.442391-04:00
complete | lem:interior-complete | The complete interior conclusion | 2026-09-08T14:05:25.442391-04:00
complete | lem:boundary | Boundary inequality and all boundary equality cases | 2026-09-08T14:05:25.442391-04:00

# Verification

2026-09-07T18:47:32.2387182-04:00 � Configuration pins Lean v4.34.0-rc2 and Mathlib 3fd0366e201fd33a877fde4536f2aff1d97a8a59, the clean nearby checkout revision. Matching Lean executable verified. Dependency fetch is running; no source compilation or axiom audit yet.

2026-09-07T18:54:24.2590968-04:00 — Full lake build passed for lem:r; all ten square-root declarations audited with only propext, Classical.choice, Quot.sound. Final pin: Mathlib 572e4d091bcee94b35bdae44ff5a55687740f7c9.

2026-09-07T18:55:33.7506872-04:00 — Full lake build and seven logarithmic axiom audits passed with the allowed standard axioms only.

2026-09-07T18:56:53.5267229-04:00 — Full lake build passed; unit_interval_remainder has only the allowed standard axioms.

2026-09-07T19:03:58.3522207-04:00 — Full lake build passed; D_eq_integral and K_eq_integral have only the allowed standard axioms.

2026-09-07T19:10:58.0955701-04:00 — Full lake build and all K regularity axiom audits passed with only the three allowed standard axioms.

2026-09-07T19:15:02.4863733-04:00 — Full lake build passed; all H/I identities and H continuity audits use only the allowed standard axioms.

2026-09-07T19:16:37.2065789-04:00 — Full lake build and H bounds axiom audits passed with the allowed standard axioms.

2026-09-07T19:18:50.7319953-04:00 — Full lake build and I bounds audits passed with the allowed standard axioms.

2026-09-07T19:21:39.4705561-04:00 — Full lake build and H difference audits passed with the allowed standard axioms.

2026-09-07T19:26:22.0969442-04:00 — Full lake build and R domain, divergence ratio, and relative continuity audits passed with the allowed standard axioms.

2026-09-07T19:31:40.0943783-04:00 — Full lake build and reduction audits passed, including normalized representative existence and the bridge to reducedR.

2026-09-07T19:35:14.3232742-04:00 — Full lake build and all exceptional-case audits passed with the allowed standard axioms.

2026-09-07T19:39:30.8886857-04:00 — Full lake build and all T/S identity axiom audits passed with only the allowed standard axioms.

2026-09-07T19:44:05.7728616-04:00 — Full lake build and coordinate range, inverse, and converse axiom audits passed with only the allowed standard axioms.

2026-09-07T19:49:42.8070450-04:00 — Full lake build and k integral/logarithm formula axiom audits passed with the allowed standard axioms.

2026-09-07T19:51:26.2007391-04:00 — Full lake build and all fixed-parameter derivative axiom audits passed with the allowed standard axioms.

2026-09-07T19:55:00.4558853-04:00 — Full lake build and M/E identities and bounds axiom audits passed with the allowed standard axioms.

2026-09-07T19:59:51.9749230-04:00 — Full lake build and normalized derivative identity axiom audits passed with the allowed standard axioms.

2026-09-07T20:01:19.3396992-04:00 — Full lake build and both Phi comparison axiom audits passed with the allowed standard axioms.

2026-09-07T20:03:20.1784429-04:00 — Full lake build and sharper-comparison axiom audits passed with the allowed standard axioms.

2026-09-07T20:08:22.0455953-04:00 — Full lake build and polynomial arithmetic/degree-bound axiom audits passed with the allowed standard axioms.

2026-09-07T20:11:06.9801108-04:00 — Full lake build and quotient reconstruction/sign axiom audits passed with the allowed standard axioms.

2026-09-07T20:13:21.8471092-04:00 — Full lake build and rational arithmetic/conversion axiom audits passed with the allowed standard axioms.

2026-09-07T20:18:26.3797152-04:00 — Full lake build and Bernstein expansion, coefficient-formula, nonnegativity and strict-positivity axiom audits passed with the allowed standard axioms.

2026-09-07T20:20:02.9055187-04:00 — Full lake build and three-transform axiom audits passed with the allowed standard axioms.

2026-09-07T20:21:35.1472123-04:00 — Full lake build and integer homogeneous-evaluation identity/sign axiom audits passed with the allowed standard axioms.

2026-09-07T20:24:31.6345101-04:00 — Pre-commit full lake build passed. Monomial and cleared rational substitution axioms are allowed standard axioms only. Half-interval substitution remains incomplete; lem:substitutions stays in progress. Owned Lean source contains no sorry, admit, axioms, or native_decide.

2026-09-07T20:33:24.1209493-04:00 — Full lake build and all three polynomial substitution axiom audits passed with the allowed standard axioms.

2026-09-07T20:36:01.8487324-04:00 — Full lake build and rational-root parametrization/threshold axiom audits passed with the allowed standard axioms.

2026-09-07T20:43:32.1014806-04:00 — Full lake build and radical-removal identities, squared-gap implication, and rational Q positivity axiom audits passed with the allowed standard axioms.

2026-09-07T20:46:04.9594993-04:00 — Full lake build and chart-factor positivity/ratio axiom audits passed with the allowed standard axioms.

2026-09-07T20:51:12.3910571-04:00 — Full lake build and both chart coverage axiom audits passed with the allowed standard axioms.

2026-09-07T20:52:51.2473100-04:00 — Full lake build passed; chart restrictions, monomial positivity, open-cube images, and chart continuity use only the allowed standard axioms.

2026-09-07T21:03:23.1002312-04:00 — Full lake build and fixed-expression, generator reconstruction, full-box reflection, and exact chart-center image axiom audits passed. The six base and seven chart computations are defined; no closed certificate truth theorem is proved yet. A diagnostic (not a proof) evaluated the minus F generator successfully with degree (10,12,2).

2026-09-07T21:07:20.9703586-04:00 — Full lake build passed after adding proved cached three-pass transforms and a faster candidate-division merge. All newly audited declarations use only allowed axioms. Diagnostic computation of all six base degrees is in progress; no finite-certificate completion is claimed.

2026-09-07T21:23:24.6854895-04:00 — Diagnostic generation succeeded for all six base degrees with the specified values. Literal base numerators and chart quotient candidates were then added under the blueprint's untrusted-candidate provision to avoid repeating bounded division. Their option-valued generators still require exact reconstruction. Full validation of this latest revision is pending; none of the seven closed kernel truth assertions has yet been proved. The header clarification was synchronized to both autoformalize skill editions and their bootstrap references; both skill validators passed.

2026-09-07T21:28:53.0881917-04:00 — Full lake build passed for the current revision, including all literal candidates, guarded generators, cached transform soundness, and reconstruction/reflection theorems. Axiom audits contain only propext, Classical.choice, and Quot.sound. Candidates are split into short literal chunks to keep elaboration manageable. External diagnostic enumeration matches all seven prescribed positive/zero counts and finds no negative coefficients; this is not a Lean proof. Slow in-Lean diagnostic evaluations were stopped and removed. No closed certificate truth theorem has yet been proved; lem:finite-certificate remains in progress.

2026-09-07T23:12:28.2219761-04:00 — All 125 intermediate rational-expression node checks passed a Lean prefix build. The nine fixed F/K/Q root identities audit to propext only. Fifteen squared-gap nodes and 158 grouped multiplication checks are now present; their corrected full lake build is still running, so their verification is pending. Independent literal comparison matches the three prescribed H candidates with scalar factors 729, 11664, and 186624; this is diagnostic evidence only. No finite-certificate completion is claimed.

2026-09-07T23:13:40.1267247-04:00 — Full lake build passed (3472 jobs). All 140 expression nodes, 158 grouped multiplication checks, six base conversion success assertions, prescribed base degree triples, and N1/N2/N3 chart reconstruction success assertions are now verified. Audited dependencies are subsets of propext, Classical.choice, and Quot.sound. The four remaining chart reconstructions and exhaustive Bernstein signs/counts/witnesses/centers remain open; lem:finite-certificate stays in progress.

2026-09-08T00:13:51.7354419-04:00 — Incremental checks passed for both initial positive/boundary quotient reconstructions, P1 success with the original expansion, P2 upper-j reconstruction, and direct zero-shift P1/P2 reconstruction. Generic proofs also passed for Boolean exponent-order reflection, normalization that combines duplicates at each merge, direct zero-shift scaling, direct-merge cleared substitution, sparse coefficient-array initialization, and row/node Bernstein assembly. The last full-build checkpoint remains the six base conversions and N1-N3. Current P3/B1 grouped computations and staged N1 array checks require rerunning after assembly/performance fixes; the current full file is not yet verified and lem:finite-certificate remains in progress.

2026-09-08T00:25:22.7179203-04:00 — N1 staged Bernstein verification passed: the sparse seed array, all 63 transform rows, exact reconstruction of bernsteinArray, full support, all 4515 coefficient signs, counts (4465 positive, 50 zero), and both witness values. bernstein_N1_checked audits to only propext, Classical.choice, and Quot.sound; its literal data check has no axioms. Optimized P3/B1 cleared-substitution checks are still running. The current full-build revalidation and the remaining six Bernstein tables/centers are pending; finite-certificate remains in progress.

2026-09-08T00:48:56.1355511-04:00 — N3 staged Bernstein verification passed: sparse seed, all 129 transform rows, all 5375 signs, counts (5283 positive, 92 zero), and both witnesses. All seven prescribed homogeneous center values and their positivity also passed. Both audits use only propext, Classical.choice, and Quot.sound. The shared small-binomial-table equivalence passed. P3/B1 cleared reconstruction, N2 Bernstein, and B1 half substitutions are still running. Literal P1/P2/P3/B1 Bernstein blocks and the B1 assembly wrapper are now present but not yet verified. Full-file validation remains pending; finite-certificate is still in progress.

2026-09-08T00:56:00.3175718-04:00 — P1 and P2 staged Bernstein checks passed, including every seed and transform row, full signs, counts (3040,85) and (3003,122), and all four witnesses. Both audits use only allowed standard axioms. The half-substitution evaluator now merges normalized monomial expansions; its generic evaluation theorem passed. Bounded upper-half reconstruction groups are present (14 positive, 32 B1 first, 66 B1 second); B1 verification is running, and the positive groups remain to be checked. P3/B1 cleared reconstruction and N2 Bernstein are still running. The current full file remains unverified and finite-certificate remains in progress.

2026-09-08T01:03:00.9384266-04:00 — The revised positive upper-half reconstruction passed all 14 groups and final assembly; positiveHalfJ_result audits to propext and Quot.sound only. The finite-certificate assembly is now written, linking exact generator outputs, all Bernstein data, base degrees and center values, but it has not been checked in a full build. N2/P3/B1 Bernstein and P3/B1 cleared and B1 half reconstruction checks remain running. No source status changes; finite-certificate remains in progress.

2026-09-08T01:06:33.8379873-04:00 — B1 staged Bernstein verification passed: sparse seed, all 87 transform rows, all 4205 signs, exact counts (4165 positive, 40 zero), and both witnesses. bernstein_B1_checked uses only propext, Classical.choice, and Quot.sound. N2/P3 Bernstein and the P3/B1 cleared/B1 half reconstructions remain running. A conditional P3 assembly diagnostic is also running to isolate the long computation; its supplied group hypotheses do not establish closed reconstruction. Full-build validation remains pending; finite-certificate is still in progress.

2026-09-08T01:15:05.3289496-04:00 — P3 staged Bernstein verification passed: all 5115 signs, counts (5017 positive, 98 zero), and both witnesses, with only allowed standard axioms. Six Bernstein tables are verified; N2 remains open. Its combined row proof was stopped at about 31 GB and replaced by 129 individual row theorems, now running. Symbolic fixed-chunk fold lemmas were added to prevent assembly simplification from inspecting closed polynomial computations; their conditional diagnostic is pending. Original P3/B1 cleared checks and B1 grouped half checks remain running. The current full file is not verified; finite-certificate remains in progress.

2026-09-08T01:24:14.6326305-04:00 — Both B1 grouped upper-half reconstructions passed (32 and 66 groups), including their original congruence assemblies and final division by one. boundaryHalfJ_result and boundaryHalfK_result audit to propext and Quot.sound only. Latest generic trace-based assembly replacements still require validation. A conditional P3 diagnostic failed because command-scoped variable declarations were unavailable at the root; its error-generated sorryAx belongs only to that discarded stdin diagnostic, not the owned Lean file or a completed certificate. P3/B1 cleared checks and N2 Bernstein remain pending; full-file verification is still required.

2026-09-08T01:36:44.7129827-04:00 — P3 cleared substitution passed all 83 groups, the generic trace assembly, and final k² division. Both public audits use only propext and Quot.sound. All generic trace lemmas passed an independent Mathlib check. Modular conditional checks also passed the four positive/boundary generator wrappers and the final certificate assembly; these validate composition only. Superseded P3/B1 clear runs were stopped after the P3 result confirmed the assembly fix. The revised B1 clear run continues. N2's global seed remained memory-intensive (about 28 GB) despite separated transform rows, so that run was stopped; a sparse row-filter seed, proved generically equivalent to the original coefficient lookup, is now being checked. Full-file validation remains pending; finite-certificate is in progress.

2026-09-08T01:39:01.5935085-04:00 — N2's sparse seed verification passed: every filtered exponent row, exact row coefficient tabulation, and reconstruction of the original coefficientSeed array. The audit uses only propext, Classical.choice, and Quot.sound. The full N2 run with individual transform-row checks is underway. B1 cleared substitution/final division remains running. All other closed finite-certificate components have passed incremental checks; current full-file validation is still pending, so finite-certificate remains in progress.

2026-09-08T01:43:18.8007739-04:00 — B1 cleared substitution passed all 82 groups, generic trace assembly, and final Pminus² division. boundaryClear_result and boundaryClearDivision_result audit to propext and Quot.sound only. All reconstruction components now have successful incremental checks. N2's full Bernstein certificate remains running after its verified sparse seed. A full lake build of the current Lean file is also running; do not use the old olean for import-based diagnostics. Finite-certificate remains in progress until these checks pass.

2026-09-08T02:05:16.1880421-04:00 — The pinned compiler incremental snapshots passed an append/reuse test and correctly rejected a changed invalid theorem in a discarded stdin diagnostic. The full build was restarted once with temporary weakLeanArgs enabling --incr-save=.lake/build/autoformalize.snapshot. This captures a checked prefix for later additions; restore normal Lake configuration after the build. Snapshot files and their .deps helper are ignored compiler artifacts. N2 remains running. Finite-certificate is still in progress.

2026-09-08T02:39:10.4131316-04:00 — A kernel benchmark of the same N2 row took 122 seconds with array lookups, 172 seconds with a recursive sum, and 10.1 seconds with balanced literal lookups. Only the measured lookup improvement was adopted. The balanced binomial table, its exact Nat.choose equivalence, all three original-pass equivalence lemmas, and bounded array-lookup transfer passed a prefix check with allowed standard axioms. N2 now proves its three balanced coefficient lookups equal to the original arrays and checks each transform row through these equivalents; its full run is pending. The superseded slow N2/build runs were stopped, normal Lake configuration was restored, and a new snapshot-saving full build has now started. Finite-certificate remains in progress.

2026-09-08T02:53:31.8850337-04:00 — N2 full staged verification passed: all three balanced lookup tables, exact sparse seed, all 129 transform rows, original bernsteinArray reconstruction, support, all 26875 signs, counts (26855 positive, 20 zero), and its witness value. bernstein_N2_checked audits to only propext, Classical.choice, and Quot.sound. All seven Bernstein tables (52335 entries in total) and all seven center values now have successful staged checks, along with the positive/boundary reconstruction components. The current full lake build and snapshot save remain running; finite-certificate stays in progress until whole-file validation and its assembled axiom audit pass.


2026-09-08T04:27:44.8977783-04:00 ? Full-file validation is still running after more than 100 minutes; no new full-build or assembled finite-certificate result is available. Separate current-source checks passed node-125 left/right normalization and a purely list-based 11-chunk trace with its normalization bridge, using only propext and Quot.sound. Multiplication assembly diagnostics remain inconclusive and several were stopped for excessive memory growth. No Lean source change or source-row completion is claimed. The current owned source has no sorry, admit, new axioms, native_decide, or ofReduceBool. Continuation notes were compacted without altering the raw prompt log.


2026-09-08T04:45:57.3281916-04:00 ? The closed node-125 multiplication check passed all eleven groups and final assembly using an explicitly typed, named row function; its audit is propext and Quot.sound only. Controlled tests showed severe elaboration growth for the untyped inline function, while named and explicitly annotated alternatives passed. Applied the named-row fix to all 158 multiplication steps and all nine assemblies, without changing data or equations. The prior full build and profiling run were stopped; normal Lake configuration is restored. A new direct whole-file check with profiling and snapshot saving is running, to be followed by the required full lake build and assembled axiom audit. Finite-certificate remains in progress.


2026-09-08T04:47:50.2383666-04:00 — The file-level check caught an encoding error in the new row helper type. Corrected the annotation to `Prod Exponent Int` and restarted the profiled whole-file check. The failed run provides no new verification; finite-certificate remains in progress.


2026-09-08T05:13:49.9047269-04:00 — The named-row revision passed all nine rational F/K/Q roots, all three squared-gap roots (thus all nine multiplication assemblies), and all three baseF conversion-success audits, using only propext and Quot.sound. The direct full-file run was stopped near 45 GB before completion. Two generic rational field-reconstruction lemmas and all nine literal-node conditional applications then passed with the same allowed axioms. Applied those helpers to the nine large square/product node proofs, retaining every original field and multiplication-by-one check. A new profiled whole-file check with snapshot saving is running. Full lake build and assembled finite-certificate audit remain required; finite-certificate is still in progress.


2026-09-08T05:55:24.4047392-04:00 — The current direct whole-file check has passed all nine rational roots, all three squared-gap roots, all six base conversions and prescribed degrees, positive upper-half and zero-shift reconstructions, both positive/boundary cleared substitutions and final divisions, and the complete N1 Bernstein certificate. Audits use only allowed standard axioms. N2 verification is now running; no whole-file completion or assembled finite-certificate audit is claimed. The owned source scan finds no sorry, admit, new axiom, native_decide, or ofReduceBool. No additional Lean changes were needed. Full lake build remains required; finite-certificate stays in progress.


2026-09-08T06:10:43.3499299-04:00 — All three N2 balanced lookup equivalences passed in the direct whole-file check, with allowed standard axioms. That run was stopped near 53 GB before completing N2 or the full file. Pinned compiler inspection identified extra snapshot-state retention as a likely memory contributor. An ordinary full lake build is now running with clean, unchanged Lake configuration and no snapshot flags. No source proof was changed or marked complete; finite-certificate remains in progress.


2026-09-08T07:32:45.4564620-04:00 — The ordinary full lake build is still active; it has survived a temporary memory peak around 48 GB and continued after returning near 23 GB. Lake has not yet returned the module result or assembled axiom audit, so no additional source completion is claimed. Two stdin-only conditional boundary upper-j assembly checks passed with allowed axioms: the existing direct foldr_trace32 composition and an additional definitional-bridge variant had essentially identical final checking times (436 ms and 428 ms). No bridge or source change was adopted. Compiler info-tree disabling was rejected after diagnostic internal panics. Finite-certificate remains in progress.


2026-09-08T08:26:50.2203480-04:00 — Ordinary full lake build FAILED after about 2 h 6 min. All seven Bernstein tables, both boundary half reconstructions, other arithmetic reconstructions, and center checks passed with allowed axioms. The final P1 and P2 generator wrappers hit the default recursion-depth limit; the assembled finite_certificate audit therefore contains error-generated sorryAx and is not accepted. The source has no placeholder or dummy axiom. A local recursion-setting fix and an explicit zero-shift bridge alternative are under isolated validation. No full build is currently running; finite-certificate remains in progress. Extraction and dummy development await a successful real build.


2026-09-08T08:29:01.0520800-04:00 — Corrected P1/P2 assembly passed exact conditional diagnostics using a symbolic zero-shift equality; both audits contain only propext and Quot.sound. Applied that bridge to the real source and started a new ordinary full lake build. The old limit-only diagnostic was stopped; no other diagnostic remains active. No dummy axiom or extraction has been introduced. The finite certificate remains in progress until the corrected full build and assembled audit pass.


2026-09-08T11:09:47.354333-04:00 — Corrected ordinary lake build PASSED (3472 jobs). Auto.finite_certificate audits to propext, Classical.choice, Quot.sound only; both corrected P1/P2 assembly proofs audit to propext and Quot.sound. No sorryAx or error appears in the successful build output. The real finite certificate is complete. Next is the authorized module extraction and verification, followed by provisional downstream development with at most one temporary certificate axiom and final restoration.


2026-09-08T11:16:37.736114-04:00 — The verified certificate has been extracted into FiniteCertificate.lean, with the analytic proof importing it. An isolated check of the extracted prerequisite prefix PASSED; the full split lake build is running. The source mathematics and certificate data are unchanged. The certificate remains proved by the pre-extraction successful build, but the new module layout is not yet fully verified. No dummy axiom or downstream completion is claimed.


2026-09-08T11:27:59.728902-04:00 — Per the latest user instruction, development now proceeds concurrently with the real split certificate build. The real FiniteCertificate.lean imports Mathlib only and is frozen. Its SHA256 is 0c99273c54cbe0affb6b4f6a09c474026b8bae73da98265a079c12b4281dd13e. The ONE temporary certificate axiom is in TheePointInequality.lean; an ignored isolated import artifact contains only the certificate definitions and generic prerequisites. That artifact passed compilation without extra axioms. The main file now contains the chart positive-witness and strict-positivity proofs; their development build is running. These are provisional until checked and ultimately validated with the real certificate.


2026-09-08T11:30:42.865328-04:00 — Main-file development check PASSED. chart_positive_witness audits to standard axioms only; chart_strict additionally uses the single authorized finite_certificate axiom. Chart strictness is provisionally proved and awaits real-certificate validation; next development item is disc-positive. The real certificate build remains running. Its source hash still matches the freeze checkpoint; the only previously uncommitted difference is the already instructed copyright-holder header correction.


2026-09-08T11:38:11.417101-04:00 — Full main-file development check PASSED through disc_positive. All seven inverse chart arguments, including the B1 factor at half-substituted spatial coordinates, are proved with standard axioms plus the ONE authorized finite_certificate axiom. No sorryAx is present in the successful development output. Next development step: Fpositive (continuity and positive center recover the unsquared sign). Real certificate build remains in the background.


2026-09-08T11:43:08.883000-04:00 — Full main-file development check PASSED through Fpositive. The center-path domain, continuity, center sign, and intermediate-value sign recovery are proved; Fpositive uses only standard axioms plus the ONE authorized finite_certificate axiom. Next development step: Vpositive. All new source remains in TheePointInequality.lean; real certificate build continues unchanged.


2026-09-08T11:46:50.454204-04:00 — Full main-file development check PASSED through Vpositive and fixed_u_derivative_pos. The chart coverage, rational parameter inverse, radical removal, and Phi/Psi comparisons establish strict positivity of V and the full derivative with only standard axioms plus the authorized certificate axiom. Next: interior-strict, treating nonzero fixed u and the division-free zero case separately.


2026-09-08T11:51:46.791987-04:00 — Full main-file development check PASSED through interior_strict. Strict monotonicity is proved separately for nonzero fixed u and for the division-free zero-time function, including its continuity at zero. The strict reduced inequality uses only standard axioms plus the authorized certificate axiom. Next: combine exceptional cases and transport the exact equality characterization back to the original interior coordinates.


2026-09-08T11:54:13.607593-04:00 — Full main-file development check PASSED through interior_complete: the inequality and exact equality equivalence now hold for all interior spatial coordinates and every s in the closed unit interval. Normalization and inverse transport preserve every equality alternative. Standard axioms plus the authorized dummy certificate only. Next: boundary cases, then main theorem assembly and real-certificate validation.


2026-09-08T11:59:54.108133-04:00 — Full main-file development check PASSED through boundary_complete. The boundary inequality and exact equality equivalence use only propext, Classical.choice, Quot.sound; they do not use the dummy certificate axiom. All mathematical branches are now developed. Next: assemble the two explicit main statements, check them with the dummy, remove the temporary axiom, and validate against the real certificate once its background build completes.


2026-09-08T12:02:32.565763-04:00 — Both final statements, three_point_inequality and three_point_equality_iff, PASSED the full main-file development check. Their audits contain the standard axioms plus the ONE authorized temporary finite_certificate axiom; no sorryAx occurs. That axiom has now been removed from the main source. All proof code is present, but final source completion awaits the real background certificate build and final standard-axiom audits. The frozen certificate file was not edited.


2026-09-08T12:15:48.623844-04:00 — Removed the entire isolated dummy directory at the user's request, including its generated source, oleans, and diagnostic log. The main source already contains no temporary axiom. Both real Lean sources and the real build artifacts were left untouched; no build was started or restarted. Final real-build validation remains pending, and other work stays paused until the user resumes.


2026-09-08T12:33:15.727587-04:00 — User requested timed resumption at the expected finish and peak-memory recording. Session-local resume target: 2026-09-08T13:54:15-04:00, based on the previous successful module build taking 9576 seconds (2 h 39 min 36 s). Current compiler peak working set already observed: 42331316224 bytes (39.424 GiB). A five-second background sampler now preserves the highest observed Windows peak counter in .lake/build/finite-certificate-memory.json. The real build and both Lean sources are untouched. Final verification remains pending.


2026-09-08T12:42:25.537689-04:00 — Scheduling correction: NO automatic wake-up or scheduled task was actually created. The recorded 13:54:15 resume time is an estimate only; this conversation exposes no persistent scheduling tool. Earlier wording that a session-local timer had been set was incorrect. The independently launched memory sampler is separate and does not resume the assistant. Work remains paused until an actual scheduled run or a user message resumes it.


2026-09-08T14:05:25.442391-04:00 ? Final verification: existing full lake build PASSED (3473 jobs, exit 0). FiniteCertificate took 8174 seconds (2 h 16 min 14 s); TheePointInequality took 19 seconds. All 303 reported axiom audits use only permitted standard axioms, including finite_certificate, chart_strict, disc_positive, Fpositive, Vpositive, interior_strict, interior_complete, boundary_complete, three_point_inequality, and three_point_equality_iff. The final statements match blueprint thm:main, including prescribed diagonal/boundary definitions and all equality alternatives. Owned sources contain no sorry, admit, new axiom, native_decide, or ofReduceBool; the isolated dummy is absent. Certificate SHA256 matches the frozen checkpoint. No source file was changed and no build was restarted during this finalization.

Certificate olean: 835804024 bytes (797.085 MiB). Main olean: 15727888 bytes. Highest observed Windows compiler peak working set: 42331316224 bytes (39.424 GiB), from .lake/build/finite-certificate-memory.json; sampler exit observed at 2026-09-08T13:30:58.8999669-04:00. This observed peak counter does not guarantee capture of a final spike between the last sample and exit. All agreed proof work is complete.


## Manual theorem bridge commit checkpoint

2026-09-10T19:41:35.9002549-04:00 (recording time): User requested committing the existing bridge development in WeakHellinger/Auto/ThreePointInequality.lean and WeakHellinger/Auto/Reduction.lean, and its use in WeakHellinger/Theorems.lean. The three manual theorem placeholders are replaced by bridge applications, including the limsup boundary and equality characterization. Git whitespace checks and placeholder scans pass. No Lean build or axiom audit was run during this commit task, in accordance with standing build restrictions; this checkpoint does not assert new verified completion. FiniteCertificate.lean is unchanged.


## Palomar preparation checkpoint

2026-09-25T08:15:47.370867-04:00 (recording time): Prepared Challenge/Solution, comparator.json and formalization.yaml on branch palomar with the requested title and arXiv source. Full incremental lake build and Quick Comparator passed; all three canonical targets use only standard axioms. Official metadata/configuration/manifest checks passed. The frozen certificate was reused unchanged. Current Palomar minimum Lean v4.35.0-rc2 rejects this project pin v4.34.0-rc2; official Comparator/export/NanoDa/sandbox checks remain unrun. Packaging is complete, registry readiness is blocked pending a separately authorized toolchain migration and certificate rebuild. See automation/Palomar.md for evidence and editorial assessment. User authorized this checkpoint commit and push.
