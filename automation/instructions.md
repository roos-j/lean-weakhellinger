# Active effort: weak Hellinger reduction

Updated: 2026-09-08T21:21:03.480067-04:00 (recording time).

Prove the user's `prop:three-point-implies-main`: the exact existing three-point inequality implies the weak Hellinger inequality for all n >= 1, rho in [-1,1], and Boolean f,g on the uniformly weighted noisy cube. Work in WeakHellinger/Auto/Reduction.lean and the explicitly authorized WeakHellinger/Auto/ReverseHypercontractivity.lean, in namespace Auto. ReverseHypercontractivity imports Mathlib only and proves the reverse coefficient's definition, data processing, tensorization, and binary-symmetric/noisy-cube formula. Reduction may consume those proved results. No other mathematical axioms are authorized.

During development, Reduction has ONE axiom with exactly the statement of Auto.three_point_inequality; its definition closure is copied unchanged from ThreePointInequality.lean. Do not import the actual certificate during development. Do not modify FiniteCertificate.lean, build it, or run a whole-project build. Use targeted file checks with Mathlib dependencies. Existing user files Defs.lean, Theorems.lean, and WeakHellinger.lean are outside this proof-development edit scope.

Latest user instruction: ONLY AT THE VERY END, after every other proof passes, remove the temporary axiom and duplicated definition closure, import the actual ThreePointInequality, then rebuild for final verification. This final integration is the last ledger item, never an intermediate development check. Preserve the certificate source and reuse verified artifacts where available. Audit the final theorem against standard axioms only.

The user requests a complete mathematical plan in forward dependency order, recorded in Status.md, followed one item at a time. The earlier isolated optimizer/algebra lemmas in Reduction passed a targeted file check; this does not complete the missing noisy-cube theorem. No changes to the main inequality statement are permitted. Handle c=d (the proposed changed marginal then equals the original), constant Boolean functions, null conditioning events, and rho endpoints explicitly.

Mathematical route: finite KL and entropy transportation cost; entropy-lifting characterization of the reverse coefficient; deterministic/stochastic data processing by lifting a changed output law and applying KL contraction; binary-symmetric entropy lifting by convex minimization and a curvature bound; product lifting by sequential coupling and the KL chain rule; sharpness by small marginal perturbations; apply this to Boolean output laws; prove the swap minimizer identity; obtain R >= sqrt(1-rho^2); finish by the exact three-point axiom. For c=d, use a biased stochastic output perturbation with epsilon -> 0, after proving stochastic processing and continuity of the normalized R. The complete finite-probability formulations must be faithful to standard noisy-cube expectations and conditional expectations.

Commit ONLY when automation/Status.md is updated, immediately after each such update, including associated owned work. Preserve Git identity, use [codex] subject and Co-authored-by: Codex <codex@openai.com>, and never push. No agents are authorized. Record paths relatively and preserve UTF-8/LF. Raw prompts are in ignored automation/raw.md.

# Historical three-point formalization instructions

# Current instructions

Updated: 2026-09-08T14:05:25.442391-04:00 (recording time). Raw task-specific prompts are preserved in `automation/raw.md`, which is ignored by Git.

Formalize `blueprints/weak_hellinger_three_point_blueprint.tex` (7 September 2026), Theorem `thm:main`, including every equality case and its prerequisite closure through `lem:boundary`. The independent upper-semicontinuous-envelope section is excluded. Continue until the entire agreed scope passes final verification; do not stop at milestones.

Keep all remaining proof work in `WeakHellinger/Auto/ThreePointInequality.lean`, in namespace `Auto`. `WeakHellinger/Auto/FiniteCertificate.lean` contains the extracted real integer certificate, imports Mathlib only, and is frozen unless there is a very good reason to change it. Its frozen SHA256 is `0c99273c54cbe0affb6b4f6a09c474026b8bae73da98265a079c12b4281dd13e`. Its header already includes the user-instructed copyright holder, Joris Roos. Auto/ Lean headers begin with copyright, license, and the exact generation notice on their first three lines.

Never write absolute filesystem paths into any file. Use repository-relative or user-directory-relative paths, including in logs, raw prompts, documentation, and saved commands. Preserve source LF line endings with byte writes. For Unicode PowerShell pipelines set both `PYTHONIOENCODING` and `OutputEncoding` to UTF-8.

Commit ONLY when `automation/Status.md` is updated, and immediately after each such update. Include associated owned proof and record changes. Preserve Git identity; use a brief `[codex]` subject and the trailer `Co-authored-by: Codex <codex@openai.com>`. Do not push. Do not stage the raw log. No extra agents are authorized.

Lean v4.34.0-rc2 and Mathlib revision `572e4d091bcee94b35bdae44ff5a55687740f7c9` are pinned. Set ELAN_HOME to `~/.elan` (resolved at runtime) before Lake commands. Both source modules are listed in lakefile.toml and the normal full check is `lake build`.

## Final verification state

The user resumed finalization and explicitly prohibited modifying FiniteCertificate.lean or restarting the build. Neither action was performed. The existing full Lake build (session 45625) exited successfully: 3473 jobs, extracted certificate 8174 seconds, main proof 19 seconds. Both final theorems and all pending intermediate source results audit to subsets of propext, Classical.choice, Quot.sound. The temporary axiom and isolated dummy directory are absent. The agreed theorem and every equality case are complete.

The frozen certificate SHA256 remains unchanged. Its olean is 835804024 bytes (797.085 MiB); the main olean is 15727888 bytes. The memory sampler exited and recorded a highest observed Windows PeakWorkingSet64 of 42331316224 bytes (39.424 GiB), last sampled at 2026-09-08T13:30:53.8892401-04:00. This is the compiler process working-set peak observed before exit, not total system memory or a guaranteed final post-exit peak.

No new build, cache-freshness build, trace modification, or certificate edit was performed during finalization. The successful existing build output supplies the final proof audits. No automated wakeup was scheduled; the user resumed this work manually.

Opening the certificate source in VS Code may cause the Lean language server to elaborate its expensive proofs again; this is separate from running Lake. The main file imports the compiled certificate. Do not initiate further compilation or change the frozen certificate without new user direction.

Commit only when automation/Status.md is updated. The final commit accompanies its verified completion update. No push or binary publication is authorized by the user's question about uploading oleans.


2026-09-08T14:07:45.241408-04:00 ? User requested removing diagnostic #print clutter from TheePointInequality.lean. Remove only diagnostic commands and resulting excess blank lines; preserve declarations and proofs. Leave FiniteCertificate.lean untouched. No build or commit for this cleanup; Status.md is unchanged.


2026-09-08T20:40:58.878634-04:00 ? User authorized renaming TheePointInequality.lean to ThreePointInequality.lean, superseding the old spelling requirement. Update module imports and Lake roots. Preserve source content and FiniteCertificate.lean. Do not launch a build or commit; Status.md is unchanged. Existing compiled artifacts under the old module name are not renamed or treated as artifacts of the new module.
