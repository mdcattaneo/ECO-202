# ECO 202 Practice 12: Laws of Large Numbers and the Central Limit Theorem

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 12: Laws of Large Numbers and the Central Limit Theorem](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 12 and before Class 13

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Complete the recommended route to test whether you can distinguish exact moment results, the LLN, the CLT, and a Normal approximation without assistance. Use compact checks and worked solutions only after a genuine attempt.

<!-- Source lineage: Scope is calibrated against the current Fall 2026 Class 12 guide; Econ202-UlrichMueller/LectureNotes.tex, Averages of Independent Bernoulli RVs through Normal Approximation to Binomial; Spring 2026 PS6; and selected private historical assessments used only for difficulty calibration. Every setting, value, claim, prompt, and transfer below is newly authored. No legacy exercise or reserved assessment wording is reproduced. -->

## Purpose and workload

Problems 1–5 form a 45–55 minute Class 12 core. Begin Problems 1–4 without AI, software, answer checks, or worked solutions; an ordinary calculator and a standard Normal table are fine. Problem 5 includes a complete non-AI audit route and an optional AI comparison. Optional AI use, software verification, answer-check study, and worked-solution study are outside the estimate.

| Stage | Suggested time | Work |
|---|---:|---|
| Recover exact center and spread | 7–9 minutes | Problem 1 |
| Separate LLN, CLT, and exact claims | 7–9 minutes | Problem 2 |
| Approximate a sample-mean tail | 9–11 minutes | Problem 3 |
| Translate a count boundary | 10–12 minutes | Problem 4 |
| Audit and transfer | 12–14 minutes | Problem 5 |

## What you must be able to do independently

After completing the core route, you should be able to:

- derive the mean, variance, and standard deviation of a sample mean under independent, identically distributed sampling;
- explain the square-root relationship between sample size and standard error;
- distinguish the LLN's concentration claim from the CLT's centered-and-scaled distributional approximation;
- standardize a sample mean and calculate a Normal tail probability;
- translate between a Bernoulli proportion and count and use the correct half-unit boundary for a continuity correction;
- distinguish exact model probabilities, asymptotic theorems, Normal approximations, and simulation estimates; and
- explain why a large sample does not make individual observations Normal or repair selection, measurement, or dependence problems.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Center, spread, and the square-root rule](#problem-1) | Derive exact sampling-distribution moments and compare sample sizes. | Unaided board work |
| [2. Which result answers the question?](#problem-2) | Classify exact, LLN, CLT, and unsupported claims. | Unaided theorem audit |
| [3. An average-purchase threshold](#problem-3) | Standardize two sample means and interpret changing tail probabilities. | Unaided calculation |
| [4. A count, a proportion, and a half-unit](#problem-4) | Compare exact, corrected, and uncorrected binomial tails. | Unaided boundary calculation |
| [5. Audit a large-sample report, then transfer](#problem-5) | Separate theorem, approximation, data quality, and scope. | Non-AI audit; optional AI comparison; final unaided transfer |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Center, spread, and the square-root rule

**Class-guide connection:** [What averaging does exactly](../#c12-stop-1)

A retailer models the daily sales totals $X_1,X_2,\ldots$ from comparable stores as independent and identically distributed, with

$$
\mathbb E[X_i]=1200
\qquad\text{and}\qquad
\mathrm{SD}(X_i)=300
$$

in dollars. Let $\bar X_n$ be the average sales total across $n$ modeled stores.

1. Derive $\mathbb E[\bar X_n]$, $\mathrm{Var}(\bar X_n)$, and $\mathrm{SD}(\bar X_n)$ from the rules for expectation and variance. Do not begin from a memorized final formula.
2. Calculate the center and standard deviation of the sampling distribution for $n=25$, $n=100$, and $n=400$.
3. State which results in parts 1–2 are exact without a CLT; then use the formula to explain why multiplying $n$ by four halves the standard error and why reducing it to one-third requires nine times the sample size.
4. If stores in the same region have positively correlated sales, identify which derivation step no longer works and state the direction in which ignoring that dependence would usually distort the calculated spread.

<!-- Source lineage: Newly authored retailer setting and values for exact center/spread reasoning. -->

<details>
<summary>Check after completing Problem 1</summary>

The sampling-distribution mean is 1200 and its standard deviation is $300/\sqrt n$. The standard deviations for $n=25,100,400$ are 60, 30, and 15 dollars. These are exact model results; a Normal shape approximation would require additional justification. Multiplying $n$ by nine reduces the standard error to one-third.

</details>

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Which result answers the question?

**Class-guide connection:** [LLN and CLT answer different questions](../#c12-stop-4)

For each statement below, classify it as an **exact moment claim**, an **LLN claim**, a **CLT claim**, or an **unsupported claim**. Correct every unsupported claim and state the main conditions needed for each valid claim.

1. Under independent sampling with common finite variance $\sigma^2$, $\mathrm{Var}(\bar X_n)=\sigma^2/n$.
2. For every fixed $\varepsilon>0$, $\mathbb P(|\bar X_n-\mu|>\varepsilon)$ tends to zero as $n$ increases.
3. The distribution of $(\bar X_n-\mu)/(\sigma/\sqrt n)$ approaches a standard Normal distribution.
4. Once $n>30$, the individual observations have a Normal distribution.
5. The LLN proves that every successive running average is closer to $\mu$ than the previous one.
6. A small standard error proves that the sampling frame represents the intended target population.
7. In one or two sentences, state the different questions answered by the LLN and CLT without using either theorem's name.

<!-- Source lineage: Newly authored theorem-classification audit based on common introductory misconceptions. -->

<details>
<summary>Check after completing Problem 2</summary>

Statements 1, 2, and 3 are exact-moment, LLN, and CLT claims. Statements 4–6 are unsupported. Neither theorem changes the distribution of individual observations, requires monotone path-by-path convergence, or validates a sampling frame.

</details>

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. An average-purchase threshold

**Class-guide connection:** [A wage-mean tail probability](../#c12-stop-5)

Suppose independent customer purchase amounts have population mean 42 dollars and population standard deviation 18 dollars. The population distribution is right-skewed. Let $\bar X_n$ be the mean purchase amount in an independent sample of $n$ customers.

1. Calculate $\mathbb E[\bar X_{64}]$ and $\mathrm{SD}(\bar X_{64})$ exactly under the stated model.
2. Use the CLT to approximate $\mathbb P(\bar X_{64}>45)$. Show the standardized boundary and interpret the probability in repeated-sampling terms.
3. Repeat the calculation for $n=256$ and explain why the upper-tail probability shrinks even though the population mean and threshold remain unchanged.
4. State one simulation that could assess finite-sample accuracy for both sample sizes if the complete population model were available. Explain why right skew makes the check useful and what the simulation would not establish about real customers.

Use $1-\Phi(1.3333)\approx0.0912$ and $1-\Phi(2.6667)\approx0.0038$ if a Normal table or calculator is unavailable.

<!-- Source lineage: Newly authored purchase-amount setting and values for a sample-mean CLT calculation. -->

<details>
<summary>Check after completing Problem 3</summary>

The exact centers are 42. The standard errors are $18/\sqrt{64}=2.25$ and $18/\sqrt{256}=1.125$. The standardized boundaries are $1.3333$ and $2.6667$, giving approximate upper-tail probabilities $0.0912$ and $0.0038$.

</details>

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. A count, a proportion, and a half-unit

**Class-guide connection:** [Counts, proportions, and the discrete boundary](../#c12-stop-6)

An explicit model treats 80 customer contacts as independent Bernoulli trials with common response probability $p=0.35$. Let $K$ be the number of responses and $\widehat p=K/80$.

1. State the exact model distribution of $K$ and calculate its mean and standard deviation. Check the expected-success and expected-failure counts.
2. Translate “at least 35 responses” into equivalent events for $K$ and $\widehat p$, then explain why the continuity-corrected continuous boundary is $34.5$.
3. Standardize $34.5$ and calculate the continuity-corrected Normal approximation to $\mathbb P(K\geq35)$.
4. The exact binomial probability is $0.06540$. Compare it with both the corrected approximation and an uncorrected calculation using boundary 35; report both absolute errors.
5. Explain why a continuity correction cannot repair dependence or a changing response probability across contacts.

Use $1-\Phi(1.5236)\approx0.06380$ and $1-\Phi(1.6408)\approx0.05042$ if needed.

<!-- Source lineage: Newly authored response-count model and threshold for exact versus Normal approximation. -->

<details>
<summary>Check after completing Problem 4</summary>

$K\sim\mathsf{Binomial}(80,0.35)$, with mean 28 and standard deviation $\sqrt{18.2}\approx4.2661$. The corrected $z$ is $1.5236$ and the tail is approximately $0.06380$, only $0.00160$ from the exact value. The uncorrected approximation is $0.05042$, with absolute error $0.01498$.

</details>

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Audit a large-sample report, then transfer

**Class-guide connection:** [When a large-sample argument fails](../#c12-stop-7)

A commuting app invites users in one city to report yesterday's travel time. Four hundred users respond. An analyst writes:

> Because $n=400>30$, the 400 travel times are Normal and independent. The CLT makes their sample mean exactly Normal and proves that it represents the current citywide mean commute. Four hundred is a large sample, so voluntary response and app coverage no longer matter. Any narrow Normal probability calculation therefore describes all city commuters.

First work without assistance.

1. Identify the observations, statistic, proposed target, and sampling or response mechanism actually described.
2. Separate claims about individual times from claims about the sampling distribution of their mean. In one table, label each Normal claim as exact, approximate, or unsupported and list the independence, common-distribution, finite-variance, and sampling support it would require.
3. Explain why even an accurate Normal approximation under a model would not repair app undercoverage, voluntary response, measurement error, or a mismatch between yesterday and the current citywide target.
4. Rewrite the report as the strongest two- or three-sentence description supported by the supplied facts.

**Complete non-AI route:** Make four columns labeled object, claim, required support, and supplied support. Audit each sentence in order. Then label every surviving statement as exact, asymptotic, approximate, simulated, or descriptive. This route is part of the timed core.

**Optional AI comparison outside the recommended time:** After completing your own audit, use the prompt below and check whether the response preserves every distinction you recorded.

```text
An app invited users in one city to report yesterday's travel time, and 400
users voluntarily responded. An analyst says n>30 makes the individual times
Normal and independent, makes their sample mean exactly Normal and
representative
for the current citywide mean, and removes app coverage and voluntary-response
concerns.

Audit the report sentence by sentence. Distinguish observations from the
sampling distribution of their mean; list the independence, common-distribution,
finite-variance, sampling, and measurement assumptions; label claims as exact,
asymptotic, approximate, or unsupported; and end with the strongest description
supported by the supplied facts. Do not invent a sampling design.
```

**Final unaided transfer:** Close the AI system, prompt, answer checks, and worked solutions. Under a new model, independent repair costs have population mean 80 dollars and population standard deviation 30 dollars. For $n=100$, use the CLT to approximate $\mathbb P(75\leq\bar X_{100}\leq85)$, state the assumptions, and distinguish the exact center and spread from the approximate shape. Use $\Phi(1.6667)\approx0.9522$.

<!-- Source lineage: Newly authored voluntary commuting-app audit and independent repair-cost transfer. -->

<details>
<summary>Check after completing Problem 5</summary>

The 400 observations are reports from responding app users, not a probability sample supplied by the prompt. The CLT concerns a centered and scaled statistic under assumptions; it neither changes the observations nor validates the target population. In the transfer, the standard error is 3, the standardized bounds are $-1.6667$ and $1.6667$, and the approximate probability is $2(0.9522)-1=0.9044$.

</details>

[Back to the problem map](#problem-map)

## Verification and learning record

After checking your work, record the following in personal notes—not in the public repository:

- **Independent:** steps completed without hints;
- **Prompted:** steps completed after a cue;
- **Supplied:** reasoning, numbers, or language supplied by AI or a solution;
- **Remaining:** distinctions or calculations you still cannot reconstruct; and
- **Transfer:** one nearby theorem choice, tail calculation, or audit you will attempt without assistance.

Then close the solutions and reconstruct the first step at which your work diverged.

## Common mistakes to repair

- Using $\sigma/n$ instead of $\sigma/\sqrt n$ for the standard error.
- Calling an exact center-and-spread identity a CLT result.
- Treating the LLN as monotone convergence along every realized path.
- Saying the observations become Normal rather than the standardized sampling distribution of an average becoming approximately Normal.
- Calling a Normal approximation exact.
- Using an integer boundary rather than a half-unit boundary for a continuity-corrected count.
- Treating large sample size as a repair for selection, measurement, dependence, or a poorly defined target.

[← Practice index](../../PRACTICE.md) · [Class 12 guide](../) · [Worked solutions](solutions/)
