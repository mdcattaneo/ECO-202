# Wooldridge empirical data library

[Course home](../../..) · [Course assets](../..) · [Class guide index](../../../classes/)

This library contains four real historical datasets. The recurring ECO 202 empirical spine uses three of them—`wage1`, `bwght`, and `jtrain2`—while `gpa1` is retained as an optional extension. They are software-neutral CSV exports from the `wooldridge` R package, the official R data package for Jeffrey M. Wooldridge's *Introductory Econometrics: A Modern Approach*.

The official ECO 202 textbook remains the one listed in the syllabus. Wooldridge's collection supplies common empirical settings; students are not required to purchase that textbook or to use R.

## Files

| File | Rows × columns | Observational unit | Main variables and course role |
|---|---:|---|---|
| `wage1.csv` | 526 × 24 | A worker in the 1976 Current Population Survey extract | Hourly earnings, education, potential experience, tenure, demographics, region, industry, and occupation; the main observational and repeated-sampling dataset |
| `bwght.csv` | 1,388 × 14 | A birth in a 1988 National Health Interview Survey extract | Birth weight, smoking during pregnancy, family income, parental education, birth order, and infant characteristics; distributions, confounding, and inference |
| `gpa1.csv` | 141 × 29 | A respondent to a Fall 1994 Michigan State University student survey | GPA, background, work, commuting, activities, missed lectures, and alcohol use; optional survey and base-rate extensions |
| `jtrain2.csv` | 445 × 19 | A participant in the National Supported Work Demonstration | Randomized training assignment, background characteristics, pre-program and post-program earnings, unemployment, and training duration; experimental and causal inference |

The complete variable definitions and original-source notes are available in the [`wooldridge` package manual](https://CRAN.R-project.org/web/packages/wooldridge/wooldridge.pdf). In R, `?wooldridge::wage1` is not the correct help syntax; load the package and use `?wage1`, or run `help("wage1", package = "wooldridge")`. Replace the dataset name as needed.

## Provenance and license

- Package: [`wooldridge`](https://CRAN.R-project.org/package=wooldridge)
- Exported from package version: `1.4-7`
- Exported for ECO 202: August 26, 2026
- Package author and maintainer: Justin M. Shea
- Textbook data author and compiler: Jeffrey M. Wooldridge
- Package license: [GPL-3](LICENSE-GPL-3.txt)
- Reproduction script: [`export-wooldridge-data.R`](export-wooldridge-data.R)
- File digests: [`SHA256SUMS`](SHA256SUMS)

Each package help page gives the dataset's original source and any dataset-specific notes. Cite the underlying source when making a substantive empirical claim, not merely the R package. Retain this README and the attribution when redistributing these course copies.

## Important limitations

- These are historical data. The years belong in every substantive interpretation; the records should not be described as current.
- `wage1`, `bwght`, and `gpa1` are observational. Their associations do not by themselves identify causal effects.
- `gpa1` is a small local student survey, which makes selection and external validity central rather than incidental.
- `jtrain2` records randomized assignment to job training. A causal analysis must still distinguish assignment, participation, and training duration and consider attrition, missingness, outcome measurement, and external validity.
- Some derived variables are already present, including logs and squares. Inspect definitions before using them, and do not mistake a transformed variable for independently collected information.
- Blank CSV fields represent missing values. Software may import them differently, so check missingness explicitly before analysis.

## Reproducing the exports

With R and package version `1.4-7` installed, run from any directory:

```sh
Rscript path/to/export-wooldridge-data.R
```

The script writes the four CSV files beside itself, checks their expected dimensions and column names, and refuses to export from a different package version. Regeneration is a deliberate maintenance operation: rerun the course examples and update `SHA256SUMS` only after reviewing any data change.

## Minimal software examples

R:

```r
wage1 <- read.csv("assets/data/wooldridge/wage1.csv")
summary(wage1$wage)
```

Python:

```python
import pandas as pd

wage1 = pd.read_csv("assets/data/wooldridge/wage1.csv")
print(wage1["wage"].describe())
```

Stata:

```stata
import delimited "assets/data/wooldridge/wage1.csv", clear
summarize wage
```

Paths in these minimal examples are relative to the root of the student repository. Each class that uses a dataset also includes a byte-identical copy under its own `data/` subfolder. The introductory class scripts assume that the class folder is the working directory and use a direct path such as `data/wage1.csv`.
