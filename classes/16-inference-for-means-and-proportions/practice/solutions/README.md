# ECO 202 Practice 16: Inference for and Comparison of Means and Proportions — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 16: Inference for and Comparison of Means and Proportions](../)  
**Class guide:** [Class 16](../../)

[← Return to Practice 16](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Read a solution only after a genuine attempt and its compact check. Then close this file, reconstruct the procedure choice and calculation, and attempt the nearby transfer without assistance.

<!-- Source lineage: Complete solutions for the newly authored Fall 2026 Practice 16 package. Every calculation was independently reconstructed from the public inputs, finalized Class 16 guide, and verified class script. No protected solution or reserved assessment answer is reproduced. -->

## Solution map

| Solution | Main idea |
|---|---|
| [1. Choose the procedure before the formula](#solution-1) | Target, outcome, groups, dependence, and design |
| [2. One mean and paired differences](#solution-2) | Student t inference and pairing |
| [3. Two independent means in `bwght`](#solution-3) | Welch inference and observational scope |
| [4. One proportion, two standard errors](#solution-4) | Estimate-based interval and null-based test |
| [5. Two proportions in `bwght`](#solution-5) | Unpooled interval and threshold interpretation |
| [6. Audit the two-outcome report](#solution-6) | Statistical evidence, targets, causality, and external validity |

<a id="solution-1"></a>

## Solution 1. Choose the procedure before the formula

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [Choose the object before the formula](../../#c16-stop-1)

### Question and strategy

Classify the observational unit, outcome, number of groups, and dependence before choosing a target or standard error. Then separate the procedure's arithmetic from the design evidence required for population or causal interpretation.

### Complete solution

| Setting | Unit and outcome | Target and dependence | Procedure or SE structure | Design scope |
|---|---|---|---|---|
| 36 customer invoices | One invoice; quantitative dollar value | One population mean; independently selected invoices | One-sample mean procedure ($\widehat{\mathrm{SE}}(\bar X)=s/\sqrt{36}$) | The stated simple random sample can support inference to its defined invoice population if implemented as described. |
| Same 20 stores before and after | One store pair; quantitative sales difference | Mean within-store difference; paired observations | Define the pair difference ($D_i=\mathrm{after}_i-\mathrm{before}_i$) and use its standard error ($s_D/\sqrt{20}$) | Pairing handles dependence; causality still requires a defensible intervention or comparison design. |
| 120 sampled firms | One firm; binary export indicator | One population proportion | One-proportion procedure with estimate- or null-based SE as the task requires | The stated simple random sample supports the stated firm population if the frame and response process are valid. |
| Two randomized website groups | One website participant; binary conversion indicator | Difference in group conversion proportions; independent assigned groups | Two-proportion procedure with unpooled estimate-based SE for an interval | Random assignment can support an average assignment-effect interpretation for study units under implementation assumptions; broader reach requires more evidence. |
| Workers nested within 30 firms | One worker; quantitative wage with within-firm dependence | Mean or group difference under clustering | A dependence-aware method, such as a cluster-adjusted SE, is needed | Treating all workers as independent understates or otherwise misstates uncertainty when within-firm outcomes covary. |

The same quantitative or binary label can lead to different procedures when grouping or dependence changes. No standard-error formula supplies missing random sampling, assignment, measurement, or external-validity evidence.

### Verification and limitation

The procedure map can be checked by asking what varies independently in repeated samples. If the answer is pairs, clusters, or assigned groups rather than individual rows, the standard error must preserve that structure.

### Nearby transfer

Before opening the check, classify these two settings: 30 households report energy use in January and March, while a separate study compares January energy use for 30 treated households with 35 different control households.

<details>
<summary>Reveal the transfer check</summary>

The first uses 30 paired within-household differences and a one-sample SE for their mean. The second uses two independent means and an SE of the form $\sqrt{s_1^2/30+s_0^2/35}$. Neither procedure alone establishes causality; assignment and implementation evidence are still needed.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. One mean and paired differences

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [One mean and paired differences](../../#c16-stop-2)

### Question, model, and strategy

For the order sample, apply a one-sample Student $t$ procedure to the 36 quantitative observations. For the stores, first reduce each pair to one within-store difference and then apply the same one-sample logic to the 16 differences.

### Complete solution

#### One mean

The estimated standard error is

$$
\widehat{\mathrm{SE}}(\bar X)
=\frac{12}{\sqrt{36}}
=2\mkern3mu\mathrm{minutes}.
$$

The observed statistic is

$$
t_{\mathrm{obs}}
=\frac{74-70}{2}
=2.
$$

Using 35 degrees of freedom, the 95% interval is

$$
74\pm2.030(2)
=[69.94,78.06]\mkern3mu\mathrm{minutes}.
$$

The supplied two-sided p-value is 0.0533, which exceeds 0.05, so fail to reject $H_0:\mu=70$ at the 5% level. The interval includes 70 and therefore gives the matching decision. The test and interval are close to the boundary; “fail to reject” is not proof that $\mu=70$.

The reference procedure requires the stated random-sampling mechanism, independent observations or a valid treatment of dependence, consistent measurement, no severe outlier or shape problem for this sample size, and the Student $t$ approximation to be appropriate. Its population conclusion reaches only the population actually represented by the sampling process.

#### Paired differences

The unit for inference is one store difference. Its estimated standard error is

$$
\widehat{\mathrm{SE}}(\bar D)
=\frac{4}{\sqrt{16}}
=1\mkern3mu\mathrm{minute}.
$$

The statistic is

$$
t_{\mathrm{obs}}
=\frac{-3.5-0}{1}
=-3.5.
$$

Using 15 degrees of freedom, the 95% interval is

$$
-3.5\pm2.131(1)
=[-5.631,-1.369]\mkern3mu\mathrm{minutes}.
$$

The supplied p-value 0.0032 is below 0.05, so reject a zero mean before–after difference. The negative estimate says handling time after the change is 3.5 minutes lower on average among these store pairs.

Treating the before and after columns as 32 independent observations discards their within-store covariance and uses the wrong sampling unit. Pairing corrects that dependence issue, but a before–after comparison alone can still be affected by time trends, concurrent changes, measurement differences, or selection. It does not by itself identify a causal workflow effect.

### Verification and limitation

Each interval is estimate plus or minus critical value times the corresponding one-sample SE. The paired analysis is valid only after the sign and definition of every difference are kept consistent.

### Nearby transfer

Before opening the check, 25 paired observations have mean difference 2 and difference SD 5. Using $t^\star_{0.975,24}=2.064$, calculate the paired SE, statistic for zero, and 95% interval.

<details>
<summary>Reveal the transfer check</summary>

The paired SE is $5/\sqrt{25}=1$, the statistic is 2, and the interval is $2\pm2.064(1)=[-0.064,4.064]$. The interval narrowly includes zero.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Two independent means in `bwght`

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Two independent means in the birth-weight data](../../#c16-stop-3) and [A mean difference is not automatically causal](../../#c16-stop-4)

### Question, data, and strategy

The target contrast is smoking minus nonsmoking. Under the exercise's simplified teaching assumption that the displayed records can be treated as independent, calculate the difference in original units, combine the two estimated mean variances without pooling the group SDs, and interpret the result within the observational design.

### Complete solution

The estimated mean difference is

$$
\widehat\Delta
=111.1462-120.0612
=-8.9150\mkern3mu\mathrm{ounces}.
$$

The Welch estimated standard error is

$$
\begin{aligned}
\widehat{\mathrm{SE}}(\widehat\Delta)
&=\sqrt{\frac{19.1814^2}{212}+\frac{20.2685^2}{1176}}\\
&\approx1.4439\mkern3mu\mathrm{ounces}.
\end{aligned}
$$

The observed statistic for a zero difference is

$$
t_{\mathrm{obs}}
=\frac{-8.9150}{1.4439}
\approx-6.1743.
$$

With Welch degrees of freedom 302.3 and $t^\star=1.9678$, the 95% interval is

$$
-8.9150\pm1.9678(1.4439)
\approx[-11.7564,-6.0736]\mkern3mu\mathrm{ounces}.
$$

The supplied p-value below 0.0001 leads to rejection of equal recorded-group means at 5%. In these records, the smoking group has mean recorded birth weight about 8.915 ounces lower; the interval gives a range of plausible population-contrast values only under the sampling and reference assumptions supplied for that target.

The reference procedure requires independent units across the compared groups or a dependence-aware alternative, comparable measurement, a stable group definition, adequate group sizes or distributional conditions for the Welch reference, and inspection for influential outliers. Here independence is a simplified teaching-model assumption, not a documented property of the CSV. The original survey had a complex design, so design-aware analysis would be needed for formal population inference. Missingness, sampling, and selection also matter for the target.

Smoking was recorded rather than randomly assigned. Income, education, health, behavior, selection, measurement, and other differences can confound the comparison. The file also does not automatically form a probability sample of current births. Precision about an observational historical contrast does not create causal identification or external validity.

### Verification and limitation

The interval center equals the point estimate, its half-width is approximately $1.9678(1.4439)=2.8414$ ounces, and zero lies far outside it. These arithmetic checks do not alter the design boundary.

### Nearby transfer

Before opening the check, independent groups have $n_1=81,\bar x_1=26,s_1=9$ and $n_0=100,\bar x_0=22,s_0=10$. Calculate the difference, large-sample SE, standardized statistic for zero, and 95% interval using 1.96.

<details>
<summary>Reveal the transfer check</summary>

The difference is 4, the SE is $\sqrt{81/81+100/100}=\sqrt2\approx1.4142$, the statistic is $4/\sqrt2\approx2.8284$, and the interval is approximately $[1.228,6.772]$ in the outcome units.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. One proportion, two standard errors

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [A proportion is a binary mean](../../#c16-stop-5)

### Question, model, and strategy

The sample proportion is the mean of 120 binary outcomes. Use the observed proportion to estimate uncertainty around the estimate, and use the null value to construct the reference standard error for the zero-benchmark test.

### Complete solution

The sample proportion is

$$
\widehat p=\frac{72}{120}=0.60.
$$

There are 72 observed successes and 48 failures. The estimate-based standard error is

$$
\widehat{\mathrm{SE}}_{\mathrm{est}}(\widehat p)
=\sqrt{\frac{0.60(0.40)}{120}}
\approx0.04472.
$$

The 95% Wald interval is

$$
0.60\pm1.96(0.04472)
\approx[0.5123,0.6877].
$$

For $H_0:p=0.50$, the null-based standard error is

$$
\mathrm{SE}_0(\widehat p)
=\sqrt{\frac{0.50(0.50)}{120}}
\approx0.04564.
$$

The statistic is

$$
z_{\mathrm{obs}}
=\frac{0.60-0.50}{0.04564}
\approx2.1909.
$$

The supplied two-sided p-value 0.0285 is below 0.05, so reject $H_0:p=0.50$ at 5%. The estimate-based interval also excludes 0.50, although a Wald interval and a null-based test are not exact algebraic inverses because they use different standard errors.

The observed success and failure counts exceed common large-sample thresholds, as do the null-expected counts 60 and 60. Interpretation still requires the stated sampling process, independent observations or an appropriate dependence adjustment, consistent binary measurement, and a clearly defined population target. Near-boundary proportions or small counts would make this Wald method unreliable.

### Verification and limitation

The estimate-based interval is centered at 0.60 and its half-width is approximately 0.08765. The null statistic uses 0.50 in both the numerator benchmark and reference variance, which explains the small numerical SE difference.

### Nearby transfer

Before opening the check, 45 of 75 independent observations are successes. Calculate the sample proportion, estimate-based SE, success and failure counts, and approximate 95% Wald interval.

<details>
<summary>Reveal the transfer check</summary>

$\widehat p=0.60$, the SE is $\sqrt{0.24/75}\approx0.05657$, the counts are 45 and 30, and the interval is approximately $[0.4891,0.7109]$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Two proportions in `bwght`

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Two proportions in the birth-weight data](../../#c16-stop-6)

### Question, data, and strategy

Convert the two threshold counts into group proportions, keep the observed group variances separate in the unpooled SE, and interpret the contrast as a difference in low-birth-weight rates rather than a difference in mean ounces.

### Complete solution

The group proportions are

$$
\widehat p_1=\frac{20}{212}\approx0.09434
$$

and

$$
\widehat p_0=\frac{63}{1176}\approx0.05357.
$$

The smoking-minus-nonsmoking difference is

$$
\widehat\Delta_p
=\widehat p_1-\widehat p_0
\approx0.04077,
$$

or about 4.08 percentage points.

The smoking group has 20 low-birth-weight and 192 other records; the nonsmoking group has 63 and 1,113. All four counts exceed common large-sample thresholds.

The unpooled estimated standard error is

$$
\begin{aligned}
\widehat{\mathrm{SE}}(\widehat\Delta_p)
&=\sqrt{
\frac{0.09434(1-0.09434)}{212}
+
\frac{0.05357(1-0.05357)}{1176}
}\\
&\approx0.02112.
\end{aligned}
$$

The 95% Wald interval is

$$
0.04077\pm1.96(0.02112)
\approx[-0.00063,0.08217],
$$

or approximately $[-0.063,8.217]$ percentage points.

The matching unpooled standardized statistic is

$$
z_{\mathrm{obs}}
=\frac{0.04077}{0.02112}
\approx1.9301.
$$

The supplied two-sided p-value 0.0536 exceeds 0.05, so fail to reject equal proportions at 5%. The interval includes zero, which means a zero difference is not excluded by this approximate procedure; it does not prove that the group proportions are equal or that the true difference is practically negligible.

Problem 3 uses the entire quantitative birth-weight outcome to compare means in ounces. This problem records only whether each birth falls below 88 ounces and compares rates in percentage points. Both are observational comparisons by recorded smoking status and share the confounding, measurement, selection, historical-population, and external-validity limits.

### Verification and limitation

The interval half-width is approximately $1.96(0.02112)=0.04140$, slightly larger than the point estimate 0.04077, so the lower endpoint is just below zero. Threshold choice changes the target and should not be selected after seeing which result is preferred.

### Nearby transfer

Before opening the check, Group 1 has 24 successes among 200 observations and Group 0 has 10 among 150. Calculate the difference, unpooled SE, and 95% interval using 1.96.

<details>
<summary>Reveal the transfer check</summary>

The proportions are 0.12 and 0.06667, the difference is approximately 0.05333, the unpooled SE is approximately 0.03071, and the interval is approximately $[-0.00685,0.11352]$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Audit the two-outcome report

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connection:** [Choose, report, and audit](../../#c16-stop-7)

### Question, data, and strategy

Verify each target, estimate, standard error, and interval before auditing the bridge from observational group evidence to causality, individual effects, equality, and current-population scope.

### Complete solution

The observational unit is a birth record. The grouping variable is recorded smoking during pregnancy. The quantitative outcome is birth weight in ounces; the binary outcome indicates recorded birth weight below 88 ounces. The two targets are a difference in group mean birth weights and a difference in group low-birth-weight proportions.

The first unsupported step is the opening causal claim. Smoking was not randomly assigned, and the calculation supplies no other identification argument. The word “exactly” also treats an estimate as if it had no uncertainty.

The mean comparison gives

$$
\widehat\Delta\approx-8.9150\mkern3mu\mathrm{ounces}
$$

with 95% interval

$$
[-11.7564,-6.0736]\mkern3mu\mathrm{ounces}.
$$

This is an average group difference, not evidence that every infant experiences the same change. Its small p-value addresses a zero mean-difference benchmark under the reference procedure; it does not prove a common individual effect.

The threshold comparison gives

$$
\widehat\Delta_p\approx0.04077
$$

with 95% interval

$$
[-0.00063,0.08217],
$$

or about $[-0.063,8.217]$ percentage points. Including zero means the procedure does not exclude equality at the 5% level; it does not prove equality or no effect.

Larger samples can reduce standard errors under an appropriate design. They do not balance unmeasured confounders in an observational comparison, repair measurement or selection, make the file a probability sample, or update historical records to current births.

A five-sentence repair is:

> In these historical records, the recorded-smoking group had mean birth weight about 8.915 ounces lower than the nonsmoking group, with a 95% interval from about 6.074 to 11.756 ounces lower. This is an average observational group contrast rather than a common individual effect or an identified causal effect. The recorded-smoking group also had a low-birth-weight rate about 4.08 percentage points higher, with a 95% interval from about 0.063 percentage point lower to 8.217 percentage points higher. Because that interval includes zero, this procedure does not reject equality at 5%, but it does not prove equal rates. Neither comparison by itself removes confounding or establishes representation of current births.

The strongest supported conclusion is descriptive for the recorded groups, with the displayed uncertainty conditional on the simplified independence and reference assumptions. A population conclusion needs a defensible sampling or selection argument for a named target population and, for these survey records, appropriate treatment of the original complex design. A causal conclusion needs random assignment or another identification strategy together with implementation, measurement, and interference assumptions.

For the final unaided transfer, the estimate is

$$
\widehat\Delta=52-49=3.
$$

The large-sample estimated standard error is

$$
\sqrt{\frac{8^2}{64}+\frac{9^2}{81}}
=\sqrt{1+1}
=\sqrt2
\approx1.4142.
$$

The standardized statistic is

$$
z_{\mathrm{obs}}=\frac{3}{\sqrt2}\approx2.1213,
$$

and the approximate 95% interval is

$$
3\pm1.96\sqrt2
\approx[0.228,5.772].
$$

The supplied records show Group 1 with a mean about 3 outcome units higher and an interval excluding zero under the independent-group reference assumptions. With no random sampling or assignment information, the result does not by itself generalize to a broader population or identify a causal group effect.

### Verification and limitation

The two empirical intervals reproduce the Class 16 script and use the correct original units. Rechecking arithmetic cannot supply the missing sampling or identification design.

### Nearby transfer

Before opening the check, two independently randomized groups of 100 study participants have binary-outcome proportions 0.55 and 0.45. Calculate the difference, unpooled SE, and 95% interval, then state the causal and population scopes.

<details>
<summary>Reveal the transfer check</summary>

The difference is 0.10, the unpooled SE is $\sqrt{0.55(0.45)/100+0.45(0.55)/100}\approx0.07036$, and the interval is approximately $[-0.0379,0.2379]$. Random assignment can support an average assignment-effect interpretation for the study participants under the design assumptions, but population generalization requires separate sampling or transport evidence.

</details>

[Return to the solution map](#solution-map)

## Reconstruct before moving on

Close this file and rebuild the procedure map from a blank page. For one mean or proportion and one two-group comparison, state the target, dependence structure, estimated standard error, reference procedure, interval or decision, effect units, and strongest design-supported interpretation.
