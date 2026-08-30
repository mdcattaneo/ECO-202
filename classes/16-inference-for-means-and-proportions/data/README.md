# Class 16 data: `bwght`

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

`bwght.csv` is a class-local, software-neutral copy of the `bwght` dataset distributed with version 1.4-7 of the `wooldridge` R package. It contains 1,388 birth records and 14 variables from a 1988 National Health Interview Survey extract. Class 16 uses `bwght`, birth weight in ounces, and `cigs`, cigarettes smoked per day during pregnancy, to compare means and low-birth-weight proportions across recorded smoking groups.

The file is historical and observational. Smoking was recorded, not randomly assigned. The displayed comparisons do not by themselves identify a causal effect, and the file should not be described as a current population of births. Selection, measurement, confounding, missingness, and external validity remain substantive issues even when an estimated standard error is small.

The Class 16 calculations deliberately treat the extracted rows as independent under a simplified teaching model. That assumption is not a documented property of the CSV and does not reconstruct the original NHIS complex multistage survey design. A population analysis using the original design would need the relevant strata, clusters, weights, and design-aware uncertainty method; see the [CDC description of the 1985–1994 NHIS design](https://www.cdc.gov/nchs/data/series/sr_02/sr02_110.pdf).

Complete variable definitions and original-source notes are available in the [`wooldridge` package manual](https://CRAN.R-project.org/web/packages/wooldridge/wooldridge.pdf). The course-level canonical copy is [`../../../assets/data/wooldridge/bwght.csv`](../../../assets/data/wooldridge/bwght.csv).

This local copy is byte-for-byte identical to the canonical course copy. SHA-256: `41cc551fffdcbd164c8edbcd084267652f9458089a014e19228cc08bc7a5f91a`.

Package author and maintainer: Justin M. Shea. Textbook data author and compiler: Jeffrey M. Wooldridge. Package license: [GPL-3](LICENSE-GPL-3.txt).
