# Class 14 data: `jtrain2`

[← Class guide](../) · [Course data library](../../../assets/data/wooldridge/)

## File

- `jtrain2.csv` is the class-local copy of the course's canonical Wooldridge `jtrain2` export.
- [`LICENSE-GPL-3.txt`](LICENSE-GPL-3.txt) is the license distributed with the R package source.

## Source and license

The data were exported without modification from version 1.4-7 of the [`wooldridge` R package](https://cran.r-project.org/package=wooldridge), which identifies the dataset as `jtrain2` and distributes its data under GPL-3. The [package manual entry](https://rdrr.io/cran/wooldridge/man/jtrain2.html) cites Robert J. LaLonde (1986), “Evaluating the Econometric Evaluations of Training Programs with Experimental Data,” *American Economic Review* 76(4): 604–620; the [Princeton Industrial Relations Section record](https://irs.princeton.edu/publications/working-papers/evaluating-econometric-evaluations-training-programs-experimental-data) documents the underlying paper.

The course-level canonical copy is [`../../../assets/data/wooldridge/jtrain2.csv`](../../../assets/data/wooldridge/jtrain2.csv). This local copy lets the complete Class 14 folder run independently. On August 30, 2026, both CSV files had SHA-256 checksum `4a44d97873645936eeb00caf2f5e9d4eadb02c3ea05358e3f069aa739543e41a`; the local and canonical license files were also byte-identical.

## Variables used in Class 14

| Variable | Meaning in the package documentation | Unit or coding used here |
|---|---|---|
| `train` | Assigned to job training | `1` training assignment; `0` control assignment |
| `re78` | Real earnings in 1978 | Thousands of 1982 dollars |

The CSV contains other variables that are not required for the Class 14 calculation. Consult the package documentation before using them.

## Interpretation and limitations

The file records a historical randomized job-training experiment. Class 14 uses the difference in mean `re78` between assignment groups as an intention-to-treat estimate and uses a large-sample Normal reference approximation for teaching hypothesis testing. Random assignment can support an internal causal comparison when the documented design was implemented and the relevant assumptions hold. It does not make the participants a random sample from all workers, establish effects for current programs or populations, or remove concerns about compliance, attrition, interference, outcome measurement, and implementation. The approximate standard error and p-value do not replace a design audit.
