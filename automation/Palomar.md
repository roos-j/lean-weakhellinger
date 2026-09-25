# Palomar preparation

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

## Mechanical blocker and unrun checks

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
