# ECO 202 Practice 4: Scatterplots, Correlation, and Descriptive Regression

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 4: Scatterplots, Correlation, and Descriptive Regression](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 4 and before Class 5

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Use it to test whether you can move from paired data to a defensible linear description while recognizing what the line conceals and what it cannot establish.

<!-- Source lineage: Scope calibrated against Econ202-UlrichMueller/LectureNotes.tex, lines 524--716; Spring 2026 PS1--PS2; and selected early first-midterm material used only for level and misconception calibration. The problems, empirical audit, wording, and organization are newly authored or explicitly extend the current Fall 2026 Class 4 guide; no protected exercise or reserved exam question is reproduced. -->

## Purpose and recommended route

This module practices a complete bivariate workflow: identify paired variables and their context, read the scatterplot, calculate correlation and a least-squares line, interpret fitted values and residuals, diagnose influence and extrapolation, use $r^2$ precisely, and separate description or prediction from causality.

The recommended route is Problems 1–5 and should take about 55–70 minutes. Brief bullet responses are sufficient unless a problem requests a calculation or short report. Begin Problems 1, 2, and 5 without AI, software, answer checks, or worked solutions. Problem 4 contains an optional AI comparison and a complete non-AI route; the external AI comparison and worked-solution study take additional time.

| Stage | Suggested time | Work |
|---|---:|---|
| Read the graph and audit properties | 8–10 minutes | Problem 1 |
| Fit the five-worker line by hand | 18–22 minutes | Problem 2 |
| Transfer to the historical wage data | 10–12 minutes | Problem 3 |
| Audit a regression report | 9–12 minutes | Problem 4 |
| Finish without assistance | 10–14 minutes | Problem 5 |

## What you must be able to do independently

After completing this practice, you should be able to:

- identify paired observational units, explanatory and response variables, units, source, period, and the population actually represented;
- describe a scatterplot using direction, form, strength, clusters, unusual observations, and context before calculating a coefficient;
- calculate and interpret correlation and use its symmetry, bounds, unitlessness, linear-focus, transformation behavior, and nonresistance correctly;
- state the least-squares objective and calculate the slope, intercept, fitted values, and residuals for a line with an intercept;
- verify that the fitted line passes through $(\bar x,\bar y)$ and that its residuals sum to zero;
- distinguish a vertical outlier, a high-leverage point, and an influential observation, and explain why influence requires a comparison of fits;
- recognize extrapolation and explain why a large correlation or $r^2$ does not make it reliable;
- interpret $r^2$ as a sample linear-variation decomposition rather than causation, individual-level explanation, model probability, or guaranteed predictive accuracy; and
- distinguish a sample description, a prediction, a population generalization, and a causal effect.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Read the relationship before summarizing it](#problem-1) | Diagnose the Class 4 graph and audit correlation properties. | Unaided retrieval + Class 3 spiral |
| [2. Reconstruct the five-worker fit](#problem-2) | Calculate correlation, the least-squares line, residuals, and the coefficient of determination ($r^2$). | Unaided hand calculation |
| [3. Interpret the historical education–wage fit](#problem-3) | Verify and explain the empirical `wage1` output. | Empirical transfer |
| [4. Audit a polished but invalid regression report](#problem-4) | Repair claims about causality, the coefficient of determination ($r^2$), influence, the intercept, and extrapolation. | Non-AI route or AI comparison |
| [5. Transfer without assistance](#problem-5) | Build and diagnose a county-level fitted line from summary statistics. | Final unaided transfer |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Read the relationship before summarizing it

**Class-guide connection:** [Section 1: Relationships begin with a graph](../#1-relationships-begin-with-a-graph), [Section 2: Correlation as standardized association](../#2-correlation-as-standardized-association), [Section 4: Fitted values, residuals, and diagnostics](../#4-fitted-values-residuals-and-diagnostics), [Class 3 Section 1: Linear transformations and units](../../03-density-curves-normal-distributions-and-standardization/#1-linear-transformations-and-units), and [Class 3 Section 2: Standardization and comparable position](../../03-density-curves-normal-distributions-and-standardization/#2-standardization-and-comparable-position)

Inspect the [Class 4 education–wage scatterplot and residual plot](../figures/education-wage-regression.png). The plots use 526 workers from a historical 1976 Current Population Survey extract. Completed education is measured in years, hourly wage is measured in 1976 dollars per hour, and the sample correlation is $r=0.4059$.

1. Identify the observational unit, explanatory variable, response variable, units, and historical scope.
2. Describe the scatterplot's direction, form, strength, visible stacks or clusters, and unusual observations. Then describe one feature of the residual plot that the correlation alone conceals.
3. Spiral back to Class 3 transformations. State what happens to $r$ if: (a) wage is converted from dollars to cents; (b) both variables are standardized; (c) education is replaced by $18-\mathrm{educ}$; and (d) the axes are swapped. Explain each answer from a correlation property rather than recomputing the data.
4. A worker recorded at an education value far from $\bar x$ may have high leverage. Explain why that fact alone does not establish influence and name the comparison that would assess influence.
5. Explain why using the fitted line to predict wage at 30 years of education would be extrapolation even if $r$ or $r^2$ were much larger.

<!-- Source lineage: Original graph-and-property audit using the current Class 4 figure and output. Transformation scope is calibrated against Mueller's correlation properties and early-exam level; the questions and organization are new. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Reconstruct the five-worker fit

**Class-guide connection:** [Section 2: Correlation as standardized association](../#2-correlation-as-standardized-association), [Section 3: Least-squares prediction](../#3-least-squares-prediction), and [Section 4: Fitted values, residuals, and diagnostics](../#4-fitted-values-residuals-and-diagnostics)

Use the five-worker teaching data developed in the Class 4 guide.

| Worker | Education ($x$, years) | Wage ($y$, dollars per hour) |
|---|---:|---:|
| A | 10 | 4 |
| B | 12 | 5 |
| C | 14 | 7 |
| D | 16 | 8 |
| E | 18 | 11 |

1. Calculate $\bar x$, $\bar y$, $s_x^2$, $s_y^2$, $s_{xy}$, and $r$. Show the paired deviations or an equivalent table.
2. State the least-squares objective. Use $b_1=s_{xy}/s_x^2$ and $b_0=\bar y-b_1\bar x$ to calculate the fitted line $\widehat y=b_0+b_1x$.
3. Calculate every fitted value and residual $e_i=y_i-\widehat y_i$. Verify that the residuals sum to zero and that the line passes through $(\bar x,\bar y)$.
4. Calculate the residual sum of squares, the descriptive residual variance $s_e^2$ using denominator $n-1$, and $r^2$. Verify $s_e^2=(1-r^2)s_y^2$.
5. Interpret the slope and the residual for Worker D with units. Explain why neither is a causal effect.
6. Explain why the intercept is not a credible wage for a worker with zero years of education and why regressing education on wage would not simply reverse this fitted line.

<!-- Source lineage: This problem deliberately reuses the current course-created five-worker board example so students reconstruct the complete common-core calculation. Its scope preserves Mueller's formulas, residual properties, and variance decomposition without copying a legacy exercise or exam question. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Interpret the historical education–wage fit

**Class-guide connection:** [Section 4: Fitted values, residuals, and diagnostics](../#4-fitted-values-residuals-and-diagnostics) and [Section 5: A historical education–wage relationship](../#5-a-historical-educationwage-relationship)

The Class 4 script uses the 526 workers with recorded education and wage in the local `wage1.csv`. The following output is independently verified.

| Quantity | Verified result |
|---|---:|
| Mean education ($\bar x$) | 12.562738 years |
| Education standard deviation ($s_x$) | 2.769022 years |
| Mean wage ($\bar y$) | 5.896103 dollars per hour |
| Wage standard deviation ($s_y$) | 3.693086 dollars per hour |
| Correlation ($r$) | 0.4059033 |
| Full-data fitted line | $\widehat{\mathrm{wage}}=-0.9048516120+0.5413592547\mkern3mu\mathrm{educ}$ |
| $r^2$ | 0.1647575 |
| Full-data fitted wage at 12 years | 5.591459444 dollars per hour |

The rounded summary statistics reproduce the coefficients to four decimal places. The separately reported full-data coefficients should be used when checking the displayed fitted value and residual so intermediate rounding does not create a false discrepancy.

1. Verify the slope from $b_1=r(s_y/s_x)$ and the intercept from $b_0=\bar y-b_1\bar x$ to four decimal places. Carry the calculated slope rather than replacing it prematurely with a four-decimal approximation.
2. Use the full-data coefficients to reconstruct the fitted wage at 12 years. A recorded worker with 12 years of education earns 10 dollars per hour; calculate that worker's residual and interpret its sign and units.
3. Interpret $r$, $b_1$, and $r^2$ separately. Keep the observational unit, historical sample, and units visible.
4. Use the linked graph to identify one feature the fitted line represents and two features the line or $r^2$ conceals. At least one answer should refer to the residual plot.
5. Write a two-sentence report that distinguishes the sample description from population, current-period, predictive, and causal claims that the output alone does not establish.

You can complete the problem entirely from the supplied output and figure. For an optional computational check, open the [Class 4 folder](../), run [`class-04-wage-regression.R`](../class-04-wage-regression.R) in R or translate its stated calculations into another suitable environment, and compare the result. Running R or memorizing its syntax is not part of the independent exam target.

<!-- Source lineage: Original empirical transfer using only the documented course-distributed wage1 CSV, current Class 4 script, and reproducible figure; no new dataset, code, or protected exercise is introduced. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Audit a polished but invalid regression report

**Class-guide connection:** [Section 4: Fitted values, residuals, and diagnostics](../#4-fitted-values-residuals-and-diagnostics), [Section 5: A historical education–wage relationship](../#5-a-historical-educationwage-relationship), and [Section 6: From regression output to a defensible claim](../#6-from-regression-output-to-a-defensible-claim)

An analyst receives the verified Class 4 output and writes:

> The regression proves that another year of education raises every worker's wage by exactly 54 cents per hour. Since $r^2=0.1648$, education causes 16.48 percent of each worker's wage and the model is 16.48 percent accurate. The negative intercept proves that the entire line is useless. At 30 years of education, the fitted wage is 15.34 dollars per hour, and that forecast is reliable because the correlation is positive. Every point with a large residual is influential and should be deleted.

First work without assistance.

1. Separate the report into claims and classify each as arithmetically supported, descriptively defensible after qualification, or unsupported.
2. Check the fitted value at 30 years. Explain why correct arithmetic does not make the resulting prediction reliable.
3. Repair the slope and $r^2$ interpretations, including the units and historical sample. Separate description, prediction, population generalization, and causality.
4. Explain the difference among a large residual, high leverage, and influence. State what evidence would be needed before deleting an observation.
5. Rewrite the report in no more than three sentences.

Then choose one of the following routes.

**AI comparison route:** Copy the prompt below into any AI system, compare its audit with yours, and identify one correction it handled well and one claim or diagnostic that still required your judgment.

```text
I am auditing a descriptive regression for 526 workers in a historical 1976
Current Population Survey extract. Hourly wage is measured in 1976 dollars per
hour and completed education is measured in years. The supplied output is

  fitted wage = -0.9049 + 0.5414 education,
  correlation = 0.4059, r-squared = 0.1648,
  observed education range = 0 to 18 years.

Audit this report claim by claim:
"The regression proves that another year of education raises every worker's
wage by exactly 54 cents per hour. Since r-squared is 0.1648, education causes
16.48 percent of each worker's wage and the model is 16.48 percent accurate.
The negative intercept proves that the entire line is useless. At 30 years of
education, the fitted wage is 15.34 dollars per hour, and that forecast is
reliable because the correlation is positive. Every point with a large
residual is influential and should be deleted."

Check the arithmetic separately from the interpretation. Distinguish a large
residual, high leverage, and influence; explain extrapolation; interpret the
slope and r-squared with units and sample scope; reject unsupported population
or causal claims; and give a defensible three-sentence revision. Do not invent
sampling, design, diagnostic, or deletion information.
```

**Complete non-AI route:** Check $-0.9049+0.5414(30)$; compare 30 with the observed education range; replace “raises every worker” with a fitted sample-association statement; define $r^2$ through fitted and residual sample variation; interpret the intercept only at $x=0$ and inspect whether that region is substantively useful; distinguish vertical distance from horizontal leverage and change in the fitted line; and require source or fit-comparison evidence before deletion.

<!-- Source lineage: Newly authored flawed report and audit prompt built only from the verified Class 4 output. It targets common misreadings found in the inherited scope without adapting a protected exercise or reserved question. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Transfer without assistance

**Class-guide connection:** [Section 1: Relationships begin with a graph](../#1-relationships-begin-with-a-graph), [Section 3: Least-squares prediction](../#3-least-squares-prediction), and [Section 4: Fitted values, residuals, and diagnostics](../#4-fitted-values-residuals-and-diagnostics)

Do not use AI, software, answer checks, or worked solutions until you have completed this problem.

For a set of counties, let $x$ be median household income measured in tens of thousands of dollars and let $y$ be the percentage of households reporting food insecurity. The descriptive summaries are

$$
\bar x=6,
\qquad
s_x=1.5,
\qquad
\bar y=12,
\qquad
s_y=4,
\qquad
r=-0.60,
\qquad
3\leq x\leq9.
$$

1. Identify the observational unit, variables, and units. Describe the direction and linear strength suggested by $r$ without claiming that a scatterplot has already been inspected.
2. Calculate the least-squares line predicting $y$ from $x$, and find the fitted food-insecurity percentage at $x=7$.
3. A county with $x=7$ has observed food insecurity of 14 percent. Calculate and interpret its residual.
4. Calculate and interpret $r^2$. State two features of the county data that remain unknown from the summaries.
5. Suppose income is reexpressed in dollars rather than tens of thousands of dollars. State the new slope per dollar and explain what happens to the correlation.
6. Calculate the fitted value at $x=20$. Use the observed $x$ range to explain why the result is an extrapolation warning rather than a meaningful negative percentage, and explain why the original negative association does not establish a causal effect of income.

<!-- Source lineage: This final transfer expands the current course-created Class 4 county-summary practice with residuals, unit conversion, r-squared, extrapolation, and the causal boundary. The setting is a teaching summary, not an empirical dataset or protected legacy exercise. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the recommended route. They confirm targets and main conclusions, not the reasoning that an exam answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

The graph shows a positive but dispersed historical sample association, integer-valued education stacks, and increasing residual spread at higher education values. Positive rescaling and standardization leave $r=0.4059$ unchanged; replacing education by $18-\mathrm{educ}$ changes its sign; swapping axes leaves $r$ unchanged. High leverage does not establish influence, and 30 years is outside the observed 0–18 range.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

$\bar x=14$, $\bar y=7$, $s_x^2=10$, $s_y^2=7.5$, $s_{xy}=8.5$, and $r\approx0.9815$. The line is $\widehat y=-4.9+0.85x$; fitted values are $3.6,5.3,7.0,8.7,10.4$ and residuals are $0.4,-0.3,0,-0.7,0.6$. The residual sum of squares is $1.10$, $s_e^2=0.275$, and $r^2\approx0.9633$.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

$0.4059033(3.693086/2.769022)\approx0.541359294$ and $5.896103-0.541359294(12.562738)\approx-0.904851973$, which agree with the full-data coefficients to four decimal places. Using the supplied full-data line gives a fitted wage of 5.591459444 at 12 years and a residual of 4.408540556 for a 10-dollar wage. Here $r^2\approx0.1647575$ means that about 16.48 percent of the sample wage variation is represented by the fitted linear values; it is not a causal or individual-level percentage.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

The extrapolated arithmetic gives $-0.9049+0.5414(30)=15.3371$, but 30 lies beyond the observed range. The slope is a descriptive fitted association, $r^2$ is a sample variance decomposition, a negative boundary intercept does not invalidate the complete line, a large residual is not automatically influential, and no diagnostic alone authorizes automatic deletion.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

$b_1=-1.6$ percentage points per 10,000 dollars, $b_0=21.6$ percent, $\widehat y(7)=10.4$ percent, and the residual is $14-10.4=3.6$ percentage points. Here $r^2=0.36$. Reexpressing income in dollars gives slope $-0.00016$ percentage points per dollar and leaves $r=-0.60$ unchanged. The observed range is $3\leq x\leq9$, so $x=20$ is extrapolation; its fitted value of $-10.4$ percent is not a defensible forecast.

</details>

## Worked solutions

Attempt each problem and inspect its compact check before opening the [complete worked solutions](solutions/). The solution guide develops the target, calculation, interpretation, verification, limitations, and a nearby transfer for every problem; use it to reconstruct the method rather than copy a final number.

## Personal learning record

Keep this record in your own notes; do not submit it or add it to the course repository.

- **Independent:** Which graphs, calculations, and interpretations did you complete without hints, answer checks, software, or generated output?
- **Prompted:** Which parts did you complete after a cue, checklist, or partial hint?
- **Supplied:** Which formulas, arithmetic, diagnoses, or wording came from software, AI, an answer check, or the worked solutions?
- **Remaining:** Which concept or calculation could you not yet reproduce on a blank page?
- **Transfer:** Did you complete Problem 5 unaided, and did you detect the impossible extrapolated percentage before consulting a check?
- **Next attempt:** Choose one remaining calculation and one interpretation and redo both unaided within the next two days.
