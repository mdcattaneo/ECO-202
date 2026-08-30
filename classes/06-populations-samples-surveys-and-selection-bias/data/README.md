# Class 6 data

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

`wage1.csv` is a local, software-neutral copy of the `wage1` dataset distributed with version 1.4-7 of the `wooldridge` R package. It contains 526 worker records and 24 variables from a 1976 Current Population Survey extract. Class 6 uses the file to distinguish a description of observed records from a claim about a target population and to demonstrate, with an explicitly constructed frame, how selection can change a sample summary.

The CSV identifies the included records and variables but does not by itself provide all sampling-frame, selection-probability, weighting, nonresponse, or fieldwork information needed to justify a broader population claim. The class's metropolitan-only frame is a teaching construction applied after the data were collected; it is not a claim about how the original CPS extract was sampled. Complete variable definitions and original-source notes are available in the [`wooldridge` package manual](https://CRAN.R-project.org/web/packages/wooldridge/wooldridge.pdf).

The data are historical and observational. They do not describe the current U.S. labor market, and associations or selection differences in this file are not automatically causal.

This copy is byte-for-byte identical to the canonical course copy under `assets/data/wooldridge/`. SHA-256: `41b9dba42e550ab35c27e2be5bcc2d3b90c81a75f03cfd170d374a99a2cd658c`.

Package author and maintainer: Justin M. Shea. Textbook data author and compiler: Jeffrey M. Wooldridge. Package license: [GPL-3](LICENSE-GPL-3.txt).
