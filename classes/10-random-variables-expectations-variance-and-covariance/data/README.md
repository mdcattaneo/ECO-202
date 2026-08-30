# Class 10 data

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

`wage1.csv` is a local, software-neutral copy of the `wage1` dataset distributed with version 1.4-7 of the `wooldridge` R package. It contains 526 workers and 24 variables from a 1976 Current Population Survey extract. Class 10 treats the 526 rows explicitly as a fixed teaching population and selects one row uniformly to define hourly wage, education, and wage-threshold indicators as random variables.

The row-selection mechanism is course-created: each recorded row receives probability $1/526$. It is not the original CPS sampling design, does not make the extract representative of current workers, and supports no causal claim about education and wages. Complete variable definitions and original-source notes are available in the [`wooldridge` package manual](https://CRAN.R-project.org/web/packages/wooldridge/wooldridge.pdf).

This copy is byte-for-byte identical to the canonical course copy under `assets/data/wooldridge/`. SHA-256: `41b9dba42e550ab35c27e2be5bcc2d3b90c81a75f03cfd170d374a99a2cd658c`.

Package author and maintainer: Justin M. Shea. Textbook data author and compiler: Jeffrey M. Wooldridge. Package license: [GPL-3](LICENSE-GPL-3.txt).
