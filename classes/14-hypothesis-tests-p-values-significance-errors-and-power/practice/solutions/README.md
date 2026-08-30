# ECO 202 Practice 14: Hypothesis Tests, p-Values, Statistical Significance, Errors, and Power — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 14: Hypothesis Tests, p-Values, Statistical Significance, Errors, and Power](../)  
**Class guide:** [Class 14: Hypothesis Tests, p-Values, Statistical Significance, Errors, and Power](../../)

[← Return to Practice 14](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt each problem and inspect its compact check before reading the corresponding solution. Compare your target, tail, reference model, calculation, decision, assumptions, and interpretation—not only the final number.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Practice 14 module. All calculations were independently checked analytically and with R. Inherited materials calibrated scope and difficulty only; no protected exercise, wording, or reserved assessment solution is reproduced. -->

## How to study a solution

Find the first step where your reasoning differed from the solution. Close the page, reproduce that step without looking, and attempt the nearby transfer before revealing its check. Reading a correct test calculation is not evidence that you can reconstruct or interpret it independently.

## Solution map

1. [Fix the target and direction](#solution-1)
2. [From a packing-time estimate to a p-value](#solution-2)
3. [Significant, important, both, or neither?](#solution-3)
4. [Type I error, Type II error, and power](#solution-4)
5. [Audit the job-training conclusion, then transfer](#solution-5)

<a id="solution-1"></a>

## Solution 1. Fix the target and direction

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [From a question to hypotheses](../../#c14-stop-1)

### Question, target, and strategy

Name the fixed target and random rule before writing hypotheses. Then let the substantive question, not the observed estimate, determine whether departures in one or both directions count as evidence.

### Complete solution

The observational unit is one completed order. The outcome is its packing time in minutes. The modeled target $\mu$ is the current mean packing time for the distribution center's order process, and the estimator is the random sample mean

$$
\bar X=\frac{1}{100}\sum_{i=1}^{100}X_i.
$$

The benchmark is 12 minutes. The original question asks whether the average differs in either direction, so the hypotheses are

$$
H_0:\mu=12
\qquad\text{against}\qquad
H_a:\mu\ne12.
$$

This is a two-sided test. Estimates sufficiently far below 12 or sufficiently far above 12 count against the null after distance is measured relative to the estimator's uncertainty.

The prespecified increase question instead uses

$$
H_0:\mu=12
\qquad\text{against}\qquad
H_a:\mu>12.
$$

Only unusually large positive departures count, so it uses the upper tail. Selecting that direction after observing a value above 12 would make the tail choice depend on the same evidence being evaluated. The resulting one-sided p-value would no longer have the claimed prespecified repeated-sampling interpretation.

Across hypothetical repetitions, the process mean $\mu$ is the fixed target. Before sampling, $\bar X$ is a random variable because different samples produce different values. After one sample, $\bar x$ is the realized estimate; a new repetition would generally produce a different realization.

### Verification and limitations

The hypotheses use minutes and concern the current modeled process. They do not by themselves show that the 100 orders were selected as stated, that packing times were measured consistently, or that the current process matches the historical process that produced the benchmark.

### Nearby transfer

Before opening the check, suppose management asks whether current average packing time has fallen below 12 minutes. Write the alternative, name the tail, and state which estimate directions count against the null.

<details>
<summary>Reveal the transfer check</summary>

Use $H_a:\mu<12$ and the lower tail. Estimates sufficiently far below 12 count against the null; estimates above 12 do not support this prespecified alternative.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. From a packing-time estimate to a p-value

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [From an estimate to a null reference](../../#c14-stop-2)

### Question, model, and strategy

Measure the observed estimate's distance from the null in estimated standard-error units. Then use the tail structure selected in Problem 1 and interpret every probability under the null reference approximation.

### Complete solution

The estimated standard error is supplied and can be checked from the sample standard deviation:

$$
\widehat{\mathrm{SE}}(\bar X)=\frac{2.50}{\sqrt{100}}=0.25\text{ minute}.
$$

The observed statistic is

$$
z_{\mathrm{obs}}
=\frac{12.60-12}{0.25}
=2.40.
$$

The positive sign says the estimate is above the null benchmark. Its magnitude says the estimate is 2.4 estimated standard errors above 12.

For $H_a:\mu\ne12$, equally large departures in either direction count. The two-sided p-value is

$$
p\approx \mathbb P_0(|Z|\geq2.40)
=2\mathbb P(\mathsf{N}(0,1)\geq2.40)
=2(0.0082)
=0.0164.
$$

If the null benchmark and reference approximation were correct and the procedure were repeated, about 1.64% of standardized statistics would be at least as far from zero as 2.40 in either direction. This is not a 1.64% probability that $H_0$ is true.

Because $0.0164<0.05$, reject $H_0$ at the 5% level. Because $0.0164>0.01$, fail to reject $H_0$ at the 1% level. The conclusions differ because the 1% rule requires more extreme evidence.

For the upper-sided alternative prespecified before sampling,

$$
p\approx \mathbb P_0(Z\geq2.40)=0.0082.
$$

This p-value is below both 0.05 and 0.01, so the upper-sided procedure rejects at both levels. The calculation is legitimate only for the direction chosen before inspecting the result.

The interpretation requires a defensible random-selection or repeated-sampling model, independence or an uncertainty calculation that handles dependence, common and consistently measured packing times for the target process, a finite variance, an appropriate estimated standard error, and an adequate large-sample approximation. A small p-value does not repair nonrandom order selection, changed measurement, process drift, or a target that differs from the historical benchmark's setting.

### Verification and limitations

The estimated difference is $0.60$ minute and the estimated standard error is $0.25$ minute, so a statistic slightly above 2 is directionally sensible. The two-sided p-value must be twice the prespecified upper-tail value in this positive, symmetric-reference example.

### Nearby transfer

Suppose a new sample gives $\bar x=11.55$ and estimated standard error $0.25$. Use $\mathbb P(\mathsf{N}(0,1)\geq1.80)=0.0359$ to calculate the two-sided p-value and the prespecified lower-sided p-value. Decide at 5%.

<details>
<summary>Reveal the transfer check</summary>

$z=(11.55-12)/0.25=-1.80$. The two-sided p-value is $2(0.0359)=0.0718$, so fail to reject at 5%. The prespecified lower-sided p-value is $0.0359$, so that procedure rejects at 5%.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Significant, important, both, or neither?

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Audit a significance claim](../../#c14-stop-6)

### Question, target, and strategy

Keep three comparisons distinct: estimate versus zero, estimate in economic units, and the practical benchmark chosen by decision makers. A p-value for zero does not directly test whether an effect reaches an 8-dollar threshold.

### Complete solution

For Program A,

$$
z_A=\frac{-2}{0.75}=-2.6667,
$$

which corresponds to the supplied two-sided p-value $0.0077$. Because $0.0077<0.05$, reject the zero-effect null at 5%.

For Program B,

$$
z_B=\frac{-12}{8}=-1.50,
$$

which corresponds to the supplied two-sided p-value $0.1336$. Because $0.1336>0.05$, fail to reject the zero-effect null at 5%.

Program B has the larger estimated absolute effect: a 12-dollar reduction rather than a 2-dollar reduction. Program A has the stronger standardized evidence against zero because its estimate is much larger relative to its estimated standard error.

Program A's point estimate is a 2-dollar reduction, smaller than the prespecified practically meaningful reduction of 8 dollars. Its small p-value supplies evidence against zero under the reference procedure; it does not turn 2 dollars into 8 dollars or test the practical benchmark.

Program B's point estimate is a 12-dollar reduction, which exceeds the practical benchmark in magnitude, but its estimate is imprecise relative to zero. Failing to reject zero does not prove a zero effect, and the point estimate alone does not establish that the true effect reaches 8 dollars.

A recommendation would need comparable assignment and implementation designs, outcome measurement, costs, uncertainty evaluated against the substantive benchmark, compliance and attrition evidence, possible harms, program capacity, and a defensible target population. The p-values cannot rank the true economic effects because they combine magnitude with uncertainty and arise from different studies.

### Verification and limitations

The smaller absolute estimate has the smaller p-value because its estimated standard error is far smaller. This contrast is exactly why statistical significance and practical importance must be reported separately.

### Nearby transfer

Program C estimates a $-9$ dollar effect with estimated standard error $3$ dollars and two-sided Normal-reference p-value $0.0027$. State what the result does and does not establish relative to zero and the 8-dollar practical benchmark.

<details>
<summary>Reveal the transfer check</summary>

$z=-9/3=-3$, so the result gives strong standardized evidence against zero and its point estimate exceeds the practical benchmark in magnitude. The zero-benchmark p-value does not by itself establish that the true effect reaches 8 dollars, that benefits exceed costs, or that the design and population support the intended decision.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Type I error, Type II error, and power

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connections:** [Decisions and two kinds of error](../../#c14-stop-4) and [Power is a property of a procedure](../../#c14-stop-5)

### Question, model, and strategy

The rejection rule is fixed first. Type I error evaluates it under the null, while Type II error and power evaluate it at a named alternative. Translate the standardized boundary into the estimator's original units before calculating shifted-reference probabilities.

### Complete solution

A Type I error means rejecting the zero average assignment-effect benchmark when the true average intention-to-treat effect for the study group is 0 percentage points. Under the stated reference procedure, its probability is approximately $0.05$.

At the specified alternative $\delta=3$, a Type II error means failing to reject the zero benchmark even though the true average assignment effect is 3 percentage points.

Because $Z=\widehat\delta/2$, the rule $|Z|>1.96$ is equivalent to

$$
|\widehat\delta|>1.96(2)=3.92\text{ percentage points}.
$$

Under $\delta=3$,

$$
\widehat\delta\mathrel{\dot\sim}\mathsf{N}(3,2^2),
$$

so dividing by 2 gives

$$
Z\mathrel{\dot\sim}\mathsf{N}(1.5,1).
$$

The two-sided power is the probability of entering either rejection tail:

$$
\begin{aligned}
\mathrm{Power}(3)
&\approx \mathbb P_3(Z>1.96)+\mathbb P_3(Z<-1.96)\\
&=\mathbb P(\mathsf{N}(0,1)>1.96-1.5)+\mathbb P(\mathsf{N}(0,1)<-1.96-1.5)\\
&=\mathbb P(\mathsf{N}(0,1)>0.46)+\mathbb P(\mathsf{N}(0,1)<-3.46)\\
&=0.3228+0.0003\\
&=0.3231.
\end{aligned}
$$

Therefore

$$
\beta(3)=1-0.3231=0.6769.
$$

If an otherwise comparable design with four times as many independent units halves the reference standard error to 1, then under the same true effect

$$
Z\mathrel{\dot\sim}\mathsf{N}(3,1).
$$

The upper-tail rejection probability is $\mathbb P(\mathsf{N}(0,1)>1.96-3)=\mathbb P(\mathsf{N}(0,1)>-1.04)=0.8508$, and the opposite tail is negligible. Approximate power is therefore $0.8508$. The effect is now three standard-error units from zero rather than 1.5, making it easier for the procedure to distinguish from the null.

Lowering $\alpha$ moves the critical values farther into the tails. With design and alternative fixed, this reduces the Type I error probability but also shrinks the rejection region and reduces power.

### Verification and limitations

Power is about $0.05$ at the null and rises as the alternative moves farther from zero in standard-error units. The calculations are conditional on the shifted-Normal model, fixed reference standard errors, two-sided 5% rule, and the assumption that quadrupling comparable independent information halves the standard error.

### Nearby transfer

Without recalculating every tail, find the approximate power under $\delta=-3$ with standard error 2 and explain your answer.

<details>
<summary>Reveal the transfer check</summary>

The two-sided Normal-reference procedure is symmetric around zero, so effects $3$ and $-3$ have the same power, approximately $0.3231$. The upper and lower rejection-tail contributions exchange roles.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Audit the job-training conclusion, then transfer

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connections:** [Test the job-training benchmark](../../#c14-stop-3) and [Audit a significance claim](../../#c14-stop-6)

### Question, data, and strategy

Verify the numerical evidence first, then audit each bridge from that evidence to an average causal interpretation, individual effects, practical importance, and another population. The non-AI and AI routes should yield the same six-part result.

### Complete solution

#### 1. Target and hypotheses

The randomized unit is a participant. The factor is assignment, with levels training and control. The outcome is 1978 real earnings in thousands of 1982 dollars. The target $\tau$ is the finite-study-group average intention-to-treat effect of assignment to training on that outcome among the randomized participants.

The two-sided hypotheses are

$$
H_0:\tau=0
\qquad\text{against}\qquad
H_a:\tau\ne0.
$$

They concern assignment, not months of training received, and an average, not every participant's individual effect.

#### 2. Arithmetic and decisions

The assigned-group difference is

$$
\widehat\tau=6.3491-4.5548=1.7943
$$

thousand 1982 dollars. The standardized statistic is

$$
z_{\mathrm{obs}}=\frac{1.7943}{0.6710}=2.6741.
$$

The supplied two-sided standard Normal reference calculation gives

$$
p\approx2\mathbb P(\mathsf{N}(0,1)\geq2.6741)=0.00749.
$$

Reject the zero-effect benchmark at $\alpha=0.05$ and $0.01$, but fail to reject at $\alpha=0.001$ because $0.00749>0.001$.

#### 3. p-Value meaning

If the zero-effect null and reference procedure were valid, the approximate probability of obtaining a standardized statistic at least as far from zero as 2.6741 in either direction would be $0.00749$. The first unsupported statement in the executive summary is therefore its opening interpretation: $0.00749$ is not a 0.749% probability that training is ineffective or that the null is true.

Similarly, significance at 1% is a threshold decision under a procedure. It is not a statement that this conclusion has at most a 1% chance of being wrong.

#### 4. Approximation and assumptions

The calculation uses a large-sample unpooled estimated standard error and a standard Normal reference approximation. It is not an exact randomization p-value. Its interpretation requires the documented random assignment to have been implemented, assigned groups to remain the analysis groups, outcomes to be observed comparably, treatment versions to be stable, no important interference, and the large-sample standardized-statistic approximation to be adequate. The data summaries alone cannot establish compliance, attrition, implementation, or measurement quality.

#### 5. Internal causal scope

Under the randomized design and stated assumptions, the comparison can support an average causal interpretation of assignment for the randomized study group. It does not identify the effect of training received, the effect of another month of training, or the effect for every participant. The phrase “every participant's earnings” incorrectly converts an average assignment effect into a common individual treatment-receipt effect.

#### 6. Magnitude, practical importance, and external validity

The estimated magnitude is about $1.7943$ thousand, or approximately $1,794$, in 1982 dollars. The p-value does not show that this gain exceeds program costs; that judgment requires a stated cost and benefit benchmark. Random assignment does not make the study group a random sample from current workers, and historical earnings and program implementation may differ from current settings.

A defensible two-sentence conclusion is: “Participants assigned to training had mean 1978 earnings about 1.794 thousand 1982 dollars higher than participants assigned to control; the approximate two-sided Normal-reference p-value is 0.00749, so the zero average intention-to-treat benchmark is rejected at the 1% level. Under the documented random assignment and stated assumptions, this supports a positive average assignment effect for the randomized study group, but it does not establish every individual's effect, treatment-receipt effects, net practical benefits, or effects for current populations.”

The complete non-AI audit and an acceptable AI response must preserve all six parts. A fluent response that omits the approximation, units, assignment target, or external-validity boundary is incomplete even if it reproduces the p-value.

### Final unaided transfer solution

For the appointment-reminder study,

$$
z_{\mathrm{obs}}=\frac{-4.8}{2.0}=-2.40.
$$

The two-sided p-value is

$$
p\approx2\mathbb P(\mathsf{N}(0,1)\geq2.40)=2(0.0082)=0.0164.
$$

Reject $H_0:\rho=0$ at $\alpha=0.05$ and fail to reject at $\alpha=0.01$. Under the null reference approximation, $0.0164$ is the probability of a standardized statistic at least as far from zero as 2.40 in either direction; it is not the probability that the null is true.

The estimate says reminder assignment is associated, under the randomized design, with an average reduction of 4.8 percentage points in the missed-appointment rate for the study group. It does not say every participant changed. Internal interpretation requires assignment implementation, preserved groups, comparable outcome observation, stable treatment, and no important interference. Practical interpretation requires costs and a meaningful missed-appointment benchmark; external interpretation requires evidence connecting this study group and implementation to another population or setting.

### Verification and limitations

The `jtrain2` difference, standard error, statistic, and p-value reproduce the Class 14 script. Both empirical conclusions preserve assignment, averages, outcome units, approximation, assumptions, and population scope without importing confidence-interval procedures from Class 15.

### Nearby transfer

Suppose the appointment-reminder study had prespecified only a reduction, $H_a:\rho<0$. Calculate the lower-sided p-value and decide at 1%. Explain why the answer would be invalid if the direction were chosen only after observing the negative estimate.

<details>
<summary>Reveal the transfer check</summary>

For $z=-2.40$, the lower-sided p-value is $0.0082$, so reject at 1%. Choosing that direction after seeing the negative estimate would invalidate the prespecified one-sided interpretation.

</details>

[Return to the solution map](#solution-map)

## Reconstruct before moving on

Close this file and reconstruct one complete test from target and hypotheses through statistic, null reference, p-value, decision, possible errors, and interpretation. Label every assumption and say separately what the result establishes about statistical evidence, magnitude, causality, practical importance, and external validity. Class 15 will connect this framework to confidence intervals.
