# `jtrain2` data used in Class 7

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

This folder makes Class 7 self-contained. [`jtrain2.csv`](jtrain2.csv) is a byte-identical copy of the canonical course file at `github/assets/data/wooldridge/jtrain2.csv`.

The file contains 445 participants from the National Supported Work Demonstration. The `wooldridge` package documentation defines `train` as one when a participant was **assigned to job training**. It is an assignment indicator rather than a measure of training received; `mostrn` separately records months in training. The variables `re74`, `re75`, and `re78` record real earnings in 1974, 1975, and 1978 in thousands of 1982 dollars. The indicators `unem74`, `unem75`, and `unem78` equal one when the participant was unemployed throughout the indicated year.

## Provenance

- R package: [`wooldridge`](https://CRAN.R-project.org/package=wooldridge), version 1.4-7.
- Package documentation: [`jtrain2` manual entry](https://rdrr.io/cran/wooldridge/man/jtrain2.html).
- Underlying source: Robert J. LaLonde, “Evaluating the Econometric Evaluations of Training Programs with Experimental Data,” *American Economic Review* 76(4), 1986, 604–620; [Princeton record](https://irs.princeton.edu/publications/working-papers/evaluating-econometric-evaluations-training-programs-experimental-data).
- Canonical course-data documentation: [`github/assets/data/wooldridge/README.md`](../../../assets/data/wooldridge/README.md).
- License for the distributed package data: [GPL-3](LICENSE-GPL-3.txt).

## Interpretation and limitations

The random assignment supports intention-to-treat comparisons by assigned group for the experiment. It does not by itself identify the effect of training received or months attended. The CSV alone cannot establish complete compliance, absence of attrition, lack of interference, perfect measurement, a single treatment version, or applicability to a broader or current population. These historical records should not be described as current U.S. labor-market data.
