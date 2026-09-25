# Current task: manual weak Hellinger statement

2026-09-10T17:13:34.553976-04:00 (recording time): Formulate the supplied weak Hellinger theorem in WeakHellinger/Theorems.lean, close to the source, introducing Boolean functions, uniform expectation and noisy conditional expectation in WeakHellinger/Defs.lean. The user explicitly authorizes these manual files and their WeakHellinger namespace. This is statement scaffolding with a sorry, not a proof-completion request. Use arbitrary natural n, including zero, and rho in [-1,1], following the subsequent user correction. Model the cube by Fin n -> Fin 2 (0 represents -1, 1 represents +1), as corrected by the user, real-valued sign-valued functions, finite uniform averages and the independent coordinate noise kernel. Preserve existing declarations. No full build, certificate rebuild, or commit. Raw prompt in automation/raw.md.

# Current Lake layout requirement

2026-09-10T17:03:22.054764-04:00 (recording time): The user requires the default whole-module library root ALWAYS: omit `roots`, or set it only to `["WeakHellinger"]`. Maintain the usual top-level `WeakHellinger.lean` importing the production Lean modules, including manual and Auto modules. Never list individual files in `roots` or bypass the import file with `globs`. This supersedes older instructions below to add modules to Lake roots. Creating and maintaining the top-level import file is authorized. The current task updates the repository and user-folder autoformalize skills and their paired edition; no project build or Git commit is requested. See the matching entry in `automation/raw.md`.

# Agent instruction routing

2026-09-09T07:57:41.252743-04:00 (recording time): Maintain a root AGENTS.md directing agents to the Codex autoformalize skill, with applicable local instructions in automation/ taking precedence over the skill. Both the repository and user-folder Codex skill copies must create AGENTS.md automatically if absent, preserving existing files.

# Completed effort: weak Hellinger reduction

Updated: 2026-09-08T22:54:20.866938-04:00 (recording time). Raw user prompts remain in ignored automation/raw.md.

The requested reduction is complete in WeakHellinger/Auto/Reduction.lean. Auto.weak_hellinger proves the source noisy-cube inequality for all dimensions, all rho in [-1,1], and all Boolean functions, using the finite-law encoding with true=+1 and false=-1. The proof includes c=d, constants, null conditioning events, and rho endpoints.

WeakHellinger/Auto/ReverseHypercontractivity.lean imports Mathlib only and proves the finite entropy-infimum coefficient, its entropy-lifting characterization, data processing on the positive effective supports required by the reduction, tensorization, and exact binary-symmetric/noisy-cube coefficient formulas including endpoints. It introduces no axioms.

As explicitly requested, the exact temporary three-point axiom was used only during development. AFTER all proof steps passed, it and the copied definition closure were removed; Reduction now imports the actual ThreePointInequality. Final targeted builds and imported axiom audits pass with only propext, Classical.choice, Quot.sound. Reduction is in the Lake library roots. No full-project build or finite-certificate compilation was run.

FiniteCertificate.lean remains frozen with SHA256 0c99273c54cbe0affb6b4f6a09c474026b8bae73da98265a079c12b4281dd13e. Its original compiled artifact was reused unchanged. Never rebuild or modify it without new user direction. Existing Defs.lean, Theorems.lean and WeakHellinger.lean were outside the edit scope and remain untouched.

All dependency rows in Status.md are complete. There is no remaining proof obligation for this requested reduction. The source's diagonal admissibility gap was handled by a biased stochastic output perturbation and continuity of the Hellinger expression, avoiding a normalized-R continuity requirement.

Commit ONLY when Status.md is updated, immediately after that update. Preserve Git identity; use [codex] subjects and Co-authored-by: Codex <codex@openai.com>. No push or agents are authorized. Keep written paths relative and preserve UTF-8/LF. Previously authorized rename/diagnostic cleanup of the three-point file is recorded with final integration; unrelated user files are not staged.

# Historical three-point formalization instructions

# Current instructions

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

2026-09-10T17:14:01.761793-04:00 (recording time): User correction: use Fin n -> Fin 2, not Fin n -> Bool. See automation/raw.md.

2026-09-10T17:15:36.373371-04:00 (recording time): Copy BooleanFunc and BooleanValued from ../lean-booleanfun: BooleanFunc n is an arbitrary real-valued function on Fin n -> Fin 2; BooleanValued is a Prop structure with one_or_neg_one. Replace the bundled subtype and use explicit BooleanValued hypotheses in weak_hellinger. Coordinate sign convention agrees with the source Walsh characters: 0 represents +1 and 1 represents -1, superseding the earlier encoding convention.

2026-09-10T17:16:55.404886-04:00 (recording time): User requested removing the 1 <= n hypothesis from weak_hellinger; include n=0 and update its docstring.

## 2026-09-10T17:19:43.807777-04:00 (recording time)

Add expectation and conditional-expectation notation scoped to WeakHellinger and use it in the manual weak Hellinger statement.

## 2026-09-10T17:20:54.616144-04:00 (recording time)

Rename the manual BooleanCube definition and uses to HammingCube. BooleanFunc n has domain HammingCube n.

## 2026-09-10T17:22:21.123237-04:00 (recording time)

Use a Prop-valued def for BooleanValued: forall x, f x = 1 or f x = -1. This supersedes the previously copied structure.


## 2026-09-10T19:41:35.9002549-04:00 (recording time)

User requested committing the pending changes. This supersedes earlier no-commit instructions for this checkpoint. Preserve the standing no-build and no-push restrictions. See automation/raw.md.


## Latest Lean upgrade

2026-09-25T18:31:03.558219-04:00 (recording time): User requests updating Lean on master and palomar to the latest version. Pin v4.35.0-rc3 and the matching immutable Mathlib release revision. Preserve the mathematical statements and finite-certificate source. This follows the Palomar preparation task and its toolchain blocker.
