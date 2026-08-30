# ECO 202 Practice 14: Hypothesis Tests, p-Values, Statistical Significance, Errors, and Power

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 14: Hypothesis Tests, p-Values, Statistical Significance, Errors, and Power](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 14 and before Class 15

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Complete the 54-minute route to test what you can formulate, calculate, and interpret independently. Compact checks and worked solutions are available for diagnosis after a genuine attempt.

<!-- Source lineage: Scope is calibrated against the current Fall 2026 Class 14 guide; Econ202-UlrichMueller/LectureNotes.tex sections on hypothesis tests, p-values, significance, errors, and power; Spring 2026 PS7 and PS9; and selected private historical assessments used only for difficulty calibration. All practice settings, values, claims, wording, prompts, and transfers are newly authored. Problem 5 uses the documented current jtrain2 summaries; no protected exercise or reserved assessment wording is reproduced. -->

## Purpose and exact workload

Problems 1–5 form one 54-minute Class 14 core. Begin every problem without AI, software, answer checks, or worked solutions; an ordinary calculator and a standard Normal table are fine. In Problem 5, complete the independent-first steps and then choose either the complete non-AI route or the AI comparison route. The two routes have the same required final audit. Optional script execution, answer-check study, and worked-solution study are outside the 54-minute total.

| Stage | Exact suggested time | Work |
|---|---:|---|
| Target, hypotheses, and tail | 7 minutes | Problem 1 |
| Statistic, reference, and p-value | 9 minutes | Problem 2 |
| Statistical versus practical importance | 8 minutes | Problem 3 |
| Errors and power | 12 minutes | Problem 4 |
| Empirical audit and final transfer | 18 minutes | Problem 5 |
| **Total** | **54 minutes** | **Problems 1–5** |

## What you must be able to do independently

After completing the core route, you should be able to:

- identify the target and formulate a null and prespecified one- or two-sided alternative in context;
- calculate a standardized statistic and state the null reference distribution and assumptions used;
- calculate and interpret a p-value using the correct tail or tails;
- apply a level $\alpha$ rule and use reject or fail-to-reject language accurately;
- distinguish statistical significance from effect magnitude and practical importance;
- define Type I and Type II errors and calculate power at a specified alternative under an explicit reference model; and
- audit an empirical testing claim while keeping approximation, randomized assignment, intention-to-treat interpretation, units, assumptions, and external validity visible.

<a id="problem-map"></a>

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Fix the target and direction](#problem-1) | Spiral from Class 13 to an estimand, hypotheses, and tail. | Unaided formulation |
| [2. From a packing-time estimate to a p-value](#problem-2) | Standardize, use the Normal reference, calculate tails, and decide. | Unaided calculation |
| [3. Significant, important, both, or neither?](#problem-3) | Separate zero-benchmark evidence from economic magnitude. | Unaided comparison |
| [4. Type I error, Type II error, and power](#problem-4) | Calculate power under a fully stated shifted-Normal model. | Board-style calculation |
| [5. Audit the job-training conclusion, then transfer](#problem-5) | Verify the empirical result and audit its statistical, causal, and practical scope. | Independent first; non-AI or AI route; final unaided transfer |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Fix the target and direction

**Class-guide connection:** [From a question to hypotheses](../#c14-stop-1)  
**Spiral-back connection:** [Class 13: target, rule, and realized number](../../13-point-estimation-bias-variance-and-standard-errors/#c13-stop-1)

A distribution center models randomly selected packing times as independent observations from its current order process, with common finite mean $\mu$. The outcome is minutes needed to pack one completed order. Management asks whether the current average packing time differs in either direction from a historical benchmark of 12 minutes. A random sample of 100 orders will be used, and the sample mean is $\bar X$.

1. Identify the observational unit, outcome and units, modeled target, estimator, and null benchmark.
2. Write the null and alternative hypotheses in symbols and words.
3. State whether the question calls for a lower-sided, upper-sided, or two-sided test, and identify which estimates would count as evidence against the null.
4. If management instead prespecified the question “Has average packing time increased above 12 minutes?”, rewrite the alternative and identify the relevant tail.
5. Explain why choosing the upper-sided alternative only after observing a sample mean above 12 would invalidate the prespecified interpretation.
6. Across hypothetical repetitions, state which of $\mu$, $\bar X$, and one realized value $\bar x$ is fixed and which is random before sampling.

<!-- Source lineage: Newly authored packing-time setting for estimand, estimator, hypothesis, and tail selection. -->

<details>
<summary>Check after completing Problem 1</summary>

The target is the current modeled mean packing time $\mu$, the estimator is the random sample mean $\bar X$, and the benchmark is 12 minutes. The original question uses $H_0:\mu=12$ against $H_a:\mu\ne12$ and is two-sided. The prespecified increase question uses $H_a:\mu>12$ and the upper tail. The target stays fixed while the estimator and its realized value vary across repetitions.

[Study the complete solution after your attempt](solutions/#solution-1).

</details>

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. From a packing-time estimate to a p-value

**Class-guide connection:** [From an estimate to a null reference](../#c14-stop-2)

Continue Problem 1. The 100-order sample has mean $12.60$ minutes and sample standard deviation $2.50$ minutes. Use the large-sample estimated standard error $2.50/\sqrt{100}=0.25$ minutes and the approximation $Z\mathrel{\dot\sim}\mathsf{N}(0,1)$ under $H_0:\mu=12$. You may use $\mathbb P(\mathsf{N}(0,1)\geq2.40)=0.0082$.

1. Calculate the standardized statistic and interpret its sign and magnitude.
2. Sketch or describe the two reference-distribution tails that count under $H_a:\mu\ne12$.
3. Calculate the two-sided p-value.
4. Interpret that p-value as a probability under the null and procedure; do not assign a probability to the null hypothesis.
5. Apply the two-sided rule at $\alpha=0.05$ and $\alpha=0.01$. Use reject or fail-to-reject language.
6. If the upper-sided alternative $H_a:\mu>12$ had been prespecified, calculate its p-value and decision at both levels. Explain why this does not license a post-data direction change.
7. State the sampling, measurement, standard-error, and large-sample assumptions needed for the approximation and interpretation. Identify one limitation a small p-value would not remove.

<!-- Source lineage: Newly authored continuation of the packing-time setting with new numerical inputs. -->

<details>
<summary>Check after completing Problem 2</summary>

The estimated standard error is $0.25$, so $z=(12.60-12)/0.25=2.40$. The two-sided p-value is $2(0.0082)=0.0164$: reject at 5% and fail to reject at 1%. The prespecified upper-sided p-value is $0.0082$, which rejects at both levels. Every probability statement remains conditional on the null reference approximation and its assumptions.

[Study the complete solution after your attempt](solutions/#solution-2).

</details>

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Significant, important, both, or neither?

**Class-guide connection:** [Audit a significance claim](../#c14-stop-6)

Two separate randomized pilot programs estimate effects on monthly household energy costs. Each effect is program assignment minus control, measured in dollars per household per month; a negative effect means lower costs. Program A estimates an effect of $-2$ dollars with estimated standard error $0.75$ dollar and a two-sided Normal-reference p-value of $0.0077$. Program B estimates an effect of $-12$ dollars with estimated standard error $8$ dollars and a two-sided Normal-reference p-value of $0.1336$. Before either study, decision makers defined a reduction of at least 8 dollars per month as practically meaningful.

1. Verify the standardized statistics for Programs A and B.
2. Apply a two-sided level-0.05 test of a zero effect for each program.
3. Which program has the larger estimated effect in absolute economic units? Which has stronger standardized evidence against zero?
4. Explain why Program A's statistical significance does not show that it meets the 8-dollar practical benchmark.
5. Explain why Program B's failure to reject zero does not prove that its effect is zero or practically unimportant.
6. State what additional design, uncertainty, cost, implementation, and population information would be needed before recommending either program. Do not rank the programs from the two p-values.

<!-- Source lineage: Newly authored paired-pilot comparison for statistical versus practical significance. -->

<details>
<summary>Check after completing Problem 3</summary>

Program A has $z=-2/0.75=-2.667$ and rejects zero at 5%, but its estimate is only a 2-dollar reduction. Program B has $z=-12/8=-1.50$ and fails to reject zero at 5%, although its point estimate is a 12-dollar reduction. The p-values do not rank economic importance or establish that either true effect crosses the prespecified 8-dollar benchmark.

[Study the complete solution after your attempt](solutions/#solution-3).

</details>

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Type I error, Type II error, and power

**Class-guide connections:** [Decisions and two kinds of error](../#c14-stop-4) and [Power is a property of a procedure](../#c14-stop-5)

A randomized outreach study estimates an average intention-to-treat effect $\delta$ on an application-completion rate, measured in percentage points. For this planning exercise, treat the estimator's reference model as

$$
\widehat\delta\mathrel{\dot\sim}\mathsf{N}(\delta,2^2).
$$

Test $H_0:\delta=0$ against $H_a:\delta\ne0$ at $\alpha=0.05$ using $Z=\widehat\delta/2$ and the rule $|Z|>1.96$. The reference standard error 2 is treated as fixed across the alternatives considered.

1. Describe a Type I error in the outreach setting.
2. Describe a Type II error at the specific alternative $\delta=3$ percentage points.
3. Translate the rejection rule into critical values for $\widehat\delta$ in percentage points.
4. Under $\delta=3$, show that $Z\mathrel{\dot\sim}\mathsf{N}(1.5,1)$ and calculate power using $\mathbb P(\mathsf{N}(0,1)>0.46)=0.3228$ and $\mathbb P(\mathsf{N}(0,1)<-3.46)=0.0003$.
5. Calculate the Type II error probability at $\delta=3$.
6. Suppose four times as many units under an otherwise comparable independent design halves the reference standard error to 1. Under $\delta=3$, use $\mathbb P(\mathsf{N}(0,1)>-1.04)=0.8508$ and a negligible opposite tail to approximate power. Explain the change.
7. With design and alternative fixed, explain how lowering $\alpha$ affects Type I error and power.

<!-- Source lineage: Newly authored outreach reference model and power calculations. -->

<details>
<summary>Check after completing Problem 4</summary>

The critical estimate boundaries are $\pm3.92$ percentage points. At $\delta=3$, power is $0.3228+0.0003=0.3231$ and the Type II error probability is $0.6769$. Halving the standard error shifts the alternative reference distribution from 1.5 to 3 standard-error units and raises approximate power to $0.8508$. Lowering $\alpha$ reduces Type I error but also reduces power at the fixed alternative.

[Study the complete solution after your attempt](solutions/#solution-4).

</details>

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Audit the job-training conclusion, then transfer

**Class-guide connections:** [Test the job-training benchmark](../#c14-stop-3) and [Audit a significance claim](../#c14-stop-6)

The historical [`jtrain2` data and provenance notes](../data/README.md) describe a randomized job-training study. Assignment to training includes 185 participants and assignment to control includes 260. Mean 1978 real earnings are 6.3491 and 4.5548, and group standard deviations are 7.8674 and 5.4838, all in thousands of 1982 dollars where applicable. The large-sample unpooled estimated standard error for the difference in means is $0.6710$.

An executive summary states:

> Random assignment and $p=0.00749$ show only a 0.749% chance that training is ineffective. Training raises every participant's earnings by exactly 1,794 dollars, the gain must exceed the program's cost, and the same result applies to current workers. Because the result is significant at 1%, there is at most a 1% chance that this conclusion is wrong.

#### Independent-first steps

Complete these steps before using either route below:

1. identify the randomized unit, factor and levels, outcome and units, and the finite-study-group average intention-to-treat estimand $\tau$;
2. write $H_0:\tau=0$ and the two-sided alternative, calculate the difference, verify $z=1.7943/0.6710$, and use the supplied two-sided p-value to decide at $\alpha=0.05$, $0.01$, and $0.001$;
3. underline the first unsupported statement in the executive summary and mark every later leap involving p-value meaning, individual effects, practical importance, causality, or external validity; and
4. draft the strongest two-sentence conclusion supported by the randomized assignment and approximate test.

Then choose one of the following routes. Both routes must produce the same final six-part audit: target and hypotheses; arithmetic and decision; p-value meaning; approximation and assumptions; internal causal scope; and magnitude, practical importance, and external-validity limits.

#### Complete non-AI route

1. **Target and hypotheses:** Write the intention-to-treat target for the randomized participants, not an effect of treatment received or an effect for every worker.
2. **Arithmetic and decision:** Verify the estimate, statistic, p-value, and three threshold decisions.
3. **p-Value meaning:** Rewrite $0.00749$ as a probability about statistics under the zero-effect null and procedure, not a probability that training is ineffective.
4. **Approximation and assumptions:** Label the Normal reference as approximate and list random-assignment implementation, preserved assigned groups, comparable outcome observation, stable treatment, no important interference, and the requirements for the large-sample standardized-statistic approximation.
5. **Causal scope:** State what random assignment can support for the study group and why assignment is not treatment received.
6. **Magnitude and reach:** Preserve the estimate and 1982-dollar units, request a cost benchmark, and refuse claims about every participant or current populations without further evidence.

#### AI comparison route

Only after completing the independent-first steps, copy the prompt below into an AI interface. Do not upload personal, student, or restricted information. Check the response against the same six-part audit required by the non-AI route.

```text
A historical randomized job-training study assigned 185 participants to
training and 260 to control. Mean 1978 real earnings were 6.3491 and 4.5548,
with group SDs 7.8674 and 5.4838, in thousands of 1982 dollars. The assigned-
group difference is 1.7943, its large-sample unpooled estimated SE is 0.6710,
Z = 2.6741, and the two-sided Normal-reference p-value is 0.00749.

Audit this executive summary: "Random assignment and p = 0.00749 show only a
0.749% chance that training is ineffective. Training raises every participant's
earnings by exactly 1,794 dollars, the gain must exceed the program's cost, and
the same result applies to current workers. Because the result is significant
at 1%, there is at most a 1% chance that this conclusion is wrong."

Produce six labeled parts: target and hypotheses; arithmetic and threshold
decisions at alpha 0.05, 0.01, and 0.001; correct p-value meaning; approximation
and assumptions; internal causal scope; and magnitude, practical importance,
and external-validity limits. Identify the first unsupported statement and
every later leap. End with a defensible two-sentence conclusion and a checklist
that lets me verify every numerical and interpretive claim. Do not invent cost,
compliance, attrition, sampling, or current-population evidence.
```

**Optional reproducibility check outside the 54-minute route:** Run the [Class 14 script](../class-14-hypothesis-tests-and-power.R) from the Class 14 folder and compare its output with your arithmetic. The [Class 14 figure](../figures/jtrain2-testing-and-power.png) shows the reference tails and the explicitly modeled power comparison.

#### Final unaided transfer

Close any AI output, answer checks, and solutions. A randomized appointment-reminder study defines $\rho$ as the finite-study-group average intention-to-treat effect of reminder assignment on the missed-appointment rate, measured in percentage points as reminder minus control. It reports $\widehat\rho=-4.8$ percentage points and a large-sample estimated standard error of $2.0$ percentage points. Test $H_0:\rho=0$ against $H_a:\rho\ne0$ with a standard Normal reference approximation. Use $\mathbb P(\mathsf{N}(0,1)\geq2.40)=0.0082$.

1. Calculate the statistic and two-sided p-value and decide at $\alpha=0.05$ and $0.01$.
2. Interpret the sign, magnitude, p-value, and decision without claiming that every participant's outcome changed.
3. State one internal-validity assumption, one practical-importance question, and one external-validity question that the calculation does not answer.

<!-- Source lineage: Current documented jtrain2 summaries with a newly authored executive-summary audit, route, prompt, and appointment-reminder transfer. -->

<details>
<summary>Check after completing Problem 5</summary>

For `jtrain2`, $\widehat\tau=1.7943$, $z=2.6741$, and $p=0.00749$: reject at 5% and 1% but fail to reject at 0.1%. The p-value is not a probability that the null is true, and the randomized comparison estimates an average assignment effect for the study group under assumptions, in thousands of 1982 dollars. In the transfer, $z=-2.40$ and the two-sided p-value is $0.0164$, so reject at 5% and fail to reject at 1%.

[Study the complete solution after your attempt](solutions/#solution-5).

</details>

[Back to the problem map](#problem-map)

## Verification and personal learning record

After checking your work, record the following in personal notes—not in the public repository:

- **Independent:** formulations, calculations, and interpretations completed without hints;
- **Prompted:** work completed after a cue, compact check, or verification question;
- **Supplied:** reasoning, numbers, wording, or code supplied by AI or a worked solution;
- **Remaining:** steps you still cannot reconstruct or explain independently; and
- **Transfer:** one nearby hypothesis, tail choice, p-value calculation, or power question you will attempt without assistance.

Then close the solutions and reconstruct the first step at which your work diverged.

## Common mistakes to repair

- Writing hypotheses about a realized estimate rather than the target parameter or estimand.
- Choosing a one-sided alternative after seeing the estimate's direction.
- Omitting the null reference distribution or treating an approximation as exact.
- Interpreting a p-value as the probability that the null is true or that a decision is wrong.
- Saying “accept the null” when the procedure only fails to reject it.
- Treating statistical significance as a measure of effect size or practical importance.
- Reporting power without naming the alternative, significance level, standard error, and decision rule.
- Turning random assignment into a claim about treatment receipt, every individual, or an unsampled population.

Class 15 will connect this testing framework to confidence intervals. No confidence-interval construction is needed in this practice.
