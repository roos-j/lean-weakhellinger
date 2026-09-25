# Palomar preparation

**Current submission scope:** Only `WeakHellinger.weak_hellinger` is selected.
The three-point results remain in the proof development. The initial three-result
selection and its checks below are historical.

**Current state:** The subsequent toolchain upgrade pins Lean v4.35.0-rc3 and
Mathlib c55e6e786f49471c72fbddbec5415808896aec1e on palomar and master.
The old minimum-version blocker below is resolved. Build and comparator results
in the initial report apply to the old toolchain, not automatically to the new one.
See the upgrade checkpoint below for current validation.

Recorded: 2026-09-25T08:15:26.379445-04:00

## Selected surface

This is the substantive repository. `comparator.json` selects precisely
`WeakHellinger.weak_hellinger`, `WeakHellinger.three_point_inequality`, and
`WeakHellinger.three_point_inequality_equality`. These are Theorem 1.1 and
Proposition 2.1 (including equality cases) of [arXiv:2609.28534v1](https://arxiv.org/abs/2609.28534v1).
Proposition 2.1 is both a proof ingredient and a principal result of the paper,
so both its inequality and equality characterization are included. Other
supporting results are not selected. Challenge definitions and theorem types
are faithful copies of the canonical declarations; Solution imports those
canonical proofs directly.

The exact requested project title is retained without the skill's default
"in Lean" suffix. Existing pending README wording and the theorem docstring's
"inequality" wording were preserved. No substantive proof was changed.

## Checks completed

- `lake --no-build build WeakHellinger.Auto.FiniteCertificate` and the analogous
  check for `WeakHellinger.Auto.Reduction`: all targets up to date.
- `lake build`: passed, 3489 jobs, reusing the existing finite certificate.
  The final Challenge docstring formatting was then checked with
  `lake build Challenge`, which passed. Its three intentional `sorry` warnings
  are required statement placeholders, not proof-development holes.
- `lake env lean ~/.codex/skills/prepare-for-palomar/assets/QuickComparator.lean`:
  passed exact target signatures, recursive statement-definition compatibility,
  and permitted-axiom checks for all three selected theorems. The only proof
  axioms are `propext`, `Classical.choice`, and `Quot.sound`.
- Metadata passed the current upstream formalization.yaml JSON Schema and the
  official Palomar `load_formalization_metadata` check, including taxonomy and
  provenance checks. Official Comparator configuration, root licence filename,
  and manifest parsing checks passed.
- Official checks used PalomarSubmission revision
  `a59f25bd8a66bf6faf3a4f4260d412989c0185ea`, cached only under ignored `.lake`.
- Challenge is below the preferred 300-line / 32-KiB limits. A local import-header
  traversal visited 2121 dependency sources and 190 core references with no
  project-source imports. This is advisory, not the protected official source audit.
- All nine manifest packages use public GitHub URLs and full immutable revisions.
  Project and pinned Mathlib toolchains agree. Tracked sources contain no compiled
  artifacts, submodules, or LFS pointers; their total size is about 18.5 MiB.
- The root licence text is Apache-2.0 and agrees with the metadata. The official
  Ruby licence detector was not run.
- No proof-development `sorry`, `admit`, custom `axiom`, or `native_decide` was found.
- Frozen certificate SHA256 remains
  `0c99273c54cbe0affb6b4f6a09c474026b8bae73da98265a079c12b4281dd13e`.
  Its 835804024-byte olean retains its original modification time. It was neither
  modified nor rebuilt.

## Initial mechanical blocker and unrun checks (superseded by upgrade)

The official toolchain check rejects `leanprover/lean4:v4.34.0-rc2`: the current
[minimum](https://github.com/PalomarRegistry/PalomarSubmission/blob/a59f25bd8a66bf6faf3a4f4260d412989c0185ea/toolchains.json)
is `v4.35.0-rc2`. Consequently this commit is prepared packaging, not a currently
eligible Palomar submission. The pinned formalization was preserved; upgrading
Lean/Mathlib and rebuilding the frozen certificate require a separate task.

Actual Comparator, proof export, independent NanoDa replay, protected Challenge
compilation/source audit, sandbox verification, authenticated dependency checks,
and a clean certificate rebuild were not run. This Windows host has no installed
WSL/Linux environment. The official server workflow was not dispatched: no registry
submission was requested, and the known toolchain gate already fails. Quick
Comparator and the incremental build do not replace those checks. Resource needs
for a clean build remain substantial (the README records about 40 GB and 2.5 hours).

## Editorial dry run

The selected statements agree with the cited paper, with the disclosed extension
to dimension zero. Finite conditional expectations have their ordinary meaning;
null-event choices disappear from the average. The three-point statement retains
the upper-limit boundary definition and every equality alternative. No additional
mathematical assumptions or weaker conclusion were introduced. The copied
statement definitions were checked across the separate environments.

The preprint identifies this repository and explains human-written statements,
human supervision, and Codex/gpt-6-astra-medium proof generation. The metadata
separates paper authors from the formalization maintainer and makes no independent
human peer-review or novel-result claim. No journal publication was identified in
the arXiv record or title search. The development is directly relevant to researchers
in Boolean analysis and information theory studying one-bit noisy-channel bounds.

Editorial success appears likely on this evidence, subject to Palomar's actual
review. Mechanical acceptance is currently blocked by the toolchain gate, and its
likelihood after a migration cannot be established without a clean build and
export/replay, especially given the certificate's resource demands. This is an
agent assessment, not a Palomar decision.

Final submission requires a public immutable commit satisfying the current gates
and the submitter's own responsible-author/maintainer or approval declaration.
This preparation task commits and pushes the branch but does not submit or register it.


## Lean upgrade checkpoint

Recorded: 2026-09-25T18:33:54.238058-04:00

Both palomar and master now pin `leanprover/lean4:v4.35.0-rc3`, the newest
published Lean release (a release candidate), and the matching Mathlib release
commit `c55e6e786f49471c72fbddbec5415808896aec1e`. The latest stable release at
this check was v4.34.1; the release candidate was selected to satisfy the request
for the latest version and Palomar's minimum. Release references:
[Lean](https://github.com/leanprover/lean4/releases/tag/v4.35.0-rc3) and
[Mathlib](https://github.com/leanprover-community/mathlib4/releases/tag/v4.35.0-rc3).

`lake update` completed, including dependency cache retrieval. Both branches have
identical regenerated manifests and matching Lean/Mathlib toolchains. Master
retains only its original library target; Palomar retains its submission targets.
The official supported-toolchain check now passes.

`lake build Challenge WeakHellinger.Defs WeakHellinger.Auto.ReverseHypercontractivity`
passed on the new toolchain (3292 jobs), with expected Challenge placeholders and
non-failing linter/deprecation messages. The shared definitions and independent
proof module are byte-identical on the two branches, so this check also covers
those master sources. No mathematical source changes were needed.

Full `lake build`, Solution/Quick Comparator, and official export/NanoDa checks
remain pending on the new toolchain. The machine had about 28 GiB free RAM when
checked, below the certificate's documented approximately 40 GiB requirement.
The expensive certificate build was not started. Its frozen source hash is
unchanged; old compiled artifacts cannot serve as evidence for the new Lean version.
The prior minimum-version blocker is resolved, but full migration verification
is not yet established. The user's pending formalization.yaml edits are preserved
and excluded from the upgrade commits.


## Single-result selection checkpoint

2026-09-25T18:40:45.997226-04:00 (recording time): At the user's request, comparator.json and status.main_results now select only WeakHellinger.weak_hellinger (Theorem 1.1). The three-point inequality and equality characterization remain in the substantive proof development but have been removed from Challenge, along with their unused definitions and imports. README submission documentation is synchronized. The 94-line Challenge builds on Lean v4.35.0-rc3; official metadata and Comparator configuration parsing pass, and the selected theorem signature is textually identical to the canonical declaration. Full Solution/Comparator verification on the new toolchain remains pending as described above. User edits to metadata prose were preserved and excluded from this scope-change commit.
