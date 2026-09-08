# Main target

status | exact source location | brief mathematical step | ISO 8601 timestamp with offset
--- | --- | --- | ---
not started | thm:main | Closed-cube inequality and exact equality characterization | 2026-09-07T18:47:32.2387182-04:00

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
not started | lem:chart-strict | Strict positivity on every required substitution face | 2026-09-07T18:47:32.2387182-04:00
not started | lem:disc-positive | The squared inequality in the original parameters | 2026-09-07T18:47:32.2387182-04:00
not started | lem:Fpositive | Recovery of the sign lost by squaring | 2026-09-07T18:47:32.2387182-04:00
not started | lem:Vpositive | Positivity of $V$ and the derivative | 2026-09-07T18:47:32.2387182-04:00
not started | lem:interior-strict | Strict inequality off the exceptional interior sets | 2026-09-07T18:47:32.2387182-04:00
not started | lem:interior-complete | The complete interior conclusion | 2026-09-07T18:47:32.2387182-04:00
not started | lem:boundary | Boundary inequality and all boundary equality cases | 2026-09-07T18:47:32.2387182-04:00

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
