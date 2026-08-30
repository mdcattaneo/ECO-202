# ECO 202 Practice 16: Inference for and Comparison of Means and Proportions

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 16: Inference for and Comparison of Means and Proportions](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 16 and before Class 17

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Choose the target and design before choosing a formula. Complete the independent work before compact checks or solutions. The optional AI comparison comes only after the complete non-AI audit and is outside the recommended core time.

<!-- Source lineage: Scope is calibrated against the finalized Fall 2026 Class 16 guide; Econ202-UlrichMueller/LectureNotes.tex sections on Student-t inference, one and two means, paired comparisons, binary variables, and one and two proportions; Spring 2026 Problem Set 9; and selected private historical assessments used only for scope and difficulty calibration. Problems 3 and 5 deliberately reuse the verified current Class 16 bwght summaries. Every other setting, value, prompt, audit, and transfer is newly authored; no legacy exercise or protected assessment wording is reproduced. -->

## Purpose and exact workload

This practice begins with procedure selection and then applies the estimate–standard-error–reference workflow to one mean, paired differences, two independent means, one proportion, and two independent proportions. The final audit keeps uncertainty separate from causal identification, population generalization, individual effects, and practical importance.

Problems 1–6 form a 40–55 minute core under the stage ranges below. Complete Problems 1–5 without AI, statistical software, compact checks, or worked solutions; an ordinary calculator and supplied reference values are sufficient. Problem 6 includes the complete non-AI audit and final unaided transfer in the timed core. Optional AI comparison, script execution, answer-check study, and worked-solution study take additional time.

| Core stage | Suggested time | Work |
|---|---:|---|
| Choose the procedure from the design | 5–7 minutes | Problem 1 |
| Work with one mean and paired differences | 8–10 minutes | Problem 2 |
| Compare two independent means in `bwght` | 7–9 minutes | Problem 3 |
| Conduct inference for one proportion | 5–7 minutes | Problem 4 |
| Compare two proportions with an unpooled SE | 7–9 minutes | Problem 5 |
| Audit both outcomes and transfer unaided | 8–13 minutes | Problem 6 |
| **Total** | **40–55 minutes** | **Problems 1–6** |

## What you must be able to do independently

After completing the core route, you should be able to:

- identify the observational unit, outcome type, number of groups, pairing or independence structure, target, and design before naming a procedure;
- conduct one-sample mean inference and reduce a paired quantitative design to one-sample inference on within-pair differences;
- calculate and interpret a Welch estimated standard error, test, and interval for two independent means;
- conduct large-sample interval and test calculations for one proportion while distinguishing estimate-based from null-based standard errors;
- calculate an unpooled standard error and interval for a difference of two independent proportions;
- check independence, pairing, outliers or sample-size conditions, and binary success/failure counts; and
- separate descriptive evidence, population generalization, causal interpretation, individual effects, effect magnitude, and practical importance.

<a id="problem-map"></a>

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Choose the procedure before the formula](#problem-1) | Classify the target, outcome, grouping, and dependence structure. | Unaided procedure map |
| [2. One mean and paired differences](#problem-2) | Use one-sample Student t reasoning in two distinct designs. | Board-style calculation |
| [3. Two independent means in `bwght`](#problem-3) | Reconstruct the Welch birth-weight comparison and its limits. | Empirical calculation |
| [4. One proportion, two standard errors](#problem-4) | Build an estimate-based interval and a null-based test. | Unaided calculation |
| [5. Two proportions in `bwght`](#problem-5) | Construct an unpooled interval for a threshold-proportion difference. | Empirical calculation |
| [6. Audit the two-outcome report](#problem-6) | Repair an identical claim without AI, optionally compare an AI audit, and finish unaided. | Non-AI audit; optional AI comparison |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Choose the procedure before the formula

**Class-guide connection:** [Choose the object before the formula](../#c16-stop-1)

For each setting, identify the outcome type, grouping or dependence structure, and appropriate procedure or standard-error structure. For Settings 1, 3, and 4, also state what the supplied design can support and one limitation.

1. A simple random sample of 36 independently selected customer invoices is used to compare mean invoice value with a 70-dollar benchmark.
2. The same 20 stores report weekly sales before and after a display change.
3. A simple random sample of 120 independently selected firms records whether each firm exports.
4. Conversion indicators are compared between two independently randomized website groups.
5. Wages are observed for several workers inside each of 30 firms. Explain why the simple independent-observation rows of the Class 16 procedure map are insufficient.

<!-- Source lineage: Newly authored procedure-selection settings spanning the five Class 16 core rows and one dependence boundary. -->

<details>
<summary>Check after completing Problem 1</summary>

The settings call for one mean, paired differences, one proportion, two independent proportions, and a dependence-aware method beyond the simple rows. The simple random samples can support scope for their defined populations if implemented as stated; randomized assignment can support a causal assignment contrast for the study units under implementation assumptions. Neither conclusion follows from a formula alone.

[Study the complete solution after your attempt](solutions/#solution-1).

</details>

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. One mean and paired differences

**Class-guide connection:** [One mean and paired differences](../#c16-stop-2)

#### One mean

A random sample of 36 completed orders has mean handling time $\bar x=74$ minutes and sample SD $s=12$ minutes. Test $H_0:\mu=70$ against $H_a:\mu\ne70$. Use $t^\star_{0.975,35}=2.030$ and the supplied two-sided p-value $0.0533$.

1. Calculate the estimated standard error, Student $t$ statistic, and 95% interval for $\mu$.
2. Decide at $\alpha=0.05$ using both the p-value and interval, and explain why the two conclusions agree.
3. State the assumptions and one population-scope limitation.

#### Paired differences

Sixteen stores report handling time before and after a workflow change. Define $D_i=\mathrm{after}_i-\mathrm{before}_i$. The 16 differences have $\bar d=-3.5$ minutes and $s_D=4$ minutes. Test $H_0:\mu_D=0$ against $H_a:\mu_D\ne0$. Use $t^\star_{0.975,15}=2.131$ and the supplied two-sided p-value $0.0032$.

4. Calculate the estimated standard error, Student $t$ statistic, and 95% interval for $\mu_D$.
5. Explain why the observational unit for inference is the store difference and why treating the two columns as 32 independent observations would use the wrong dependence structure.
6. Interpret the negative estimate and state why a before–after difference alone does not establish that the workflow change caused it.

<!-- Source lineage: Newly authored order-time and paired-store settings with independently verified reference values. -->

<details>
<summary>Check after completing Problem 2</summary>

For one mean, $\widehat{\mathrm{SE}}=2$, $t=2$, and the interval is $[69.94,78.06]$, so fail to reject at 5%. For paired differences, $\widehat{\mathrm{SE}}=1$, $t=-3.5$, and the interval is $[-5.631,-1.369]$ minutes, so reject zero. Pairing is preserved by analyzing the 16 within-store differences.

[Study the complete solution after your attempt](solutions/#solution-2).

</details>

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Two independent means in `bwght`

**Class-guide connection:** [Two independent means in the birth-weight data](../#c16-stop-3) and [A mean difference is not automatically causal](../#c16-stop-4)

The historical [`bwght` file](../data/README.md) contains birth records from a complex survey. For this simplified teaching demonstration, treat the displayed records as independent; that is a modeling assumption, not a documented property of the CSV. Smoking status was recorded, not assigned.

| Group | $n$ | Mean birth weight | Sample SD |
|---|---:|---:|---:|
| Recorded smoking | 212 | 111.1462 oz | 19.1814 oz |
| No recorded smoking | 1,176 | 120.0612 oz | 20.2685 oz |

Define $\Delta=\mu_1-\mu_0$ as smoking minus nonsmoking.

1. Calculate $\widehat\Delta$, its Welch estimated standard error $\sqrt{s_1^2/n_1+s_0^2/n_0}$, and the Student $t$ statistic for $H_0:\Delta=0$.
2. Use Welch degrees of freedom 302.3, critical value $t^\star=1.9678$, and the supplied two-sided p-value below $0.0001$ to construct the 95% interval and decide at $\alpha=0.05$.
3. Interpret the estimate, interval, and test in ounces for the recorded groups.
4. State the simplified independence assumption and the measurement, sampling, group-comparison, outlier or sample-size, reference-distribution, causal, and current-population limitations you would inspect.

After your attempt, the [Class 16 script](../class-16-inference-means-and-proportions.R) provides an optional reproducibility check.

<!-- Source lineage: Deliberate use of the finalized Class 16 bwght mean summaries with newly authored practice instructions. -->

<details>
<summary>Check after completing Problem 3</summary>

$\widehat\Delta\approx-8.9150$ ounces, $\widehat{\mathrm{SE}}\approx1.4439$, $t\approx-6.1743$, and the 95% interval is approximately $[-11.7564,-6.0736]$ ounces. The calculation is a precise observational group comparison, not by itself a causal or current-population result.

[Study the complete solution after your attempt](solutions/#solution-3).

</details>

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. One proportion, two standard errors

**Class-guide connection:** [A proportion is a binary mean](../#c16-stop-5)

In 120 independent observations from a stated sampling process, 72 have a binary outcome equal to one. Let $p$ be the corresponding population proportion.

1. Calculate $\widehat p$, the observed success and failure counts, the estimate-based standard error $\sqrt{\widehat p(1-\widehat p)/n}$, and the approximate 95% Wald interval.
2. For $H_0:p=0.50$ against $H_a:p\ne0.50$, calculate the null-based standard error $\sqrt{0.50(0.50)/120}$ and standardized statistic.
3. Use the supplied two-sided Normal-reference p-value $0.0285$ to decide at $\alpha=0.05$.
4. Explain why the interval and null test use related but algebraically different standard errors, and state the success/failure and sampling conditions.

<!-- Source lineage: Newly authored one-proportion setting and calculations. -->

<details>
<summary>Check after completing Problem 4</summary>

$\widehat p=0.60$, with 72 successes and 48 failures. The estimate-based SE is approximately 0.04472 and the 95% Wald interval is approximately $[0.5123,0.6877]$. The null-based SE is approximately 0.04564, $z\approx2.1909$, and $p=0.0285$, so reject $p=0.50$ at 5%.

[Study the complete solution after your attempt](solutions/#solution-4).

</details>

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Two proportions in `bwght`

**Class-guide connection:** [Two proportions in the birth-weight data](../#c16-stop-6)

Define low birth weight as recorded birth weight below 88 ounces. The historical `bwght` counts are:

| Group | Low birth weight | Total |
|---|---:|---:|
| Recorded smoking | 20 | 212 |
| No recorded smoking | 63 | 1,176 |

Define $\Delta_p=p_1-p_0$ as smoking minus nonsmoking.

1. Calculate $\widehat p_1$, $\widehat p_0$, and $\widehat\Delta_p$; list the success and failure counts in both groups and assess the large-sample count condition.
2. Calculate the estimate-based unpooled standard error

$$
\widehat{\mathrm{SE}}(\widehat\Delta_p)
=\sqrt{
\frac{\widehat p_1(1-\widehat p_1)}{n_1}
+
\frac{\widehat p_0(1-\widehat p_0)}{n_0}
}.
$$

3. Construct the approximate 95% Wald interval and interpret it in percentage points.
4. Calculate the matching unpooled standardized statistic, use the supplied two-sided p-value $0.0536$ to decide at $\alpha=0.05$, and explain why an interval including zero does not prove equal proportions.
5. Compare the threshold-proportion target with the mean-birth-weight target from Problem 3, then state the shared simplified-independence, causal, and population limitations.

<!-- Source lineage: Deliberate use of the finalized Class 16 bwght threshold counts with newly authored practice instructions. -->

<details>
<summary>Check after completing Problem 5</summary>

$\widehat p_1\approx0.09434$, $\widehat p_0\approx0.05357$, and $\widehat\Delta_p\approx0.04077$, or 4.08 percentage points. The unpooled SE is approximately 0.02112, $z\approx1.9301$, and the 95% interval is approximately $[-0.00063,0.08217]$. Fail to reject equality at 5%; this is not proof of equality.

[Study the complete solution after your attempt](solutions/#solution-5).

</details>

[Back to the problem map](#problem-map)

<a id="problem-6"></a>

### Problem 6. Audit the two-outcome report

**Class-guide connection:** [Choose, report, and audit](../#c16-stop-7)

Audit this exact claim after completing Problems 1–5:

> “Maternal smoking caused birth weight to fall by exactly 8.9 ounces. The tiny mean-comparison p-value proves that every infant is harmed. The low-birth-weight interval includes zero, so it proves there is no effect on low birth weight. The large sample removes confounding and makes both statements representative of current births.”

1. Identify the first unsupported step and audit every later claim.
2. Rewrite the report in no more than four sentences, preserving both point estimates, units, uncertainty results, and the distinction between an average quantitative outcome and a binary threshold outcome.
3. State the strongest descriptive conclusion supported by the historical file and the additional design evidence needed for a population or causal conclusion.

**Complete non-AI route:** Identify the observational unit, recorded grouping variable, quantitative and binary outcomes, two targets, two estimates, and units. Verify the supplied results against your completed Problems 3 and 5. Explain why statistical detection is not an individual-effect statement, why an interval that includes zero is not proof of equality, why sample size does not remove confounding, and why the simplified independence assumption and historical observational records do not automatically represent current births.

**Optional AI comparison outside the recommended time:** Only after completing the non-AI audit, give an AI system the same claim below. Do not upload personal work or unrelated files.

```text
The historical bwght file contains 1,388 birth records. Smoking status was
recorded, not randomly assigned. Mean birth weight is 111.1462 ounces for 212
smoking records and 120.0612 ounces for 1,176 nonsmoking records. The
smoking-minus-nonsmoking mean difference is -8.9150 ounces with estimated SE
1.4439 and 95% interval [-11.7564, -6.0736]. Low birth weight is defined as
less than 88 ounces. The group proportions are 20/212 and 63/1176; their
difference is 0.04077 with unpooled SE 0.02112 and 95% interval
[-0.00063, 0.08217].

Audit exactly this claim: "Maternal smoking caused birth weight to fall by
exactly 8.9 ounces. The tiny mean-comparison p-value proves that every infant
is harmed. The low-birth-weight interval includes zero, so it proves there is
no effect on low birth weight. The large sample removes confounding and makes
both statements representative of current births."

Identify the first unsupported step and repair every later claim. Recalculate
both intervals, preserve ounces versus percentage points, distinguish the mean
target from the threshold-proportion target, and separate descriptive evidence,
population generalization, causal identification, individual effects, and
precision. Do not invent sampling, assignment, covariate, or current-population
evidence.
```

Record one correction the system made accurately and one point you had to verify or refine yourself.

**Final unaided transfer:** Close any AI system, compact check, and worked solution. Two independent groups of community-program records have $n_1=64$, $\bar x_1=52$, $s_1=8$ and $n_0=81$, $\bar x_0=49$, $s_0=9$. No random sampling or assignment information is supplied. Calculate the group-1-minus-group-0 mean difference, its large-sample estimated standard error, standardized statistic for a zero difference, and approximate 95% interval using 1.96. State the strongest interpretation supported and one population or causal claim that is not justified.

<!-- Source lineage: The current documented bwght summaries with a newly authored audit, identical prompt claim, and community-record transfer. -->

<details>
<summary>Check after completing Problem 6</summary>

The mean comparison is a difference of about $-8.915$ ounces with interval $[-11.756,-6.074]$; the low-birth-weight comparison is about 4.08 percentage points with interval approximately $[-0.063,8.217]$ percentage points. Neither result supplies random assignment or current-population representation. In the transfer, the difference is 3, SE is $\sqrt2\approx1.4142$, statistic is approximately 2.1213, and interval is approximately $[0.228,5.772]$ in the outcome units; the result is descriptive for the supplied groups.

[Study the complete solution after your attempt](solutions/#solution-6).

</details>

[Back to the problem map](#problem-map)

## Suggested study sequence

1. Complete Problems 1–6 in order and mark the first design classification, formula, or interpretation that becomes uncertain.
2. Use only the corresponding compact check to decide whether the issue concerns target, dependence, arithmetic, reference procedure, units, or design scope.
3. Open a [worked solution](solutions/) only after a genuine attempt and stop at the first point where your work diverges.
4. Close the solution, reconstruct the calculation from a blank page, and complete its nearby transfer without assistance.
5. On a later day, rebuild the five-row procedure map and give one failure mode for each row.

## Personal learning record

In private study notes, record:

- **Independent:** one procedure choice or inference calculation completed without a hint;
- **Prompted:** one step completed after a compact check or strategic cue;
- **Supplied:** any reasoning, wording, or calculation supplied by AI, a solution, or another source;
- **Verified:** one interval checked through its standardized statistic or a second calculation;
- **Remaining:** one assumption or interpretation boundary you still need to explain unaided; and
- **Transfer:** one fresh design that you will classify before calculating.

This record is for self-assessment, not submission or grading.

## Common core and optional extensions

**Common core:** Every procedure choice, calculation, assumption, unit, interpretation, and limitation required in Problems 1–6.

**Optional extensions:** Welch degrees of freedom; score or exact binomial intervals; null-pooled two-proportion equality tests; finite-population corrections; cluster-robust standard errors; survey weights; blocked experiments; and sensitivity analyses. These extensions do not replace the core design-first workflow.
