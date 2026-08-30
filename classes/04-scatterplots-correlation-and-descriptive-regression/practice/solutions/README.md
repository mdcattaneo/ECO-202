# ECO 202 Practice 4: Scatterplots, Correlation, and Descriptive Regression — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice:** [Practice 4: Scatterplots, Correlation, and Descriptive Regression](../)  
**Class guide:** [Class 4: Scatterplots, Correlation, and Descriptive Regression](../../)

[← Back to Practice 4](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> These solutions are for study after a serious attempt. Practice 4 is ungraded and not submitted. Reconstruct each result yourself, compare your reasoning with the explanation here, and then try the nearby transfer before treating the problem as mastered.

<!-- Source lineage: These solutions independently verify the newly authored Practice 4 problems using the current Fall 2026 Class 4 guide, local wage1 assets, and course-created teaching summaries. Inherited Spring 2026 materials were used only to calibrate scope and common misconceptions; no protected solution or reserved exam answer is reproduced. -->

## How to use this guide

For each problem, first inspect the target and result without reading the derivation. Then reproduce the calculation or diagnosis on a blank page, read the verification and limitations, and complete the nearby transfer before moving on.

## Solution map

| Problem | Durable target | Solution |
|---|---|---|
| 1 | Diagnose a graph and use correlation properties. | [Read the relationship](#solution-1) |
| 2 | Reconstruct a least-squares fit by hand. | [Fit the five-worker line](#solution-2) |
| 3 | Interpret the historical `wage1` fit. | [Audit the empirical output](#solution-3) |
| 4 | Repair an invalid regression report. | [Separate arithmetic from claims](#solution-4) |
| 5 | Transfer the complete workflow to county summaries. | [Finish the county analysis](#solution-5) |

<a id="solution-1"></a>

## Solution 1. Read the relationship before summarizing it

**Problem:** [Back to the exact Problem 1 prompt](../#problem-1)  
**Class-guide connections:** [Class 3, Section 1: Linear transformations and units](../../../03-density-curves-normal-distributions-and-standardization/#1-linear-transformations-and-units), [Class 3, Section 2: Standardization and comparable position](../../../03-density-curves-normal-distributions-and-standardization/#2-standardization-and-comparable-position), [Class 4, Section 1: Relationships begin with a graph](../../#1-relationships-begin-with-a-graph), [Class 4, Section 2: Correlation as standardized association](../../#2-correlation-as-standardized-association), and [Class 4, Section 4: Fitted values, residuals, and diagnostics](../../#4-fitted-values-residuals-and-diagnostics)

### Target and result

The observational unit is one sampled worker. The plot gives a moderate positive linear association between education and wage in this historical sample, but it also shows substantial vertical variation and features that one coefficient cannot retain. Positive rescaling, standardization, and swapping axes leave correlation unchanged; reflecting one variable changes its sign.

### Graph diagnosis

- **Variables and units:** The explanatory variable is completed education in years, and the response variable is hourly wage in 1976 dollars per hour.
- **Scope:** The 526 observations come from the documented 1976 Current Population Survey extract. The graph does not by itself represent current workers or establish how the extract supports population generalization.
- **Direction and form:** Higher education tends to be paired with higher wage, and a positive linear trend is visible.
- **Strength:** The relationship is dispersed rather than tight, consistent with the moderate correlation $r=0.4059$.
- **Stacks and unusual observations:** Education is recorded in whole years, so workers form vertical stacks. Several wages lie far above the fitted line.
- **Residual feature:** Residual spread appears larger at higher education values. Correlation records standardized linear direction and strength, not this changing spread or the individual vertical departures.

### Transformation audit

1. Converting wage from dollars to cents multiplies wage by the positive constant 100. Correlation is unitless and unchanged by positive linear rescaling, so $r=0.4059$.
2. Standardizing both variables subtracts a mean and divides by a positive standard deviation. Shifts and positive rescalings do not change correlation, so $r=0.4059$.
3. Replacing education by $18-\mathrm{educ}$ multiplies its centered values by $-1$. The sign reverses and the magnitude remains the same, so the new correlation is $-0.4059$.
4. Swapping the axes swaps the two factors in every cross-product. Correlation is symmetric, so it remains $0.4059$.

The final property does not make the two regressions interchangeable: predicting wage from education minimizes vertical wage residuals, whereas predicting education from wage minimizes residuals measured in education years.

### Leverage, influence, and extrapolation

Leverage concerns how unusual an observation's $x$ value is. Influence concerns how much the fitted result changes because of that observation. A far-from-average education value is therefore a candidate for influence, but influence must be assessed by refitting without the observation and comparing slopes, intercepts, fitted values, or another declared diagnostic.

Thirty years lies beyond the observed education range of 0–18 years. A calculation there extends the fitted linear pattern to an unsupported region; neither a larger correlation nor a larger $r^2$ supplies observations in that region or guarantees that the relationship stays linear.

### Verification and limitation

Each transformation conclusion follows from the centered cross-product definition of correlation. The graph remains indispensable because the same value of $r$ can accompany different shapes, clusters, outliers, and patterns of residual spread.

### Nearby transfer

Before opening the check, let $x^\star=x-\bar x$ and $y^\star=100y$. Determine the new correlation, slope, and intercept, and explain what centering and rescaling changed.

<details>
<summary>Reveal the transfer check</summary>

Let $x^\star=x-\bar x$ and $y^\star=100y$. Correlation remains $0.4059$. The fitted slope becomes $100(0.5414)=54.14$ cents per hour per education year, and the intercept is the fitted wage at mean education, approximately $100\bar y=589.61$ cents per hour. Centering changes the intercept's reference point but not the slope; for any fixed definition of the explanatory variable, converting the response to cents multiplies both coefficients by 100.

</details>

[Back to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Reconstruct the five-worker fit

**Problem:** [Back to the exact Problem 2 prompt](../#problem-2)  
**Class-guide connections:** [Section 2: Correlation as standardized association](../../#2-correlation-as-standardized-association), [Section 3: Least-squares prediction](../../#3-least-squares-prediction), and [Section 4: Fitted values, residuals, and diagnostics](../../#4-fitted-values-residuals-and-diagnostics)

### Target and result

The complete fit is

$$
\widehat y=-4.9+0.85x,
\qquad
r\approx0.9815,
\qquad
r^2\approx0.9633.
$$

The residuals sum to zero, the line passes through $(14,7)$, and the residual-variance identity holds.

### Means, deviations, and summaries

The sample means are

$$
\bar x=\frac{10+12+14+16+18}{5}=14,
\qquad
\bar y=\frac{4+5+7+8+11}{5}=7.
$$

The calculation table is

| Worker | $x_i-\bar x$ | $y_i-\bar y$ | Product | $(x_i-\bar x)^2$ | $(y_i-\bar y)^2$ |
|---|---:|---:|---:|---:|---:|
| A | -4 | -3 | 12 | 16 | 9 |
| B | -2 | -2 | 4 | 4 | 4 |
| C | 0 | 0 | 0 | 0 | 0 |
| D | 2 | 1 | 2 | 4 | 1 |
| E | 4 | 4 | 16 | 16 | 16 |
| **Sum** | **0** | **0** | **34** | **40** | **30** |

Using denominator $n-1=4$ gives

$$
s_x^2=\frac{40}{4}=10,
\qquad
s_y^2=\frac{30}{4}=7.5,
\qquad
s_{xy}=\frac{34}{4}=8.5.
$$

Therefore,

$$
r=\frac{s_{xy}}{s_xs_y}
=\frac{8.5}{\sqrt{10}\sqrt{7.5}}
=\frac{8.5}{\sqrt{75}}
\approx0.9815.
$$

### Least squares and the fitted line

Least squares chooses $b_0$ and $b_1$ to minimize the sum of squared vertical residuals,

$$
\sum_{i=1}^{5}\left[y_i-(b_0+b_1x_i)\right]^2.
$$

The coefficients are

$$
b_1=\frac{s_{xy}}{s_x^2}=\frac{8.5}{10}=0.85,
\qquad
b_0=\bar y-b_1\bar x=7-0.85(14)=-4.9.
$$

Thus $\widehat y=-4.9+0.85x$.

### Fitted values and residuals

| Worker | $x_i$ | $y_i$ | $\widehat y_i=-4.9+0.85x_i$ | $e_i=y_i-\widehat y_i$ | $e_i^2$ |
|---|---:|---:|---:|---:|---:|
| A | 10 | 4 | 3.6 | 0.4 | 0.16 |
| B | 12 | 5 | 5.3 | -0.3 | 0.09 |
| C | 14 | 7 | 7.0 | 0.0 | 0.00 |
| D | 16 | 8 | 8.7 | -0.7 | 0.49 |
| E | 18 | 11 | 10.4 | 0.6 | 0.36 |
| **Sum** |  |  |  | **0.0** | **1.10** |

The residual sum is $0.4-0.3+0-0.7+0.6=0$. At $x=\bar x=14$, the fitted value is $-4.9+0.85(14)=7=\bar y$, so the line passes through the sample mean point.

### Residual variation and $r^2$

The residual sum of squares and descriptive residual variance are

$$
\mathrm{RSS}=1.10,
\qquad
s_e^2=\frac{\mathrm{RSS}}{n-1}=\frac{1.10}{4}=0.275.
$$

Also,

$$
r^2=\frac{s_{xy}^2}{s_x^2s_y^2}
=\frac{8.5^2}{10(7.5)}
=\frac{72.25}{75}
\approx0.9633.
$$

The requested identity checks:

$$
(1-r^2)s_y^2
=\left(1-\frac{72.25}{75}\right)(7.5)
=0.275
=s_e^2.
$$

### Interpretation and boundaries

The slope says that within these five workers, one additional education year is associated with an increase of 0.85 dollars per hour in fitted wage. Worker D's residual is $8-8.7=-0.7$ dollars per hour, so this worker earns 0.70 dollars per hour less than the line predicts at 16 years of education. Neither statement is causal because the five observations were not generated by a design that isolates an education intervention from other wage determinants.

The intercept is the fitted value at zero education, but zero lies far outside this five-worker range of 10–18 years. Its numerical value should not be treated as a credible wage at that unsupported input. Regressing education on wage instead gives slope $s_{xy}/s_y^2=8.5/7.5\approx1.1333$ education years per dollar per hour and minimizes residuals in education; it is not the reciprocal of $0.85$ and does not reverse the original fitted line.

### Verification and limitation

The zero residual sum, mean-point property, and residual-variance identity independently check the arithmetic. A near-one $r$ in five handpicked teaching observations still does not establish representativeness, stable prediction outside the observed range, or causality.

### Nearby transfer

Before opening the check, use the fitted line to predict wage at 15 education years. If the observed wage is 9 dollars per hour, calculate and interpret the residual, and classify the prediction as interpolation or extrapolation.

<details>
<summary>Reveal the transfer check</summary>

At $x=15$, $\widehat y=-4.9+0.85(15)=7.85$ dollars per hour. If the observed wage were 9 dollars per hour, the residual would be $9-7.85=1.15$ dollars per hour. This is interpolation because 15 lies inside the observed 10–18 range, although interpolation alone does not guarantee a precise individual prediction.

</details>

[Back to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Interpret the historical education–wage fit

**Problem:** [Back to the exact Problem 3 prompt](../#problem-3)  
**Class-guide connections:** [Section 4: Fitted values, residuals, and diagnostics](../../#4-fitted-values-residuals-and-diagnostics) and [Section 5: A historical education–wage relationship](../../#5-a-historical-educationwage-relationship)

### Target and result

The rounded summaries reproduce the fitted coefficients to four decimal places, while the supplied full-data coefficients reproduce the fitted value without a rounding conflict. At 12 years of education, the fitted wage is about 5.591459 dollars per hour, so a worker earning 10 dollars per hour has a positive residual of about 4.408541 dollars per hour. The output describes a moderate positive sample association, not an education effect.

### Reconstruct the coefficients

The slope identity gives

$$
b_1=r\frac{s_y}{s_x}
=0.4059033\left(\frac{3.693086}{2.769022}\right)
\approx0.541359294.
$$

Using that reconstructed slope with the rounded summaries gives

$$
b_0=\bar y-b_1\bar x
\approx5.896103-0.541359294(12.562738)
\approx-0.904851973.
$$

These reconstructed values agree to four decimal places with the separately supplied full-data coefficients $b_0=-0.9048516120$ and $b_1=0.5413592547$.

At 12 years,

$$
\widehat y(12)=-0.9048516120+0.5413592547(12)=5.591459444.
$$

For a worker with observed wage 10 dollars per hour,

$$
e=10-5.591459444\approx4.408540556\text{ dollars per hour}.
$$

The positive sign means that the observed wage is about 4.41 dollars per hour above the line's fitted value for a worker with 12 years of education.

Rounding the coefficients before substituting changes the final displayed digits. Use the rounded summaries to verify the coefficients to four decimal places, then carry the separately supplied full-data coefficients through fitted-value calculations and round only the final result.

### Interpret the three summaries separately

- **Correlation:** $r=0.4059$ is a unitless measure of a moderate positive linear association between education and wage among these 526 historical observations.
- **Slope:** $b_1=0.5414$ dollars per hour per education year means that an additional education year is paired with about 0.54 dollars per hour more fitted wage in this sample.
- **Coefficient of determination:** $r^2=0.1648$ means that about 16.48 percent of the sample variation in wage is represented by variation in the fitted values from this one-regressor linear description. The remaining 83.52 percent is residual variation around the line.

None of these quantities is the percentage of an individual's wage caused by education, the probability that the model is correct, or a general measure of predictive accuracy.

### What the graph adds

The line represents the overall positive fitted trend. It conceals the integer-valued education stacks, the substantial wage variation among workers with the same education, and unusual high wages. The residual panel also suggests larger vertical spread at higher education values, a feature that $r$ and $r^2$ do not describe.

### A defensible two-sentence report

Among 526 workers in this historical 1976 Current Population Survey extract, each additional education year is associated with about 0.54 dollars per hour higher fitted wage, and the fitted line represents about 16.48 percent of the sample wage variation. These descriptive results alone do not establish a causal return to education, current-period relevance, population representativeness, or reliable individual prediction.

### Verification and limitation

The identities $b_1=r(s_y/s_x)$ and $b_0=\bar y-b_1\bar x$ independently reconstruct the coefficients; substituting $x=12$ checks the fitted value and residual. The [reproducible Class 4 script](../../class-04-wage-regression.R) supplies a computational check, but software output does not add a sampling or causal design.

### Nearby transfer

Before opening the check, use the supplied coefficients for a worker with 16 education years and an observed wage of 12 dollars per hour. Calculate and interpret the residual, then state one limit of the calculation.

<details>
<summary>Reveal the transfer check</summary>

Using the supplied full-data coefficients, $\widehat y(16)=-0.9048516120+0.5413592547(16)\approx7.756896$ dollars per hour. The residual is $12-7.756896\approx4.243104$ dollars per hour, so the observation lies above the fitted line. The calculation is a within-range fitted comparison, not a causal estimate for that worker.

</details>

[Back to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Audit a polished but invalid regression report

**Problem:** [Back to the exact Problem 4 prompt](../#problem-4)  
**Class-guide connections:** [Section 4: Fitted values, residuals, and diagnostics](../../#4-fitted-values-residuals-and-diagnostics), [Section 5: A historical education–wage relationship](../../#5-a-historical-educationwage-relationship), and [Section 6: From regression output to a defensible claim](../../#6-from-regression-output-to-a-defensible-claim)

### Target and result

The report contains one nearly correct numerical calculation but no defensible causal conclusion. Correct regression arithmetic must be separated from sample description, prediction, population generalization, diagnostics, and deletion decisions.

### Claim-by-claim classification

| Report claim | Classification | Audit |
|---|---|---|
| Another year “raises every worker's wage by exactly 54 cents.” | Descriptively defensible only after major qualification | The fitted sample slope is about 54 cents per hour per education year. It is an average fitted difference, not an exact individual change or a causal effect. |
| Education “causes 16.48 percent of each worker's wage.” | Unsupported | $r^2$&nbsp;concerns aggregate sample variation around a fitted line, not causation or an individual's wage components. |
| The model is “16.48 percent accurate.” | Unsupported | $r^2$&nbsp;is not a universal accuracy percentage and does not evaluate out-of-sample prediction. |
| The negative intercept makes the line useless. | Unsupported | The intercept is the line's fitted value at zero education. Its implausibility at a boundary warns against literal interpretation there but does not erase the line's descriptive role over the observed data. |
| The fitted wage at 30 years is 15.34 dollars per hour. | Arithmetically supported after rounding | The substitution is correct, but 30 is outside the observed range. |
| The 30-year forecast is reliable because correlation is positive. | Unsupported | Correlation direction supplies no observations beyond 18 years and no extrapolation guarantee. |
| Every large-residual point is influential and should be deleted. | Unsupported | Residual size, leverage, influence, data validity, and deletion are different questions. |

### Arithmetic versus prediction

The reported substitution is

$$
-0.9049+0.5414(30)=15.3371,
$$

which rounds to 15.34 dollars per hour. The observed education range is 0–18 years, however, so 30 years is extrapolation. Arithmetic checks what the fitted formula returns; it does not verify that the sample trend remains linear or predictive outside its support.

### Repair the interpretations

The slope should be stated as follows: among the 526 workers in this historical sample, one additional education year is associated with about 0.5414 dollars per hour higher fitted wage. That is a descriptive comparison, not an exact prediction for every worker, a population statement, or a causal return to education.

The $r^2$ should be stated as follows: about 16.48 percent of the sample variation in wage is represented by the fitted values from this simple linear regression, while about 83.52 percent remains in residual variation. It does not assign causes to an individual's wage and does not evaluate a new population or future prediction.

### Residuals, leverage, influence, and deletion

A large residual is a large vertical gap between observed and fitted wage. High leverage means an education value is unusual relative to the other $x$ values. Influence means the fitted line or a reported result changes materially when the observation is included rather than omitted. Influence therefore requires a fit comparison or a declared influence diagnostic; neither a large residual nor high leverage alone proves it.

Deletion requires evidence about what the observation represents: for example, a documented recording error, an observation outside the target population, or a defensible rule specified independently of whether the coefficient is convenient. A valid unusual observation should generally remain visible, with sensitivity analysis used to report how the fit changes.

### A defensible three-sentence revision

Among 526 workers in this historical 1976 extract, each additional education year is associated with about 0.54 dollars per hour higher fitted wage, and the line represents 16.48 percent of sample wage variation. The regression alone does not establish an individual or causal effect, and its fitted value at 30 years is an unsupported extrapolation beyond the observed 0–18-year range. Large residuals, leverage, and influence require distinct diagnostics, and an observation should not be deleted without evidence tied to data quality, population scope, or a justified analysis rule.

### Verification and limitation

The slope, $r^2$, and 30-year arithmetic can be verified from the supplied output. No listed number establishes the sampling design, a causal identification strategy, out-of-sample performance, or a reason to delete any observation; those remain unavailable rather than silently assumed.

### Nearby transfer

Before opening the check, consider a worker with 12 education years and wage 22.2 dollars per hour. Calculate the residual and explain why a large residual near the sample mean of education does not by itself establish influence.

<details>
<summary>Reveal the transfer check</summary>

The fitted wage is approximately 5.591459, so the residual is about $22.2-5.591459=16.608541$ dollars per hour. This large vertical departure does not itself prove strong influence because 12 years is near the sample mean education and therefore need not have high leverage; assess influence by comparing the fitted result with and without the observation.

</details>

[Back to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Transfer without assistance

**Problem:** [Back to the exact Problem 5 prompt](../#problem-5)  
**Class-guide connections:** [Section 1: Relationships begin with a graph](../../#1-relationships-begin-with-a-graph), [Section 3: Least-squares prediction](../../#3-least-squares-prediction), and [Section 4: Fitted values, residuals, and diagnostics](../../#4-fitted-values-residuals-and-diagnostics)

### Target and result

The fitted line is $\widehat y=21.6-1.6x$. A county at $x=7$ has fitted food insecurity of 10.4 percent, and an observed value of 14 percent produces a residual of 3.6 percentage points. The observed income range is $3\leq x\leq9$, so the impossible fitted value at $x=20$ is an extrapolation failure.

### Units and association

The observational unit is a county. The explanatory variable $x$ is county median household income in tens of thousands of dollars, and the response $y$ is the percentage of county households reporting food insecurity. The correlation $r=-0.60$ indicates a moderately strong negative linear association, but summaries alone do not show the scatterplot's form, clusters, or unusual observations.

### Fitted line and residual

The slope is

$$
b_1=r\frac{s_y}{s_x}
=-0.60\left(\frac{4}{1.5}\right)
=-1.6.
$$

Its units are percentage points of food insecurity per 10,000 dollars of median household income. The intercept is

$$
b_0=\bar y-b_1\bar x
=12-(-1.6)(6)
=21.6.
$$

Therefore,

$$
\widehat y=21.6-1.6x,
\qquad
\widehat y(7)=21.6-1.6(7)=10.4\text{ percent}.
$$

For a county with observed food insecurity of 14 percent,

$$
e=14-10.4=3.6\text{ percentage points}.
$$

The county's observed percentage is 3.6 percentage points above the fitted value for counties at that income level.

### $r^2$, omitted graph features, and units

Here $r^2=(-0.60)^2=0.36$. Thus 36 percent of the sample variation in county food-insecurity percentages is represented by the fitted linear values, while 64 percent is residual variation around the line.

The summaries do not reveal whether the form is actually linear, whether clusters or unusual counties exist, whether residual spread changes with income, or whether an observation is influential. Any two of these answer the question. The supplied range identifies the sample's horizontal support but does not replace the scatterplot.

If income is measured in dollars, a one-dollar change is $1/10{,}000$ of the original $x$ unit. The slope becomes

$$
\frac{-1.6}{10{,}000}=-0.00016
$$

percentage points per dollar. Correlation stays $-0.60$ because this is a positive rescaling of income.

### Extrapolation and causality

At $x=20$,

$$
\widehat y(20)=21.6-1.6(20)=-10.4\text{ percent}.
$$

A negative percentage is impossible here. Because 20 lies outside the observed range of 3–9, the result warns that extrapolating a line can violate the response's substantive bounds. The negative association also does not identify an income effect because county composition, labor markets, housing costs, policy, measurement, and other factors may differ with both variables, and no assignment or identification design was supplied.

### Verification and limitation

The line passes through $(\bar x,\bar y)=(6,12)$ because $21.6-1.6(6)=12$, providing an independent arithmetic check. The summary statistics are sufficient for the line but insufficient for graph diagnosis, population generalization, individual-household interpretation, or causality.

### Nearby transfer

Before opening the check, reverse the variable roles and predict income from food insecurity using $\bar x=6$, $s_x=1.5$, $\bar y=12$, $s_y=4$, and $r=-0.60$. Find the new slope and intercept, then explain why the new slope is not the reciprocal of $-1.6$.

<details>
<summary>Reveal the transfer check</summary>

If the variable roles are reversed and income is predicted from food insecurity, the slope is $r(s_x/s_y)=-0.60(1.5/4)=-0.225$ tens of thousands of dollars per percentage point, and the intercept is $6-(-0.225)(12)=8.7$ tens of thousands of dollars. This slope is not the reciprocal of $-1.6$ because the reverse fit minimizes residuals in income rather than residuals in food insecurity.

</details>

[Back to the solution map](#solution-map)

## Final study check

Close this file and reconstruct the five-worker line, one wage residual, and the complete county transfer on a blank page. Then explain aloud why a correct fitted value may still be a poor prediction, why a large residual need not be influential, and why neither $r$ nor $r^2$ supplies a causal design.
