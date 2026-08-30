# ECO 202 Practice 15: Confidence Intervals and Their Connection to Hypothesis Tests — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 15: Confidence Intervals and Their Connection to Hypothesis Tests](../)  
**Class guide:** [Class 15: Confidence Intervals and Their Connection to Hypothesis Tests](../../)

[← Return to Practice 15](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt each problem and inspect its compact check before reading the corresponding solution. Compare your target, interval ingredients, coverage statement, assumptions, compatible test, and interpretation—not only your endpoints.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Practice 15 module. All calculations were independently checked analytically and with R. Inherited materials calibrated scope and difficulty only; no protected exercise, wording, or reserved assessment solution is reproduced. -->

## How to study a solution

Find the first step where your reasoning differed from the solution. Close the page, reproduce that step without looking, and attempt the nearby transfer before revealing its check. Reading correct endpoints is not evidence that you can reconstruct or interpret the confidence procedure independently.

## Solution map

1. [Build an interval from its ingredients](#solution-1)
2. [What is random, and what does 95% mean?](#solution-2)
3. [Confidence, width, and information](#solution-3)
4. [Read matching tests from an interval](#solution-4)
5. [Audit the job-training interval, then transfer](#solution-5)

<a id="solution-1"></a>

## Solution 1. Build an interval from its ingredients

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [A procedure, not only two endpoints](../../#c15-stop-1)

### Question, target, and strategy

The target is the current mean delay $\mu$. Combine the estimate's location with its estimated repeated-sampling spread and the supplied 95% critical value, then interpret the result as one realization of a procedure.

### Complete solution

The target is the current process mean $\mu$ in days. The estimate is $\widehat\mu=4.20$ days, the estimated standard error is $1.25$ days, the intended confidence level is 95%, and the supplied standard Normal critical value is $z^\star=1.96$. The procedure assumes the standardized estimator is approximately standard Normal under the stated sampling and standard-error conditions.

The margin of error is

$$
m=z^\star\widehat{\mathrm{SE}}(\widehat\mu)
=1.96(1.25)
=2.45\text{ days}.
$$

The endpoints are

$$
4.20-2.45=1.75
$$

and

$$
4.20+2.45=6.65.
$$

Thus the approximate 95% confidence interval is $[1.75,6.65]$ days. Its center is

$$
\frac{1.75+6.65}{2}=4.20,
$$

and its full width is

$$
6.65-1.75=4.90\text{ days}=2m.
$$

A correct interpretation is: if the same interval procedure were applied across repeated samples generated from the same process under its assumptions, approximately 95% of the resulting intervals would cover the fixed current mean delay $\mu$. After this sample is observed, $1.75$ and $6.65$ are fixed endpoints and $\mu$ remains a fixed unknown target; the frequentist procedure does not assign a 95% post-data probability to the event that $\mu$ lies between them.

Narrow endpoints do not establish that the orders represent the intended process, delays were measured consistently, observations are independent, the estimated standard error handles clustering or dependence, or the current target matches the process definition used in data collection.

### Verification and limitations

The center matches the estimate and the distance from the center to each endpoint equals the margin $2.45$. All estimate, standard-error, margin, endpoint, and width quantities retain units of days.

### Nearby transfer

Keep the estimate $4.20$ and 95% critical value $1.96$, but reduce the estimated standard error to $0.75$ day. Calculate the new margin, interval, and width.

<details>
<summary>Reveal the transfer check</summary>

The margin is $1.96(0.75)=1.47$ days, the interval is $[2.73,5.67]$ days, and the width is $2.94$ days.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. What is random, and what does 95% mean?

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connections:** [What 95% confidence means](../../#c15-stop-3) and [What a realized interval does not mean](../../#c15-stop-4)

### Question, model, and strategy

Separate the interval procedure before sampling from its one realized output afterward. Then assign the 95% probability only to the random covering event under the repeated-sampling model.

### Complete solution

The target $\theta$ is fixed throughout the frequentist repeated-sampling model. Before sampling, $\widehat\theta$ is random, a sample-based estimated standard error is random, and the endpoint rules $L(X)$ and $U(X)$ produce random values because they depend on the random sample.

After the reported interval is calculated, 18 and 26 are fixed numbers. The estimate and estimated standard error used to produce them are also realized fixed numbers. The unknown target remains fixed.

The procedure-level coverage event is

$$
L(X)\leq\theta\leq U(X),
$$

and approximate 95% coverage means

$$
\mathbb P_\theta\bigl(L(X)\leq\theta\leq U(X)\bigr)\approx0.95
$$

under the stated sampling mechanism, target, standard-error calculation, and reference approximation.

The model-check coverage rate is

$$
\frac{187}{200}=0.935.
$$

A 95% coverage probability does not require every finite collection of 200 intervals to contain exactly 190 covers. The number of covers varies across batches; increasing the number of independent repetitions makes the observed rate settle near the model probability.

The claims audit is:

1. **“95% of individual observations lie between 18 and 26” is unsupported.** An interval for $\theta$ is not a range containing individual data values.
2. **“Every value inside is equally plausible” is unsupported.** A frequentist confidence set identifies values not rejected by a matching procedure; it does not assign a uniform probability distribution over included values.
3. **“The fixed target has 95% probability of lying inside these endpoints” is not the frequentist statement.** After realization, endpoints and target are fixed.
4. **“The procedure is designed to cover the fixed target in about 95% of repetitions under its assumptions” is correct.** The probability belongs to the random procedure before sampling.

Correct coverage inside a transparent probability model does not prove that an empirical sampling frame represents a desired population, variables measure the intended construct, dependence is handled, the standard error is correct, or the estimand matches the substantive question. Coverage is conditional on those ingredients rather than a validation of them.

### Verification and limitations

The simulated rate is 1.5 percentage points below 95%, a plausible finite-batch fluctuation. The transparent check evaluates the stated model and procedure; it does not validate a real data-generating process.

### Nearby transfer

A separate transparent check produces 480 covering intervals out of 500. Calculate the rate and explain whether it alone contradicts a nominal 95% procedure.

<details>
<summary>Reveal the transfer check</summary>

$480/500=0.96$. A 96% finite-batch rate does not contradict a 95% long-run coverage procedure; both misses and covers fluctuate across independent batches.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Confidence, width, and information

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Confidence, width, and sample size](../../#c15-stop-5)

### Question, model, and strategy

At each confidence level, multiply the same standard error by the corresponding critical value. Then use width $2z^\star\widehat{\mathrm{SE}}$ and the planning relation $\widehat{\mathrm{SE}}\propto1/\sqrt n$ for comparable designs.

### Complete solution

The interval calculations are:

| Confidence | Critical value | $z^\star(3)$&nbsp;margin | Interval | Width |
|---:|---:|---:|---:|---:|
| 90% | 1.645 | 4.935 | $[7.065,16.935]$ | 9.870 |
| 95% | 1.960 | 5.880 | $[6.120,17.880]$ | 11.760 |
| 99% | 2.576 | 7.728 | $[4.272,19.728]$ | 15.456 |

The estimate remains 12 and the supplied estimated standard error remains 3 because only the confidence level changes. Higher intended coverage requires a larger central reference region, so the critical value, margin, and width rise. The ranking from narrowest to widest is 90%, 95%, 99%.

If the estimated standard error falls from 3 to 1.5 at fixed confidence, every margin and width is halved because both are proportional to the standard error. The interval center remains 12.

Suppose a comparable design multiplies sample size by $c$, so the standard error and width are divided by $\sqrt c$. To reduce width to 80% of its previous value, solve

$$
\frac{1}{\sqrt c}=0.80.
$$

Therefore

$$
c=\frac{1}{0.80^2}=1.5625.
$$

For a 99% interval to have the original 95% width, solve

$$
2(2.576)\frac{3}{\sqrt c}=2(1.960)(3).
$$

Thus

$$
\sqrt c=\frac{2.576}{1.960}
$$

and

$$
c=\left(\frac{2.576}{1.960}\right)^2\approx1.7273.
$$

Actual sample sizes must be rounded upward and made feasible within the design. Clustering, dependence, unequal assignment, changing variances, attrition, nonresponse, fixed costs, and changes in the population can break or modify the simple square-root comparison.

### Verification and limitations

Every reported interval is centered at 12, and each width equals twice its margin. Both sample-size calculations hold confidence, design structure, and variability conditions fixed except for the stated change.

### Nearby transfer

At fixed confidence under the same square-root planning approximation, by what factor must sample size increase to reduce the margin of error to one-third of its previous value?

<details>
<summary>Reveal the transfer check</summary>

Solve $1/\sqrt c=1/3$, giving $c=9$. Nine times the comparable sample size reduces the planned margin to one-third.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Read matching tests from an interval

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [The interval–test connection](../../#c15-stop-6)

### Question, model, and strategy

For the same estimate, standard error, two-sided reference distribution, and matching levels, reject a point null exactly when its value lies outside the interval. Then recover the hidden estimate and standard error from the interval's center and margin.

### Complete solution

The compatible two-sided level $0.10$ test rejects $H_0:\delta=\delta_0$ exactly when $\delta_0$ lies outside the central 90% interval $[-0.4,2.6]$.

Therefore:

| Null value ($\delta_0$) | Position | Decision at level ($0.10$) |
|---:|---|---|
| $-1$ | Outside below | Reject |
| $0$ | Inside | Fail to reject |
| $1.5$ | Inside | Fail to reject |
| $3$ | Outside above | Reject |

Failing to reject 0 or 1.5 says only that each point is compatible with this matching procedure at the stated level. It does not prove either point true or assign equal plausibility to all points in the interval.

The interval center is

$$
\widehat\delta=\frac{-0.4+2.6}{2}=1.1,
$$

and the margin is

$$
m=2.6-1.1=1.5.
$$

Because $m=z^\star\widehat{\mathrm{SE}}$,

$$
\widehat{\mathrm{SE}}=\frac{1.5}{1.645}\approx0.9119.
$$

For $H_0:\delta=0$,

$$
z_{\mathrm{obs}}=\frac{1.1-0}{0.9119}\approx1.206.
$$

Its magnitude is below the two-sided 10% critical value $1.645$, so the test fails to reject, matching zero's position inside the interval.

The connection requires matching sidedness, confidence and significance levels, estimator, standard error, and reference procedure. A one-sided test matches a one-sided confidence bound, and changing the uncertainty calculation or reference distribution breaks the mechanical equivalence.

### Verification and limitations

The recovered estimate is equidistant from both endpoints, and $1.645(0.9119)\approx1.5$. The interval decisions and standardized-statistic decision agree for zero.

### Nearby transfer

A compatible 95% interval is $[0.2,2.8]$. State the matching level $0.05$ decisions for point null values 0, 1, and 3.

<details>
<summary>Reveal the transfer check</summary>

Reject 0 and 3 because they lie outside the interval. Fail to reject 1 because it lies inside. None of these decisions proves a value true or impossible.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Audit the job-training interval, then transfer

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connections:** [Job-training effect and uncertainty](../../#c15-stop-2), [What 95% confidence means](../../#c15-stop-3), and [Report uncertainty responsibly](../../#c15-stop-7)

### Question, data, and strategy

Reproduce the endpoints, identify the average assignment target and procedure, and then audit every attempted bridge from that interval to participants, probability, practical value, or another population. The non-AI and AI routes should yield the same six-part report.

### Complete solution

#### 1. Calculation

Using the full-precision values from the Class 15 script, the margin is

$$
m=1.959964(0.6709967)=1.315129\approx1.3151.
$$

Using only the reported rounded displays gives $1.96(0.6710)=1.31516$, which rounds to $1.3152$; this harmless last-digit difference is why a reproducible calculation should preserve precision until the end. Using the supplied full-precision estimate and margin gives

$$
1.794343\pm1.315129
\quad\Longrightarrow\quad
[0.479214,3.109472]
\quad\Longrightarrow\quad
[0.4792,3.1095]
$$

thousand 1982 dollars. The tiny last-digit difference is rounding, not a substantive disagreement.

#### 2. Target and units

The randomized unit is a participant. The factor is assignment, with training and control levels. The outcome is 1978 real earnings in thousands of 1982 dollars. The estimand $\tau$ is the finite-study-group average intention-to-treat effect of assignment on that outcome among the randomized participants.

The interval concerns an average assignment effect. It is not a statement about 95% of participants, the effect of training received, every individual's effect, or the distribution of observed earnings.

#### 3. Coverage

Under repeated implementation of the same randomized-assignment and large-sample interval procedure with the target and assumptions fixed, approximately 95% or more of the resulting random intervals would cover the fixed finite-study-group average intention-to-treat effect. Coverage can be conservative because the finite-study Neyman standard error cannot subtract the unobservable effect-heterogeneity term. After this interval is observed, its endpoints and the target are fixed; the frequentist procedure does not say there is a 95% probability that the target lies inside these endpoints.

The procedure also does not make every included value equally likely or every excluded value impossible. It identifies values compatible with the matching procedure at the stated level.

#### 4. Compatible test

Zero lies outside $[0.4792,3.1095]$, so the compatible two-sided level $0.05$ test of $H_0:\tau=0$ rejects. This matches the Class 14 p-value $0.00749<0.05$. Values inside the interval are not rejected by matching tests; they are not proved true.

#### 5. Design and causal scope

Under documented random assignment and assumptions about implementation, preserved assigned groups, comparable outcome observation, stable treatment, no important interference, and an adequate large-sample standardized-statistic approximation, the interval can support an average causal interpretation of assignment for the randomized study group. It does not identify treatment-receipt effects or every participant's effect.

#### 6. Magnitude, practical importance, and external validity

The interval is in thousands of 1982 dollars, so its endpoints correspond to about 479 and 3,109 dollars in that historical price scale. Excluding zero establishes a matching statistical decision, not that benefits necessarily exceed program costs. Practical importance requires costs and a substantive decision benchmark. Random assignment does not make the participants a random sample from today's workers, so broader claims require external-validity evidence.

A defensible two-sentence report is: “The assigned-training minus assigned-control estimate for mean 1978 earnings is 1.7943 thousand 1982 dollars, with an approximate 95% interval of $[0.4792,3.1095]$ thousand 1982 dollars; the compatible two-sided 5% test rejects the null of a zero average intention-to-treat effect. Under the documented random assignment and stated implementation and large-sample assumptions, the interval describes an average assignment effect for the randomized study group, not individual or treatment-receipt effects, net practical benefits, or effects for current populations.”

The first unsupported statement in the project brief is its opening conversion of an average-effect interval into a statement about 95% of trainees. The remaining claims then misassign probability, invent a probability distribution over values, declare excluded values impossible, infer profitability without costs, and turn random assignment into representative sampling.

### Final unaided transfer solution

For the filing-support study, the margin is

$$
m=1.645(0.50)=0.8225\text{ day}.
$$

The approximate 90% interval is

$$
-1.60\pm0.8225
\quad\Longrightarrow\quad
[-2.4225,-0.7775]\text{ days},
$$

with width $2(0.8225)=1.645$ days.

Under repeated implementation of the same assignment and interval procedure with assumptions and target fixed, approximately 90% of the random intervals would cover the fixed study-group average intention-to-treat effect. Once reported, the endpoints are fixed. Zero lies outside, so the compatible two-sided level $0.10$ test rejects $H_0:\rho=0$.

The estimate says support assignment reduced days until filing by an average of 1.60 days in the study-group comparison under the randomized design and assumptions. It does not say every participant filed earlier. Practical interpretation requires program costs and a meaningful time benchmark; external interpretation requires evidence connecting the randomized study group and implementation to another population or setting.

### Verification and limitations

The Class 15 script reproduces the full-precision `jtrain2` interval and matching test. Both empirical reports preserve randomized assignment, average intention-to-treat targets, historical units, approximate reference procedures, practical boundaries, and external-validity limits.

### Nearby transfer

For the filing-support estimate $-1.60$ and estimated standard error $0.50$, construct the approximate 95% interval using $z^\star=1.96$ and state the compatible two-sided level $0.05$ zero-null decision.

<details>
<summary>Reveal the transfer check</summary>

The margin is $1.96(0.50)=0.98$, so the interval is $[-2.58,-0.62]$ days. Zero is outside, so the compatible two-sided level $0.05$ test rejects.

</details>

[Return to the solution map](#solution-map)

## Reconstruct before moving on

Close this file and reconstruct one complete interval report: target, estimate, estimated standard error, reference critical value, endpoints, coverage procedure, compatible two-sided test, assumptions, substantive magnitude, and limitations. Class 16 will organize application-specific inference for means and proportions.
