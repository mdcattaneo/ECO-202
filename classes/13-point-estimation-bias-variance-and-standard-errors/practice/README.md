# ECO 202 Practice 13: Point Estimation, Bias, Variance, and Standard Errors

**Status:** Complete ungraded practice  
**Last updated:** September 6, 2026<br>
**Class guide:** [Class 13: Point Estimation, Bias, Variance, and Standard Errors](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 13 and before In-Class Exam 3

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Problems 1–5 form the Class 13 core. Problem 6 is a separate cumulative checkpoint across Classes 10–13. Use the compact checks and complete solutions to diagnose and repair your reasoning after a genuine attempt.

<!-- Source lineage: Scope is calibrated against Econ202-UlrichMueller/LectureNotes.tex, Sampling Distributions, Models and Hypothetical Populations, Estimators and Bias, and German Tank Problem; Spring 2026 PS6; selected private historical exam material; and the current Classes 10--13 guides. All wording, numerical settings, audits, and transfers are newly authored. The wage values deliberately reuse the documented current Class 13 teaching experiment. No protected exercise or reserved exam question is reproduced. -->

## Purpose and workload

The Class 13 core route is Problems 1–5 and should take about 55–70 minutes. It moves from statistical objects to estimated uncertainty, bias–variance comparisons, estimator design, and a final mechanism audit. The longer route is deliberate: Problem 4 requires a complete exact sampling-distribution enumeration, and Problem 5 requires a full evidence-chain audit.

Problem 6 is an additional 25–35 minute Exam 3 checkpoint. It is not part of the Class 13 core estimate. Optional software execution, external AI comparison, answer-check study, and worked-solution study take additional time.

| Class 13 core stage | Suggested time | Work |
|---|---:|---|
| Target, rule, and realization | 7–9 minutes | Problem 1 |
| Standard-error interpretation | 8–10 minutes | Problem 2 |
| Bias, variance, and MSE | 9–11 minutes | Problem 3 |
| Estimator design | 15–18 minutes | Problem 4 |
| Mechanism and reporting audit | 16–22 minutes | Problem 5 |

## What you must be able to do independently

After completing the core route, you should be able to:

- distinguish an estimand, estimator, estimate, realized error, sampling distribution, and standard error;
- calculate bias, variance, and mean squared error under a stated sampling model;
- distinguish a true standard error from an estimated standard error and from the spread of individual observations;
- explain why unbiasedness alone does not rank all estimators;
- evaluate a proposed estimator only after identifying the repeated-sampling mechanism;
- distinguish estimator bias from selection, nonresponse, and measurement bias; and
- report an estimate with its target, assumptions, uncertainty, verification, and limitations visible.

## Problem map

| Problem | Bank | Main task | Suggested mode |
|---|---|---|---|
| [1. Target, estimator, and estimate](#problem-1) | Class 13 core | Name the statistical objects before calculating. | Unaided retrieval |
| [2. Three different spreads](#problem-2) | Class 13 core | Separate data SD, true SE, estimated SE, and realized error. | Calculation + interpretation |
| [3. Bias, variance, and MSE](#problem-3) | Class 13 core | Compare an unbiased rule with a lower-variance biased rule. | Board-style calculation |
| [4. A small tank population](#problem-4) | Class 13 core | Build exact sampling distributions for competing estimators. | Estimator design challenge |
| [5. Audit a precise but unsupported report](#problem-5) | Class 13 core | Separate estimator properties from data validity. | Non-AI route or AI comparison |
| [6. Cumulative checkpoint for In-Class Exam 3](#problem-6) | Additional review | Reconstruct one essential task from each of Classes 10–13. | 25–35 minute unaided checkpoint |

## Class 13 core route

<a id="problem-1"></a>

### Problem 1. Target, estimator, and estimate

**Class-guide connection:** [Target, rule, and realized number](../#c13-stop-1)

A company models responses to a precisely worded renewal-intention question as independent Bernoulli trials with a common yes probability $p$. It obtains 100 responses under the modeled conditions and observes 62 “yes” responses. The estimand concerns responses to this question, not actual later renewal behavior.

1. Identify the observational unit, modeled response process, estimand, random estimator, and realized estimate.
2. Explain which of $p$, $\widehat p$, and $0.62$ would change if the same sampling procedure were repeated.
3. Write the sampling distribution's mean and standard error in terms of $p$ under independent Bernoulli sampling.
4. Explain why $\widehat p$ can be unbiased even when the one realized estimate is not equal to $p$.
5. Explain why unbiasedness for the yes-response probability would not by itself make $\widehat p$ unbiased for the proportion who actually renew later.

<!-- Source lineage: Newly authored subscription setting for terminology and interpretation. -->

<details>
<summary>Check after completing Problem 1</summary>

The estimand is the modeled yes-response probability $p$, the estimator is the random sample proportion $\widehat p$, and its realized estimate is $0.62$. Under the stated independent Bernoulli model, $\mathbb E[\widehat p]=p$ and $\mathrm{SE}(\widehat p)=\sqrt{p(1-p)/100}$. Unbiasedness is an average-over-repetitions property and does not equate stated intentions with later renewals.

</details>

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Three different spreads

**Class-guide connection:** [Sampling distributions and standard errors](../#c13-stop-2)

Treat the 526 recorded wages in the Class 13 file as a fixed teaching population. Select 25 rows independently with replacement and estimate the fixed-file mean with the sample mean. The fixed-file target is $5.8961$, the population standard deviation is $3.6896$, one realized sample mean is $5.7184$, and that sample's standard deviation is $3.8517$, all in dollars per hour where applicable.

1. Calculate the true standard error of the sample mean under this teaching model.
2. Calculate the estimated standard error from the one sample.
3. Calculate the one realized estimation error.
4. Explain the distinct meanings of $3.8517$, the true standard error, the estimated standard error, and the realized error.
5. A simulation repeats the estimator 10,000 times. State where the simulated means should be centered and what their simulated standard deviation should approximate.
6. Explain one claim about a broader labor-market population that this row-sampling simulation cannot establish.

You can complete every part from the supplied values. For an optional reproducibility check after your calculation, run the [Class 13 script](../class-13-estimation-and-standard-errors.R) from the Class 13 folder.

<!-- Source lineage: Original practice using the current documented Class 13 wage row-sampling experiment. -->

<details>
<summary>Check after completing Problem 2</summary>

The true standard error is $3.6896/\sqrt{25}=0.7379$, the estimated standard error is $3.8517/\sqrt{25}=0.7703$, and the realized error is $5.7184-5.8961=-0.1777$. The simulated center and standard deviation should be close to $5.8961$ and $0.7379$.

</details>

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Bias, variance, and MSE

**Class-guide connection:** [Bias, variance, and mean squared error](../#c13-stop-3)

Suppose $X_1,\ldots,X_4$ are independent with $\mathbb E[X_i]=\theta$ and $\mathrm{Var}(X_i)=4$. Consider

$$
T_1=\bar X
\qquad\text{and}\qquad
T_2=0.8\bar X+0.2(8).
$$

1. Derive the bias, variance, and MSE of $T_1$.
2. Derive the bias, variance, and MSE of $T_2$ as functions of $\theta$.
3. Compare the two MSEs at $\theta=10$.
4. Compare the two MSEs at $\theta=14$.
5. Explain why “always choose the unbiased estimator” and “always choose the lower-variance estimator” are both incomplete rules.
6. State what substantive information would be needed before treating 8 as a defensible benchmark rather than a convenient number.

<!-- Source lineage: Newly authored bias--variance comparison developed in Class 13. -->

<details>
<summary>Check after completing Problem 3</summary>

$T_1$ has bias 0, variance 1, and MSE 1. $T_2$ has bias $1.6-0.2\theta$, variance $0.64$, and MSE $0.64+(1.6-0.2\theta)^2$. Its MSE is $0.80$ at $\theta=10$ and $2.08$ at $\theta=14$.

</details>

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. A small tank population

**Class-guide connection:** [The German tank problem](../#c13-stop-4)

A finite population has serial numbers $1,2,3,4,5$, so the unknown-target value in this fully visible teaching case is $m=5$. Select an SRS of $n=2$ distinct serial numbers without replacement. There are $\binom{5}{2}=10$ equally likely samples.

Consider the mean-based rule $T_{\mathrm{mean}}=2\bar X-1$, the raw maximum $M$, and the corrected-maximum rule $T_{\mathrm{max}}=\tfrac{3}{2}M-1$.

1. List all ten possible samples.
2. For each sample, calculate $T_{\mathrm{mean}}$, $M$, and $T_{\mathrm{max}}$.
3. Construct the sampling distribution of each rule.
4. Calculate the expectation and bias of all three rules for $m=5$.
5. Calculate the variance and MSE of the two unbiased rules.
6. Which unbiased rule has smaller MSE in this model? Explain why this finite example does not establish the same ranking under every alternative sampling mechanism or loss.
7. Explain why changing to independent sampling with replacement requires a new calculation rather than the same corrected-maximum formula.

<!-- Source lineage: Newly authored exact finite enumeration inspired by the inherited German tank setting; no legacy numerical exercise is reproduced. -->

<details>
<summary>Check after completing Problem 4</summary>

The mean-based estimates are $2,3,4,5,4,5,6,6,7,8$ across lexicographically ordered samples, with expectation 5 and variance 3. The raw maximum has expectation 4 and bias $-1$. The corrected maximum takes $2$ once, $3.5$ twice, $5$ three times, and $6.5$ four times; it has expectation 5 and variance 2.25.

</details>

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Audit a precise but unsupported report

**Class-guide connection:** [Estimator bias is not data bias](../#c13-stop-5) and [Choose, report, and audit an estimator](../#c13-stop-6)

A website invites visitors to report monthly rent. An analyst receives 40,000 responses, calculates a mean of 2,100 dollars and an estimated standard error of 3 dollars, and writes:

> The sample mean is unbiased, the standard error is tiny, and 40,000 is a huge sample. Therefore the mean rent for every renter in the country is between 2,094 and 2,106 dollars, with no important uncertainty or bias.

First work without assistance.

1. Identify the proposed target, estimator, estimate, and estimated standard error.
2. State the repeated-sampling or response mechanism that would be needed to justify the analyst's unbiasedness claim. Is it supplied?
3. Identify at least three possible gaps involving target definition, coverage, voluntary response, measurement, or dependence.
4. Explain what the small estimated standard error does and does not address.
5. Rewrite the report as the strongest description supported by the supplied information and list the additional evidence needed for a national population claim.

**Complete non-AI route:** Use the seven-part reporting list in Class 13. For each missing link, write the fact or assumption that would be required and one way it could fail. This route is part of the timed core.

**Optional AI comparison outside the recommended time:** After completing the non-AI audit, give an AI system the prompt below and audit whether it separates estimator variability from sample validity.

```text
A website received 40,000 voluntary reports of monthly rent. The sample mean
is 2,100 dollars and the reported estimated standard error is 3 dollars. An
analyst says
the sample mean is unbiased and therefore the national mean rent must be
between 2,094 and 2,106 dollars with no important uncertainty or bias.

Identify the target, estimator, estimate, repeated-sampling mechanism, and
what the standard error measures. Locate the first unsupported step. Audit
coverage, voluntary response, measurement, dependence, target definition,
and external validity. End with the strongest descriptive statement supported
by the supplied information and do not invent a sampling design.
```

<!-- Source lineage: Newly authored reporting audit; no external empirical claim is intended. -->

<details>
<summary>Check after completing Problem 5</summary>

The small reported standard error describes variability only under whatever model produced it. It does not establish probability sampling, national coverage, unbiased response, accurate rent measurement, independence, or an appropriate target. The supported description is that the mean among the 40,000 received reports was 2,100 dollars, subject even there to data-quality questions.

</details>

[Back to the problem map](#problem-map)

## Additional project estimand-selection transfer

Allow 10–15 additional minutes beyond the core route. Write a one-sentence candidate question for your individual empirical project, then identify the observational unit, target population or model, estimand, proposed estimator, and source of repeated-sampling uncertainty. State whether the target is descriptive, predictive, or causal and name the design argument that would be required for that interpretation. If the available data identify only a descriptive quantity, retain that target rather than upgrading the language. This planning exercise is ungraded and not a separate closed-book exam topic.

<a id="problem-6"></a>

## Additional Exam 3 checkpoint

### Problem 6. Cumulative checkpoint for In-Class Exam 3

Set a 25–35 minute timer. Work without AI, notes, software, answer checks, or worked solutions. Show assumptions and distinguish exact calculations from approximations.

#### A. Random variables and moments — Class 10

A random variable $X$ has distribution

| $x$ | 0 | 1 | 3 |
|---|---:|---:|---:|
| $\mathbb P(X=x)$ | 0.50 | 0.30 | 0.20 |

1. Calculate $\mathbb E[X]$, $\mathbb E[X^2]$, $\mathrm{Var}(X)$, and $\mathrm{SD}(X)$.
2. Let $H=\mathbf 1\lbrace X\geq1\rbrace$. Calculate $\mathbb E[H]$, $\mathrm{Cov}(X,H)$, and interpret the sign.

#### B. Sampling distributions — Class 11

Let $X_1,\ldots,X_{100}$ be independent draws from the distribution above and let $\bar X$ be their mean.

1. Give the exact mean and standard error of $\bar X$.
2. If the sample size becomes 400, state exactly how the standard error changes.

#### C. LLN and CLT — Class 12

1. State what the LLN implies for $\bar X$ as $n$ grows.
2. Use the CLT without a continuity correction to approximate $\mathbb P(\bar X>1.0)$ when $n=100$. Use $\Phi(0.8805)\approx0.8107$.
3. Because $\sum_iX_i$ is integer-valued, improve the approximation with a continuity correction at 100.5. Use $\Phi(0.9245)\approx0.8224$.
4. Explain why the LLN alone does not produce either numerical tail probability and why the two CLT approximations differ.

#### D. Estimator quality — Class 13

Compare $T_1=\bar X$ and $T_2=\bar X+0.10$ as estimators of $\mu=\mathbb E[X]$ when $n=100$.

1. Calculate each estimator's bias, variance, standard error, and MSE.
2. Identify which rule has smaller MSE and explain why one realized estimate cannot establish those repeated-sampling properties.
3. State one design or measurement failure that neither estimator calculation addresses.

<!-- Source lineage: Newly authored cumulative checkpoint calibrated to the current Classes 10--13 common core. -->

<details>
<summary>Checkpoint check—open only after the timed attempt</summary>

$\mathbb E[X]=0.9$, $\mathbb E[X^2]=2.1$, $\mathrm{Var}(X)=1.29$, and $\mathrm{SD}(X)\approx1.1358$. Also $\mathbb E[H]=0.5$ and $\mathrm{Cov}(X,H)=0.45$. For $n=100$, $\mathrm{SE}(\bar X)=\sqrt{1.29/100}\approx0.1136$; at $n=400$ it halves. The uncorrected CLT approximation is about $0.1893$; the continuity-corrected approximation is about $0.1776$. $T_1$ has bias 0 and MSE $0.0129$; $T_2$ has bias $0.10$ and MSE $0.0129+0.01=0.0229$.

</details>

[Back to the problem map](#problem-map)

## Suggested study sequence

1. Complete Problems 1–5 and write a one-sentence diagnosis of your weakest distinction.
2. Use only the compact checks to locate arithmetic or interpretation errors.
3. Read a [worked solution](solutions/) only for a problem you genuinely attempted.
4. Close the solution and reconstruct the reasoning from a blank page.
5. Complete the nearby transfer attached to that solution.
6. On a separate study session, complete Problem 6 under the stated unaided timing.

## Personal learning record

In private study notes, record:

- **Independent:** ideas and calculations completed without a hint;
- **Prompted:** work completed after an answer check, question, or strategic cue;
- **Supplied:** reasoning, wording, or computation supplied by AI, a solution, or another source; and
- **Remaining:** one distinction or transfer you still need to reconstruct without assistance.

This record is for self-assessment, not submission or grading.

## Common core and optional extensions

**Common core:** Every object, calculation, interpretation, assumption, and limitation required in Problems 1–6. This includes exact distributions in small examples by enumerating samples or applying elementary probability rules, and bias–variance–MSE comparisons using supplied or directly calculated moments.

**Optional extensions:** Bootstrap and design-based standard errors; alternative loss functions; consistency; general shrinkage and regularization theory; general order-statistic distribution formulas and optimality theory; and software-based exploration beyond the reproducibility check. The elementary estimator comparisons and sample enumerations in the problems above remain common core.
