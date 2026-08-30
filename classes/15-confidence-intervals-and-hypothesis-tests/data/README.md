# Class 15 data: `jtrain2`

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

This folder makes the Class 15 empirical demonstration self-contained.

- `jtrain2.csv` is a byte-identical class-local copy of the course's canonical Wooldridge `jtrain2` export.
- `LICENSE-GPL-3.txt` reproduces the package license distributed with the canonical course copy.

The file contains 445 participants from the National Supported Work Demonstration. The variable `train` equals one for assignment to job training and zero for assignment to control. It records randomized assignment rather than training receipt; `mostrn` separately records months in training. The variable `re78` records 1978 real earnings in thousands of 1982 dollars.

Class 15 uses the difference in assigned-group mean `re78` as an intention-to-treat estimate and constructs a large-sample Normal-reference confidence interval. Random assignment can support an internal average causal comparison when the documented design was implemented and the relevant assumptions hold. It does not make the participants a random sample from all workers, identify every participant's individual effect, establish the effect of training received, or remove concerns about compliance, attrition, interference, outcome measurement, implementation, and external validity.

The data were exported without modification from version 1.4-7 of the [`wooldridge` R package](https://cran.r-project.org/package=wooldridge), which distributes its data under GPL-3. The [package manual entry](https://rdrr.io/cran/wooldridge/man/jtrain2.html) cites Robert J. LaLonde (1986), “Evaluating the Econometric Evaluations of Training Programs with Experimental Data,” *American Economic Review* 76(4): 604–620.

The course-level canonical copy is [`../../../assets/data/wooldridge/jtrain2.csv`](../../../assets/data/wooldridge/jtrain2.csv). On August 30, 2026, both CSV files had SHA-256 checksum `4a44d97873645936eeb00caf2f5e9d4eadb02c3ea05358e3f069aa739543e41a`; the local and canonical license files were also byte-identical.
