# Class 18 data: `wage1` and `jtrain2`

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

This folder makes the two Class 18 specification comparisons self-contained.

- `wage1.csv` is a byte-identical class-local copy of the course's canonical Wooldridge `wage1` export.
- `jtrain2.csv` is a byte-identical class-local copy of the course's canonical Wooldridge `jtrain2` export.
- `LICENSE-GPL-3.txt` reproduces the package license distributed with the canonical course copies.

The historical `wage1` data contain 526 worker records from a 1976 Current Population Survey extract. Class 18 compares the fitted education coefficient in a simple wage regression with the coefficient after recorded experience and tenure are added. This observational comparison does not identify a causal return to education or describe the current labor market.

The `jtrain2` data contain 445 participants from the National Supported Work Demonstration. The variable `train` records randomized assignment to job training or control, `re78` records 1978 real earnings in thousands of 1982 dollars, and `re74` and `re75` are pre-assignment earnings measures. Class 18 compares the unadjusted assignment coefficient with one adjusted for those two pre-assignment variables. Random assignment, not regression adjustment, supports the internal intention-to-treat argument when the documented design and relevant assumptions hold.

Both datasets were exported without modification from version 1.4-7 of the [`wooldridge` R package](https://cran.r-project.org/package=wooldridge), which distributes its data under GPL-3. Complete variable definitions and original-source notes appear in the [package manual](https://CRAN.R-project.org/web/packages/wooldridge/wooldridge.pdf). The `jtrain2` entry cites Robert J. LaLonde (1986), “Evaluating the Econometric Evaluations of Training Programs with Experimental Data,” *American Economic Review* 76(4): 604–620.

The course-level canonical files are [`../../../assets/data/wooldridge/wage1.csv`](../../../assets/data/wooldridge/wage1.csv) and [`../../../assets/data/wooldridge/jtrain2.csv`](../../../assets/data/wooldridge/jtrain2.csv). On August 30, 2026, the `wage1` SHA-256 checksum was `41b9dba42e550ab35c27e2be5bcc2d3b90c81a75f03cfd170d374a99a2cd658c`, and the `jtrain2` checksum was `4a44d97873645936eeb00caf2f5e9d4eadb02c3ea05358e3f069aa739543e41a`. The local and canonical license files were also byte-identical.
