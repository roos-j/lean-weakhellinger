## Formalization of the weak Hellinger theorem

This repository contains a Lean formalization of the weak Hellinger theorem.

### Statement of the main theorem

Let $n\in\mathbb{N}$ and $\rho\in[-1,1]$. Let $X$ be uniform on $\{-1,1\}^n$,
and obtain $Y$ by independently flipping each coordinate of $X$ with probability
$(1-\rho)/2$. Then for all Boolean functions $f,g:\{-1,1\}^n\to\{-1,1\}$,

```math
\sqrt{1-(\mathbf{E}f(X))^2}
-
\mathbf{E}\sqrt{1-(\mathbf{E}[f(X)\mid g(Y)])^2}
\le 1-\sqrt{1-\rho^2}.
```

The definitions and main theorem statements are in
[Defs.lean](WeakHellinger/Defs.lean) and
[Theorems.lean](WeakHellinger/Theorems.lean).

### Build instructions

Note building this formalization requires at least 40 GB of free RAM and may take several hours (see below for an explanation).

Install Lean 4 following the instructions [here](https://lean-lang.org/install/),
then run:

```sh
git clone https://github.com/roos-j/lean-weakhellinger
cd lean-weakhellinger
lake exe cache get!
lake build
```

To inspect the axioms, open [WeakHellinger.lean](WeakHellinger.lean) in VSCode
and move the cursor to:

```lean
#print axioms WeakHellinger.weak_hellinger
```

Lean reports:

```text
'WeakHellinger.weak_hellinger' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Formal verification of explicit computations

For the proof of the three-point inequality it was necessary to formally verify certain computer-assisted
computations. More specifically, it had to be proved that all ~52k coefficients of an explicit family of Bernstein approximation polynomials are positive. These coefficients are explicit rational numbers so that these computations
can run in principle easily in the Lean kernel, without use of floating point numbers or interval arithmetic.

The formal verification of these computations is in `FiniteCertificate.lean`, which is 
an unusually large file at ~515k lines.
On the author's machine the build took ~2.5h, with observed peak memory usage of ~40 GB.

### Autoformalization

While the main theorem statements and definitions were human-generated, all proofs were generated using Codex/gpt-6-astra-medium with a custom autoformalization skill (see `.codex` folder). Further instructions and other automation-related files are contained in the `automation` folder.

This repository keeps human-generated code separate from machine-generated code.
All machine-generated Lean code is contained in the [Auto subfolder](WeakHellinger/Auto) and lives in the `Auto` namespace in Lean.

