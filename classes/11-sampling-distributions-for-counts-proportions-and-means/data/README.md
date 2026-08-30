# Class 11 data

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

`wage1.csv` is a local, software-neutral copy of the `wage1` dataset distributed with version 1.4-7 of the `wooldridge` R package. It contains 526 records and 24 variables from a 1976 Current Population Survey extract. Class 11 treats the 526 rows explicitly as a fixed teaching population and repeatedly selects rows independently and uniformly with replacement.

The course-created sampling mechanism permits the same fixed-file row to appear more than once in a sample. It makes the sampled wages and wage-threshold indicators independent draws from the fixed-file distribution, which supplies the exact sampling-distribution calculations in the guide. It is not the original CPS sampling design, does not make the extract representative of current workers, and supports no causal claim.

The class script uses `wage`, documented as average hourly earnings, and defines the indicator for a recorded wage of at least 6 dollars per hour. These variables contain no missing values in the distributed file. Complete variable definitions and original-source notes appear in the [`wooldridge` package manual](https://CRAN.R-project.org/web/packages/wooldridge/wooldridge.pdf).

This copy is byte-for-byte identical to the [canonical course copy](../../../assets/data/wooldridge/wage1.csv). SHA-256: `41b9dba42e550ab35c27e2be5bcc2d3b90c81a75f03cfd170d374a99a2cd658c`.

Package author and maintainer: Justin M. Shea. Textbook data author and compiler: Jeffrey M. Wooldridge. Package license: [GPL-3](LICENSE-GPL-3.txt).
