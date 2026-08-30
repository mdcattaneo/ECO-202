# ECO 202 Practice 17: Conditional Distributions, Expectations, and Simple Regression

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 17: Conditional Distributions, Expectations, and Simple Regression](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 17 and before Class 18

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Begin with an independent attempt. Use compact checks only to diagnose a specific difficulty, and open a complete solution only after you can identify the calculation, interpretation, or assumption that needs repair. The optional AI comparison comes after the complete non-AI audit and lies outside the core workload.

<!-- Source lineage: Scope and notation follow the current Fall 2026 Class 17 guide, its verified wage1 script and data, Econ202-UlrichMueller/LectureNotes.tex sections on conditional distributions, conditional expectation, iterated expectations, regression functions, population and sample regression coefficients, and slope inference, Spring 2026 Problem Set 10, and selected private historical assessments used only for scope and difficulty calibration. Problems 1--5 deliberately reuse current Class 17 course-created examples or verified empirical summaries; Problem 6, every transfer, and all practice instructions are newly authored. No legacy exercise or protected assessment wording is reproduced. -->

## Purpose and exact workload

This practice builds one chain: condition a joint distribution, average within groups, recombine those means, separate mean from noise, summarize a population relationship with a best linear approximation, calculate a fitted sample line, attach robust slope uncertainty, and audit what the line can and cannot mean.

Problems 1–6 form an exact 40–55 minute core under the stage ranges below. Complete Problems 1–5 without AI, statistical software, compact checks, or worked solutions; an ordinary calculator is sufficient. Problem 6 includes a complete non-AI audit and final unaided transfer in the timed core. Optional AI comparison, script execution, compact-check study, and worked-solution study take additional time.

| Core stage | Suggested time | Work |
|---|---:|---|
| Condition a joint distribution | 6–8 minutes | Problem 1 |
| Average, recombine, and separate noise | 6–8 minutes | Problem 2 |
| Build a population best linear approximation | 7–9 minutes | Problem 3 |
| Calculate and interpret a fitted sample line | 7–9 minutes | Problem 4 |
| Attach HC1 slope uncertainty | 6–8 minutes | Problem 5 |
| Audit the claim and transfer unaided | 8–13 minutes | Problem 6 |
| **Total** | **40–55 minutes** | **Problems 1–6** |

## What you must be able to do independently

After completing the core route, you should be able to:

- obtain and verify a conditional distribution from a joint probability table;
- calculate conditional means and recover an overall mean using the law of iterated expectations;
- interpret $Y=\mathbb E[Y\mid X]+\varepsilon$ and the conditional mean-zero property;
- distinguish a conditional-mean function, a population best linear approximation, and a fitted sample line;
- calculate simple-regression coefficients from covariance-style sample summaries and interpret their units;
- construct and interpret large-sample HC1 slope uncertainty at the Class 17 level; and
- separate best-linear-prediction, conditional-mean, population, historical, and causal claims.

<a id="problem-map"></a>

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Conditional distributions from the joint table](#problem-1) | Change the denominator and verify two conditional distributions. | Unaided probability calculation |
| [2. Conditional means, iterated expectations, and noise](#problem-2) | Average within groups, recombine correctly, and inspect conditional errors. | Board-style calculation |
| [3. A population line is not every conditional mean](#problem-3) | Calculate population regression coefficients from a known distribution. | Population-object audit |
| [4. The fitted wage line](#problem-4) | Calculate sample coefficients and interpret fitted values and units. | Empirical calculation |
| [5. Robust uncertainty for the wage slope](#problem-5) | Calculate a statistic and interval and state the HC1 boundary. | Inference audit |
| [6. Audit one regression report](#problem-6) | Repair the same claim independently and with optional AI, then transfer unaided. | Non-AI audit; optional AI comparison |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Conditional distributions from the joint table

**Class-guide connection:** [Conditional distributions from a joint table](../#c17-stop-1)

In the Class 17 fictional population, $X$ records an education group and $Y$ records annual earnings in tens of thousands of dollars.

| $Y\backslash X$ | Basic | Intermediate | Advanced | $\mathbb P(Y=y)$ |
|---:|---:|---:|---:|---:|
| 4 | 0.12 | 0.08 | 0.02 | 0.22 |
| 10 | 0.08 | 0.25 | 0.10 | 0.43 |
| 16 | 0.00 | 0.15 | 0.20 | 0.35 |
| $\mathbb P(X=x)$ | 0.20 | 0.48 | 0.32 | 1.00 |

1. Verify the intermediate-group margin and divide its three joint cells by that margin to construct the full conditional distribution of $Y$.
2. Construct the conditional distribution of $Y$ for the advanced group and verify that its probabilities sum to one.
3. Calculate $\mathbb P(Y\geq10\mid X=\text{intermediate})$ and $\mathbb P(Y\geq10\mid X=\text{advanced})$.
4. Calculate the unconditional probability $\mathbb P(Y\geq10)$ and explain why it need not equal either conditional probability.
5. Explain what information a full conditional distribution contains that one conditional mean will not retain.

<!-- Source lineage: Deliberate reuse of the current Class 17 course-created joint table with newly authored comparison and interpretation tasks. -->

<details>
<summary>Check after completing Problem 1</summary>

For the intermediate group, the probabilities at $Y=4,10,16$ are $1/6$, $25/48$, and $5/16$. For the advanced group they are $1/16$, $5/16$, and $5/8$. The two conditional upper probabilities are $5/6$ and $15/16$; the unconditional probability is $0.43+0.35=0.78$.

[Study the complete solution after your attempt](solutions/#solution-1).

</details>

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Conditional means, iterated expectations, and noise

**Class-guide connection:** [Conditional means and iterated expectations](../#c17-stop-2) and [The regression function and mean-plus-noise](../#c17-stop-3)

Continue with the Class 17 joint table.

1. Calculate $\mathbb E[Y\mid X=x]$ for the basic, intermediate, and advanced groups.
2. Use the group probabilities $0.20$, $0.48$, and $0.32$ to recover $\mathbb E[Y]$ through the law of iterated expectations.
3. Verify the result directly from the marginal distribution of $Y$. Compare it with the unweighted average of the three conditional means and explain why equal group weights are wrong here.
4. Define $f(x)=\mathbb E[Y\mid X=x]$ and $\varepsilon=Y-f(X)$. For an advanced-group unit with $Y=16$, calculate the realized $\varepsilon$ and explain why one positive error does not contradict $\mathbb E[\varepsilon\mid X=\text{advanced}]=0$.
5. Use the advanced-group conditional distribution to verify the conditional mean-zero property directly. Then explain why $\mathbb E[\varepsilon]=0$ follows by iterated expectations.

<!-- Source lineage: Deliberate reuse of the current Class 17 conditional means with newly authored mean-plus-noise verification. -->

<details>
<summary>Check after completing Problem 2</summary>

The conditional means are 6.4, 10.875, and 13.375. Their prevalence-weighted mean is 10.78, matching the marginal calculation; their unweighted average is approximately 10.2167. For the advanced unit with $Y=16$, $\varepsilon=2.625$, while the advanced-group weighted error mean is zero.

[Study the complete solution after your attempt](solutions/#solution-2).

</details>

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. A population line is not every conditional mean

**Class-guide connection:** [Population line and fitted sample line](../#c17-stop-5)

For this problem only, code the three education groups in the known fictional population as $X=0$ for basic, $X=1$ for intermediate, and $X=2$ for advanced. This is an ordered group index, not years of education. Retain the same joint distribution from Problems 1–2.

The population best linear approximation has

$$
\beta_1=\frac{\mathrm{Cov}(X,Y)}{\mathrm{Var}(X)},
\qquad
\beta_0=\mathbb E[Y]-\beta_1\mathbb E[X].
$$

1. Calculate $\mathbb E[X]$, $\mathbb E[X^2]$, and $\mathrm{Var}(X)$.
2. Calculate $\mathbb E[XY]$ and $\mathrm{Cov}(X,Y)$ from the joint table.
3. Calculate $\beta_1$ and $\beta_0$, including the slope's units.
4. Calculate the line's fitted population values at $X=0,1,2$.
5. Compare those three line values with the conditional means from Problem 2. Does the population line equal the conditional-mean function at every group?
6. Explain why this is a population best linear approximation rather than a fitted sample line and why changing the numerical group coding would change the slope's numerical interpretation.

<!-- Source lineage: Newly authored numerical coding and population best-linear-approximation calculation using the current Class 17 joint distribution. -->

<details>
<summary>Check after completing Problem 3</summary>

$\mathbb E[X]=1.12$, $\mathrm{Var}(X)=0.5056$, $\mathbb E[XY]=13.78$, and $\mathrm{Cov}(X,Y)=1.7064$. The population line is $7+3.375X$, with values 7, 10.375, and 13.75. Those values differ from the conditional means, so the best line does not reproduce the full regression function.

[Study the complete solution after your attempt](solutions/#solution-3).

</details>

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. The fitted wage line

**Class-guide connection:** [The fitted wage line](../#c17-stop-5)

The historical Class 17 `wage1` analysis uses hourly wage $Y$ in 1976 dollars per hour and education $X$ in years. For the 526 complete records,

$$
\bar x=12.5627376,
\qquad
\bar y=5.8961027,
$$

$$
\sum_i(x_i-\bar x)^2=4025.4297,
\qquad
\sum_i(x_i-\bar x)(y_i-\bar y)=2179.2036.
$$

1. Calculate the fitted sample slope $b_1$ and intercept $b_0$.
2. Write the fitted line and verify that it passes through $(\bar x,\bar y)$.
3. Calculate the fitted hourly wage at 14 years of education.
4. Interpret the slope's sign, magnitude, and units as a fitted sample relationship. What fitted difference corresponds to two additional years of education?
5. Explain why the fitted value is not a guaranteed individual wage, why $b_1$ is not the population coefficient $\beta_1$, and why neither number alone establishes causality.

After your attempt, the [Class 17 script](../class-17-conditional-expectation-and-regression.R) provides an optional reproducibility check.

<!-- Source lineage: Deliberate use of verified current Class 17 wage1 sample summaries with newly authored reconstruction tasks. -->

<details>
<summary>Check after completing Problem 4</summary>

$b_1\approx0.5413593$, $b_0\approx-0.9048516$, and $\widehat{\mathrm{wage}}=-0.9048516+0.5413593\mathrm{educ}$. The fitted wage at 14 years is approximately 6.6742 dollars per hour, and the fitted two-year difference is approximately 1.0827 dollars per hour.

[Study the complete solution after your attempt](solutions/#solution-4).

</details>

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Robust uncertainty for the wage slope

**Class-guide connection:** [Inference for the education slope](../#c17-stop-6)

For the fitted slope $b_1=0.5413593$, the Class 17 calculation gives the HC1 heteroskedasticity-robust estimated standard error

$$
\widehat{\mathrm{SE}}_{\mathrm{HC1}}(b_1)=0.0612596.
$$

Treat the records as independent observations from the stated model population and use a large-sample standard Normal reference.

1. Calculate the standardized statistic for $H_0:\beta_1=0$ and use the supplied two-sided p-value below $0.0001$ to state the 5% test decision.
2. Construct the approximate 95% interval using 1.96.
3. Interpret the interval's units and population target without turning it into an individual or causal effect.
4. Explain what using HC1 changes relative to a constant-variance standard error and what assumptions remain.
5. Explain why a small robust p-value does not establish a linear conditional-mean function, repair dependence or selection, update historical data, or identify a causal education effect.

<!-- Source lineage: Deliberate use of verified current Class 17 HC1 slope output with newly authored assumption and interpretation tasks. -->

<details>
<summary>Check after completing Problem 5</summary>

$Z\approx8.8371$, so reject a zero population best-linear-prediction slope under the stated model. The approximate interval is $[0.42129,0.66143]$ 1976 dollars per hour per year of education. HC1 allows conditional variance to change but does not repair the remaining sampling, dependence, functional-form, or causal problems.

[Study the complete solution after your attempt](solutions/#solution-5).

</details>

[Back to the problem map](#problem-map)

<a id="problem-6"></a>

### Problem 6. Audit one regression report

**Class-guide connection:** [Prediction, comparison, or causality?](../#c17-stop-7)

Audit this exact claim after completing Problems 1–5:

> Because the HC1 interval [0.4213,0.6614] excludes zero, the wage line proves that every worker's conditional mean and causal wage rise by exactly 54 cents for each additional year of education. The robust standard error removes omitted-variable, selection, measurement, dependence, and historical-relevance concerns, so the result applies to workers today.

1. Identify the fitted object, sample, units, model-population target, and the first unsupported step.
2. Separate the report's best-linear-prediction, conditional-mean, individual, and causal claims. State the additional condition or design evidence each stronger interpretation would require.
3. State what HC1 addresses and audit every problem it falsely claims to remove.
4. Rewrite the report in no more than four sentences, preserving the fitted slope and interval while respecting the historical observational scope.

**Complete non-AI route:** Make five columns labeled object, numerical result, supported interpretation, required assumption, and unresolved limitation. Begin with the sample fitted line, distinguish it from the population best linear approximation and conditional-mean function, and then assess the individual and causal statements. Recalculate the interval, identify the independent-observation and large-sample conditions, and audit heteroskedasticity, dependence, selection, measurement, omitted variables, functional form, historical scope, and causal identification separately.

**Optional AI comparison outside the core time:** Only after completing the non-AI audit, give an AI system the supplied context and the identical claim below. Do not upload personal work or unrelated files.

```text
The historical wage1 file contains 526 worker records. Hourly wage is measured
in 1976 dollars per hour and education in years. The fitted sample line is
wage_hat = -0.9049 + 0.5414 educ. The HC1 standard error for the slope is
0.06126 and its approximate 95% interval is [0.4213, 0.6614]. The records are
observational.

Audit exactly this claim: "Because the HC1 interval [0.4213,0.6614] excludes
zero, the wage line proves that every worker's conditional mean and causal wage
rise by exactly 54 cents for each additional year of education. The robust
standard error removes omitted-variable, selection, measurement, dependence,
and historical-relevance concerns, so the result applies to workers today."

Identify the first unsupported step and repair every later claim. Distinguish
the fitted sample line, population best linear approximation, conditional-mean
function, individual prediction, and causal effect. Recalculate the interval;
state what HC1 addresses and which sampling, dependence, functional-form,
measurement, external-validity, and causal-identification assumptions remain.
Preserve the historical units. Do not invent random sampling, assignment,
controls, current data, or a causal design.
```

Record one correction the system made accurately and one point you had to verify or refine yourself.

**Final unaided transfer:** Close any AI system, compact check, and worked solution. A sample has $\bar x=4$, $\bar y=20$, $\sum_i(x_i-\bar x)^2=50$, and $\sum_i(x_i-\bar x)(y_i-\bar y)=-15$. Its HC1 slope standard error is 0.12. Calculate the fitted slope and intercept, the fitted value at $x=6$, the standardized statistic for a zero population slope, and the approximate 95% interval using 1.96. No sampling or assignment information is supplied. State the strongest supported interpretation and one conditional-mean or causal claim that is not justified.

<!-- Source lineage: Newly authored identical-claim audit and summary-statistic transfer calibrated to the current Class 17 interpretation boundary. -->

<details>
<summary>Check after completing Problem 6</summary>

The historical line is a fitted sample best-linear relationship; the interval concerns a model-population best-linear slope under assumptions, not an exact conditional or causal effect. HC1 addresses heteroskedasticity, not the listed design and scope problems. In the transfer, $b_1=-0.3$, $b_0=21.2$, $\widehat y(6)=19.4$, $Z=-2.5$, and the interval is $[-0.5352,-0.0648]$.

[Study the complete solution after your attempt](solutions/#solution-6).

</details>

[Back to the problem map](#problem-map)

## Suggested study sequence

1. Complete Problems 1–6 in order and mark the first denominator, weighted mean, regression object, coefficient, uncertainty calculation, or interpretation that becomes uncertain.
2. Use only the corresponding compact check to decide whether the issue concerns probability, algebra, units, target, assumptions, or causal scope.
3. Open a [worked solution](solutions/) only after a genuine attempt and stop at the first point where your work diverges.
4. Close the solution, reconstruct that step from a blank page, and complete its nearby transfer without assistance.
5. On a later day, explain the chain from a conditional distribution to a fitted sample line without using software output.

## Personal learning record

In private study notes, record:

- **Independent:** one conditional-distribution, iterated-mean, or regression calculation completed without a hint;
- **Prompted:** one step completed after a compact check or strategic cue;
- **Supplied:** any reasoning, wording, or calculation supplied by AI, a solution, or another source;
- **Verified:** one result checked using a second formula, recombination, or script;
- **Remaining:** one statistical object or interpretation boundary that still needs repair; and
- **Transfer:** one fresh conditional-mean or simple-regression problem to attempt later.

This record is for self-assessment, not submission or grading.

## Common core and optional extensions

**Common core:** Every conditional probability, conditional expectation, iterated-expectation, mean-plus-noise, population-line, fitted-line, robust-uncertainty, unit, assumption, and interpretation task required in Problems 1–6.

**Optional extensions:** Conditional variances; nonlinear conditional-mean approximations; alternative group coding; ordinary versus HC1 standard errors; exact finite-sample regression reference distributions; influence diagnostics; clustered dependence; measurement-error models; and causal-identification methods. These extensions do not replace the common-core object and interpretation distinctions.
