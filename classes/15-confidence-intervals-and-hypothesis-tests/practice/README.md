# ECO 202 Practice 15: Confidence Intervals and Their Connection to Hypothesis Tests

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 15: Confidence Intervals and Their Connection to Hypothesis Tests](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 15 and before Class 16

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Complete the 55-minute route to test whether you can construct, interpret, compare, and audit confidence intervals independently. Compact checks and worked solutions are available for diagnosis after a genuine attempt.

<!-- Source lineage: Scope is calibrated against the current Fall 2026 Class 15 guide; Econ202-UlrichMueller/LectureNotes.tex sections on test inversion, confidence intervals, repeated-sampling coverage, margin of error, and general inference; Spring 2026 PS8; and selected private historical assessments used only for difficulty calibration. Problems 1--4 and the transfer in Problem 5 use newly authored settings, values, claims, and wording. Problem 5 reuses only the documented current jtrain2 empirical output. No protected exercise or reserved assessment wording is reproduced. -->

## Purpose and exact workload

Problems 1–5 form one exact 55-minute Class 15 core. Begin every problem without AI, software, answer checks, or worked solutions; an ordinary calculator is sufficient. In Problem 5, complete the independent-first steps and then use the complete non-AI route or, optionally, compare your audit with AI. Both routes require the same final report. Optional Class 15 script execution, AI-response time, compact-check study, and worked-solution study are outside the 55-minute total.

| Stage | Exact suggested time | Work |
|---|---:|---|
| Construct an interval | 9 minutes | Problem 1 |
| Interpret repeated-sampling coverage | 10 minutes | Problem 2 |
| Compare confidence, width, and sample size | 10 minutes | Problem 3 |
| Connect compatible intervals and tests | 9 minutes | Problem 4 |
| Audit the empirical interval and transfer | 17 minutes | Problem 5 |
| **Total** | **55 minutes** | **Problems 1–5** |

## What you must be able to do independently

After completing the core route, you should be able to:

- construct an interval from an estimate, estimated standard error, supplied critical value, and stated reference approximation;
- distinguish the fixed target from the random estimator, standard error, and interval endpoints before sampling and from one fixed realized interval afterward;
- state confidence as repeated-sampling coverage of a procedure and reject probability claims about a realized frequentist interval;
- explain and calculate how confidence level, standard error, and comparable sample size affect interval width;
- use a compatible two-sided interval to determine matching two-sided test decisions without treating included values as proved true; and
- audit an empirical interval while preserving the intention-to-treat target, randomized-assignment scope, outcome units, approximation, practical importance, and external-validity limits.

<a id="problem-map"></a>

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Build an interval from its ingredients](#problem-1) | Calculate margin, endpoints, center, width, and a procedure-level interpretation. | Unaided construction |
| [2. What is random, and what does 95% mean?](#problem-2) | Audit realized-interval and repeated-sampling claims. | Unaided coverage audit |
| [3. Confidence, width, and information](#problem-3) | Compare critical values, margins, widths, and sample-size multipliers. | Unaided design calculation |
| [4. Read matching tests from an interval](#problem-4) | Spiral from Class 14 to compatible two-sided interval–test decisions. | Unaided decision map |
| [5. Audit the job-training interval, then transfer](#problem-5) | Verify and report the empirical interval within its statistical, causal, and practical scope. | Independent first; complete non-AI route; optional AI comparison; final unaided transfer |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Build an interval from its ingredients

**Class-guide connection:** [A procedure, not only two endpoints](../#c15-stop-1)

An analyst estimates the current mean invoice-processing delay $\mu$ for a defined business process. The estimate is $\widehat\mu=4.20$ days, its large-sample estimated standard error is $1.25$ days, and the supplied standard Normal critical value for an approximate 95% interval is $z^\star=1.96$.

1. Identify the target, estimate, estimated standard error, confidence level, critical value, and reference approximation.
2. Calculate the margin of error.
3. Calculate the lower and upper endpoints and report their units.
4. Verify that the estimate is the interval center and calculate the full width.
5. State a correct repeated-sampling coverage interpretation that names the target, procedure, and assumptions.
6. Explain why “there is a 95% probability that $\mu$ lies between the two realized endpoints” is not the frequentist interpretation after the interval is calculated.
7. Name one sampling, measurement, dependence, standard-error, or process-definition limitation that narrow endpoints would not remove.

<!-- Source lineage: Newly authored invoice-processing setting and numerical inputs for interval construction and interpretation. -->

<details>
<summary>Check after completing Problem 1</summary>

The margin is $1.96(1.25)=2.45$ days, so the approximate 95% interval is $[1.75,6.65]$ days. Its center is $4.20$ and its width is $4.90$ days. The 95% label describes the long-run coverage of the procedure under its repeated-sampling and reference assumptions, not a post-data probability assigned to the fixed target.

[Study the complete solution after your attempt](solutions/#solution-1).

</details>

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. What is random, and what does 95% mean?

**Class-guide connections:** [What 95% confidence means](../#c15-stop-3) and [What a realized interval does not mean](../#c15-stop-4)

A repeated-sampling model has a fixed target $\theta$. Before each sample, an analyst applies the same approximate 95% procedure $[L(X),U(X)]$. One realized sample produces the interval $[18,26]$. In a separate transparent model check, 187 of 200 independently generated intervals cover the fixed teaching target.

1. Before a sample is observed, classify $\theta$, $\widehat\theta$, the estimated standard error, $L(X)$, and $U(X)$ as fixed or random under the repeated-sampling model.
2. After the interval $[18,26]$ is calculated, state which displayed objects are fixed.
3. Write the mathematical event whose probability is approximately $0.95$ for the interval procedure.
4. Calculate the simulated coverage rate and explain why a rate other than exactly $0.95$ in 200 repetitions does not contradict a 95% procedure.
5. Audit each statement: “95% of individual observations lie between 18 and 26,” “every value inside is equally plausible,” “the fixed target has 95% probability of lying inside these endpoints,” and “the procedure is designed to cover the fixed target in about 95% of repetitions under its assumptions.”
6. Explain why correct model coverage cannot by itself establish that the sampling frame, measurement, standard error, or target population is appropriate for an empirical claim.

<!-- Source lineage: Newly authored realized interval, transparent repetition count, and coverage-claim audit. -->

<details>
<summary>Check after completing Problem 2</summary>

Before sampling, the target is fixed while the estimator, estimated standard error, and endpoints are random. After calculation, 18 and 26 are fixed realized endpoints. The simulated rate is $187/200=0.935$; finite batches fluctuate. Only the final quoted claim gives the frequentist coverage interpretation, conditional on the procedure and assumptions.

[Study the complete solution after your attempt](solutions/#solution-2).

</details>

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Confidence, width, and information

**Class-guide connection:** [Confidence, width, and sample size](../#c15-stop-5)

An estimate is $12$ units with estimated standard error $3$ units. Hold both fixed while comparing approximate central Normal intervals. Use critical values $1.645$ for 90%, $1.960$ for 95%, and $2.576$ for 99%.

1. Calculate each margin of error, interval, and full width.
2. Explain why changing the confidence level changes the critical value and width but not the estimate or supplied standard error.
3. Rank the three intervals from narrowest to widest and connect that ranking to their intended coverage levels.
4. At fixed confidence, state what happens to each margin and width if the standard error falls from 3 to 1.5 units.
5. Under a comparable independent design where standard error scales as $1/\sqrt n$, find the sample-size multiplier needed to reduce width to 80% of its previous value.
6. Under the same planning approximation, find the sample-size multiplier needed for a 99% interval to have the same planned width as the original 95% interval. Use the critical values above.
7. State two design features that could make the square-root planning comparison fail or require adjustment.

<!-- Source lineage: Newly authored abstract interval comparison and sample-size calculations. -->

<details>
<summary>Check after completing Problem 3</summary>

The 90%, 95%, and 99% margins are $4.935$, $5.880$, and $7.728$, giving intervals $[7.065,16.935]$, $[6.120,17.880]$, and $[4.272,19.728]$. Their widths are $9.870$, $11.760$, and $15.456$. Reducing width to 80% requires $1/0.8^2=1.5625$ times the sample size; matching the original 95% width at 99% requires $(2.576/1.960)^2\approx1.727$ times the sample size.

[Study the complete solution after your attempt](solutions/#solution-3).

</details>

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Read matching tests from an interval

**Class-guide connection:** [The interval–test connection](../#c15-stop-6)  
**Spiral-back connection:** [Class 14: decisions and significance levels](../../14-hypothesis-tests-p-values-significance-errors-and-power/#c14-stop-4)

A compatible 90% confidence interval for an effect $\delta$ is $[-0.4,2.6]$. It was constructed from the same estimate, standard error, and two-sided standard Normal reference procedure used for level $0.10$ tests of point null hypotheses $H_0:\delta=\delta_0$.

1. State the rule connecting the interval with each compatible two-sided test.
2. Determine the level $0.10$ decision for $\delta_0=-1$, $0$, $1.5$, and $3$.
3. Explain why failing to reject $0$ or $1.5$ does not prove either value true or assign equal plausibility to all values inside the interval.
4. Calculate the interval center and margin of error.
5. Use $z^\star=1.645$ to recover the estimated standard error. Then calculate the standardized statistic for $H_0:\delta=0$ and verify that its magnitude is below $1.645$.
6. Explain why this central 90% interval cannot be used mechanically for a one-sided test or for a two-sided procedure constructed with a different standard error or reference distribution.

<!-- Source lineage: Newly authored effect interval and point-null decision map for compatible two-sided duality. -->

<details>
<summary>Check after completing Problem 4</summary>

Reject point nulls outside $[-0.4,2.6]$ and fail to reject those inside: reject $-1$ and 3; fail to reject 0 and 1.5. The center is $1.1$, margin is $1.5$, estimated standard error is $1.5/1.645\approx0.912$, and the zero-null statistic is about $1.206$, below $1.645$.

[Study the complete solution after your attempt](solutions/#solution-4).

</details>

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Audit the job-training interval, then transfer

**Class-guide connections:** [Job-training effect and uncertainty](../#c15-stop-2), [What 95% confidence means](../#c15-stop-3), and [Report uncertainty responsibly](../#c15-stop-7)

The historical [`jtrain2` data and provenance notes](../data/README.md) describe a randomized job-training study. The assigned-training minus assigned-control estimate for 1978 real earnings is $1.794343$ thousand 1982 dollars, reported as $1.7943$. The conservative large-sample Neyman design-based estimated standard error is $0.6709967$, reported as $0.6710$, and the standard Normal critical value is $1.959964$, reported as $1.96$.

A project brief states:

> Ninety-five percent of trainees gained between 479 and 3,109 dollars because of training, and there is a 95% probability that the true effect is inside those endpoints. Every effect within the interval is equally likely and all effects outside it are impossible. Since zero is excluded, the program necessarily pays for itself, and randomization makes this result representative of today's workers.

#### Independent-first steps

Complete these steps before using either route below:

1. identify the randomized unit, assignment factor and levels, outcome and units, and finite-study-group average intention-to-treat estimand $\tau$;
2. calculate the margin of error and endpoints and label the procedure as approximate;
3. write the repeated-assignment coverage interpretation, identify what is fixed after the interval is reported, and state the compatible two-sided level $0.05$ decision for $H_0:\tau=0$;
4. underline the first unsupported statement in the project brief and mark every later error about individual effects, probability, equal plausibility, impossibility, practical importance, and external validity; and
5. draft the strongest two-sentence report supported by the randomized assignment and interval procedure.

Then complete the non-AI route. The optional AI route is a comparison after your independent work, not a replacement. Both routes must produce the same six-part audit: calculation; target and units; coverage; compatible test; design and causal scope; and practical and external-validity limits.

#### Complete non-AI route

1. **Calculation:** Multiply the full-precision critical value and standard error, subtract and add the margin to $1.794343$, and round only the final endpoints; then explain any last-digit change from using only the reported rounded inputs.
2. **Target and units:** Keep an average effect of assignment for the randomized participants separate from treatment receipt, individual effects, and the distribution of earnings.
3. **Coverage:** Describe the long-run behavior of the random interval procedure under repeated assignment and the large-sample approximation; do not assign 95% probability to the fixed target after observing the endpoints.
4. **Compatible test:** Use zero's position relative to the interval to decide the matching two-sided level $0.05$ test without saying that every included value is true.
5. **Design and causal scope:** State what random assignment can support under implementation, stable-treatment, no-interference, outcome-observation, and approximation assumptions.
6. **Magnitude and reach:** Preserve thousands of 1982 dollars, request a program-cost benchmark, and separate the study group from current or broader populations.

#### Optional AI comparison

Only after completing the independent-first steps and the non-AI route, copy the prompt below into an AI interface. Do not upload personal, student, or restricted information. Check the response against the same six-part audit.

```text
A historical randomized job-training study estimates an assigned-training
minus assigned-control difference in mean 1978 real earnings of 1.794343
(reported as 1.7943), with a conservative large-sample Neyman design-based
estimated SE of 0.6709967 (reported as 0.6710).
Both are in thousands of 1982 dollars. The standard Normal critical value is
1.959964 (reported as 1.96), and the approximate 95% interval is
[0.4792, 3.1095].

Audit this project brief: "Ninety-five percent of trainees gained between 479
and 3,109 dollars because of training, and there is a 95% probability that the
true effect is inside those endpoints. Every effect within the interval is
equally likely and all effects outside it are impossible. Since zero is
excluded, the program necessarily pays for itself, and randomization makes
this result representative of today's workers."

Produce six labeled parts: calculation; target and units; repeated-sampling
coverage; compatible two-sided level-0.05 test; randomized-design and causal
scope; and practical-importance and external-validity limits. Identify the
first unsupported statement and every later error. End with a defensible
two-sentence report and a checklist for numerical and interpretive verification.
Do not invent individual effects, treatment receipt, program costs, sampling,
implementation, or current-population evidence.
```

**Optional reproducibility check outside the 55-minute route:** Run the [Class 15 script](../class-15-confidence-intervals.R) from the Class 15 folder and compare its output with your arithmetic. The [coverage figure](../figures/confidence-interval-coverage.png) illustrates the distinction between a random procedure and realized intervals under a transparent teaching model.

#### Final unaided transfer

Close any AI output, answer checks, and solutions. A randomized filing-support study defines $\rho$ as the finite-study-group average intention-to-treat effect of support assignment on days until filing, measured as support minus control. It reports $\widehat\rho=-1.60$ days with large-sample estimated standard error $0.50$ day. Use $z^\star=1.645$ for an approximate 90% interval.

1. Calculate the margin, endpoints, and width.
2. State the repeated-assignment coverage interpretation and identify what is fixed after the interval is reported.
3. Use the interval to decide the compatible two-sided level $0.10$ test of $H_0:\rho=0$.
4. Interpret the estimate and interval without changing an average assignment effect into every participant's response, and state one practical and one external-validity question.

<!-- Source lineage: Current documented jtrain2 output with a newly authored project-brief audit, routes, prompt, and filing-support transfer. -->

<details>
<summary>Check after completing Problem 5</summary>

For `jtrain2`, the margin is $1.3151$ and the interval is $[0.4792,3.1095]$ thousand 1982 dollars; zero is outside, so the compatible two-sided level $0.05$ test rejects. The interval concerns an average effect of assignment for the randomized study group under assumptions, not individuals or current populations. In the transfer, the margin is $0.8225$, the interval is $[-2.4225,-0.7775]$ days, and the compatible level $0.10$ test rejects zero.

[Study the complete solution after your attempt](solutions/#solution-5).

</details>

[Back to the problem map](#problem-map)

## Verification and personal learning record

After checking your work, record the following in personal notes—not in the public repository:

- **Independent:** interval calculations, coverage statements, comparisons, and decisions completed without hints;
- **Prompted:** work completed after a cue, compact check, or verification question;
- **Supplied:** reasoning, numbers, wording, or code supplied by AI or a worked solution;
- **Remaining:** steps you still cannot reconstruct or explain independently; and
- **Transfer:** one nearby interval, width, coverage, or compatible-test question you will attempt without assistance.

Then close the solutions and reconstruct the first step at which your work diverged.

## Common mistakes to repair

- Omitting the critical value or multiplying it by the data standard deviation rather than the estimator's standard error.
- Treating the fixed target as random and the interval procedure as fixed before sampling.
- Assigning 95% probability to the fixed parameter after observing one frequentist interval.
- Interpreting a target-mean or average-effect interval as a range for individual observations, future outcomes, or individual effects.
- Saying every included value is equally plausible or every excluded value is impossible.
- Forgetting that greater confidence or a larger standard error creates a wider interval.
- Using the square-root sample-size rule without preserving a comparable design and variance structure.
- Applying interval–test duality when the confidence level, sidedness, estimator, standard error, or reference procedure does not match.
- Turning exclusion of zero into practical importance, universal effects, or external validity.

Class 16 will organize application-specific inference for means and proportions. No Class 16 procedure-selection rule is needed in this practice.
