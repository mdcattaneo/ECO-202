# ECO 202 Practice 12: Laws of Large Numbers and the Central Limit Theorem — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 12: Laws of Large Numbers and the Central Limit Theorem](../)  
**Class guide:** [Class 12: Laws of Large Numbers and the Central Limit Theorem](../../)

[← Return to Practice 12](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt each problem and inspect its compact check before reading the corresponding solution. Compare your theorem choice, assumptions, standardization, boundary, interpretation, and verification—not only your final number.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Practice 12 module. All calculations were independently checked analytically and with R. Inherited materials calibrated scope and difficulty only; no protected exercise, wording, or reserved assessment solution is reproduced. -->

## How to study a solution

Find the first step where your reasoning differed from the solution. Close the page, reproduce that step without looking, and attempt the nearby transfer before revealing its check. Reading a correct calculation is not evidence that you can reconstruct it independently.

## Solution map

1. [Center, spread, and the square-root rule](#solution-1)
2. [Which result answers the question?](#solution-2)
3. [An average-purchase threshold](#solution-3)
4. [A count, a proportion, and a half-unit](#solution-4)
5. [Audit a large-sample report, then transfer](#solution-5)

<a id="solution-1"></a>

## Solution 1. Center, spread, and the square-root rule

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [What averaging does exactly](../../#c12-stop-1)

### Question, model, and strategy

The observations are modeled as independent and identically distributed store sales with common mean 1200 and standard deviation 300 dollars. Derive the moments of the average from linearity and variance rules before inserting sample sizes.

### Complete solution

The sample mean is

$$
\bar X_n=\frac{1}{n}\sum_{i=1}^nX_i.
$$

Linearity of expectation gives

$$
\mathbb E[\bar X_n]
=\frac{1}{n}\sum_{i=1}^n\mathbb E[X_i]
=\frac{1}{n}(n\times1200)
=1200.
$$

The population variance is $300^2=90{,}000$. Independence allows variances to add without covariance terms:

$$
\mathrm{Var}(\bar X_n)
=\frac{1}{n^2}\sum_{i=1}^n\mathrm{Var}(X_i)
=\frac{1}{n^2}(n\times90{,}000)
=\frac{90{,}000}{n}.
$$

Taking the square root gives

$$
\mathrm{SD}(\bar X_n)=\frac{300}{\sqrt n}.
$$

Therefore:

| $n$ | $\mathbb E[\bar X_n]$ | $\mathrm{SD}(\bar X_n)$ |
|---:|---:|---:|
| 25 | 1200 dollars | 60 dollars |
| 100 | 1200 dollars | 30 dollars |
| 400 | 1200 dollars | 15 dollars |

The center and spread calculations are exact under the stated model. They do not require a Normal population or the CLT. The CLT would support an approximate shape for the standardized mean, not these moment identities.

If the sample size changes from $n$ to $4n$, then

$$
\frac{300}{\sqrt{4n}}=\frac{1}{2}\frac{300}{\sqrt n}.
$$

To reduce the standard error to one-third, solve $1/\sqrt c=1/3$, giving $c=9$.

With positive regional correlation,

$$
\mathrm{Var}(\bar X_n)
=\frac{1}{n^2}\left(\sum_i\mathrm{Var}(X_i)+2\sum_{i<j}\mathrm{Cov}(X_i,X_j)\right).
$$

The independence derivation incorrectly drops positive covariance terms, so it generally understates the true sampling spread.

### Verification and limitation

The units of variance are squared dollars and the units of standard deviation are dollars. The model describes comparable-store draws; it does not itself show that an observed store set was randomly sampled or that sales are independent.

### Nearby transfer

Independent observations have standard deviation 50. If $\mathrm{SD}(\bar X_n)=5$, find $n$. What sample size would reduce that standard error to 2.5?

<details>
<summary>Reveal the transfer check</summary>

$50/\sqrt n=5$ gives $n=100$. Halving the standard error requires four times the sample size, so the second answer is $n=400$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Which result answers the question?

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [LLN and CLT answer different questions](../../#c12-stop-4)

### Question, model, and strategy

First identify the object: an exact mean or variance, an unscaled average, a centered-and-scaled average, an individual observation, or a claim about data quality. Then match only the first three objects to the corresponding mathematical result.

### Complete solution

1. **Exact moment claim.** Under independence and a common variance $\sigma^2$,

   $$
   \mathrm{Var}(\bar X_n)
   =\frac{1}{n^2}\sum_{i=1}^n\sigma^2
   =\frac{\sigma^2}{n}.
   $$

   This does not require the CLT. With dependence, covariance terms must be included.

2. **LLN claim.** The probability of a fixed-size deviation from $\mu$ tends to zero under independent, identically distributed sampling with finite mean, or under other conditions covered by an appropriate LLN. It is a concentration statement about the unscaled average.

3. **CLT claim.** Under the stated introductory version's independent, identically distributed sampling and finite positive variance,

   $$
   \frac{\bar X_n-\mu}{\sigma/\sqrt n}
   \xrightarrow{d}\mathsf N(0,1).
   $$

   This is a limiting distributional statement about the centered and scaled mean.

4. **Unsupported.** Increasing $n$ does not alter the population distribution of each $X_i$. A correct replacement is: for sufficiently large $n$ under CLT conditions, the standardized sampling distribution of the mean may be approximately standard Normal.

5. **Unsupported.** A particular running average can move farther from $\mu$ at some steps. A correct replacement is: for every fixed $\varepsilon>0$, the probability of $|\bar X_n-\mu|>\varepsilon$ tends to zero under LLN conditions.

6. **Unsupported.** A small standard error measures variability under a model or sampling mechanism. It does not establish coverage, random selection, correct measurement, or external validity.

7. The first theorem answers whether an average settles close to its target as the sample grows. The second answers what distribution can approximate the properly standardized remaining error.

### Verification and limitation

A useful check is whether the claim remains meaningful after naming its random object. “The data are Normal by the CLT” fails immediately because the theorem's object is not an individual datum.

### Nearby transfer

Classify the statement “$\mathbb E[\bar X_n]=\mu$” and the statement “$\bar X_n$ is approximately $\mathsf N(\mu,\sigma^2/n)$ for large $n$.”

<details>
<summary>Reveal the transfer check</summary>

The first is an exact expectation identity under common mean $\mu$. The second is a CLT-based approximation under additional conditions.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. An average-purchase threshold

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [A wage-mean tail probability](../../#c12-stop-5)

### Question, model, and strategy

The target is the repeated-sampling probability that an independent sample mean exceeds 45 dollars. The exact center and spread come first; the Normal tail is an approximation to the mean's sampling distribution.

### Complete solution

For $n=64$,

$$
\mathbb E[\bar X_{64}]=42
$$

and

$$
\mathrm{SD}(\bar X_{64})
=\frac{18}{\sqrt{64}}
=\frac{18}{8}
=2.25.
$$

The standardized threshold is

$$
z_{64}=\frac{45-42}{2.25}=1.3333.
$$

The CLT approximation is therefore

$$
\mathbb P(\bar X_{64}>45)
\approx1-\Phi(1.3333)
\approx0.0912.
$$

Across repeated independent samples of 64 customers under the model, about 9.1% of sample means would exceed 45 dollars according to the approximation.

For $n=256$,

$$
\mathrm{SD}(\bar X_{256})
=\frac{18}{\sqrt{256}}
=1.125
$$

and

$$
z_{256}=\frac{45-42}{1.125}=2.6667.
$$

Thus,

$$
\mathbb P(\bar X_{256}>45)
\approx1-\Phi(2.6667)
\approx0.0038.
$$

The mean remains centered at 42 while its standard error falls from 2.25 to 1.125. The fixed threshold 45 is therefore twice as many standard errors above the target, so the upper tail becomes much smaller.

The population is right-skewed. The CLT usually improves as $n$ grows, but neither $n=64$ nor $n=256$ carries a universal accuracy guarantee. Tail probabilities can be sensitive to skewness and rare large values.

If the complete probability model were available, one could draw many independent samples of sizes 64 and 256, save each sample mean, and compare empirical tail frequencies and standardized histograms with the analytic Normal approximation. That simulation would assess the chosen model and Monte Carlo implementation; it would not establish that real customers follow the model or that the source represents a target population.

### Verification and limitation

The event threshold is above the mean, so narrowing the sampling distribution should reduce its probability. Both calculated tails follow that direction. The interpretation is about repeated samples, not the fraction of individual purchases above 45.

### Nearby transfer

Keep $\mu=42$ and $\sigma=18$. For $n=144$, approximate $\mathbb P(\bar X_n>45)$ using $1-\Phi(2)=0.0228$.

<details>
<summary>Reveal the transfer check</summary>

The standard error is $18/12=1.5$, so $z=(45-42)/1.5=2$ and the approximate probability is $0.0228$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. A count, a proportion, and a half-unit

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [Counts, proportions, and the discrete boundary](../../#c12-stop-6)

### Question, model, and strategy

The exact model is binomial because the number of trials is fixed, outcomes are binary, the response probability is constant, and trials are independent. Translate the discrete event before replacing the count distribution with a continuous approximation.

### Complete solution

The count has exact model distribution

$$
K\sim\mathsf{Binomial}(80,0.35).
$$

Its mean and variance are

$$
\mathbb E[K]=80(0.35)=28,
$$

$$
\mathrm{Var}(K)=80(0.35)(0.65)=18.2,
$$

so

$$
\mathrm{SD}(K)=\sqrt{18.2}\approx4.2661.
$$

The expected-success and expected-failure counts are 28 and 52, so neither is small in this model.

“At least 35 responses” means

$$
K\geq35.
$$

Because $\widehat p=K/80$, the equivalent proportion event is

$$
\widehat p\geq\frac{35}{80}=0.4375.
$$

The integer event begins at 35 and excludes 34. The continuous boundary halfway between those values is 34.5. Standardizing gives

$$
z_{\mathrm{cc}}
=\frac{34.5-28}{4.2661}
\approx1.5236.
$$

Therefore,

$$
\mathbb P(K\geq35)
\approx1-\Phi(1.5236)
\approx0.06380.
$$

The exact binomial probability is 0.06540, so the corrected approximation's absolute error is

$$
|0.06380-0.06540|=0.00160.
$$

Without correction,

$$
z_{\mathrm{uncorrected}}
=\frac{35-28}{4.2661}
\approx1.6408,
$$

giving

$$
1-\Phi(1.6408)\approx0.05042.
$$

Its absolute error is

$$
|0.05042-0.06540|=0.01498,
$$

which is much larger than the corrected error for this event.

A half-unit boundary addresses the mismatch between discrete count cells and a continuous curve. It does not make correlated contacts independent or make a varying response probability constant. Those are model failures, not boundary-placement errors.

### Verification and limitation

The event is an upper tail, and its boundary lies above the mean of 28, so both approximations must be below one-half. The corrected answer is close to the supplied exact result, as expected from the adequate success and failure counts.

### Nearby transfer

For an integer count $J$, give the continuity-corrected boundaries for $J\leq20$, $J>20$, and $15\leq J\leq20$.

<details>
<summary>Reveal the transfer check</summary>

Use $20.5$ for $J\leq20$, $20.5$ for $J>20$ with the opposite tail, and the interval from $14.5$ to $20.5$ for $15\leq J\leq20$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Audit a large-sample report, then transfer

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [When a large-sample argument fails](../../#c12-stop-7)

### Question, evidence, and strategy

The report combines a descriptive fact—400 app users responded—with unprovided probability, independence, distribution, and target-population claims. Audit each link instead of treating sample size as a substitute for a data-generating mechanism.

### Complete solution

The observations are 400 self-reported travel times from app users who chose to respond. The statistic is their sample mean, although its numerical value is not supplied. The proposed target is the current citywide mean commute. The only supplied response mechanism is an open invitation through one app followed by voluntary response; no probability sampling or independent response model is stated.

The claim that the 400 individual times are Normal is unsupported. The CLT does not transform individual observations. The claim that the sample mean is exactly Normal is also unsupported: an exact Normal sampling distribution would follow from an appropriate independent Normal model for the observations, which is not supplied. An introductory CLT can at most justify an approximate distribution for a centered and scaled sample mean under sampling, independence, common-distribution, and finite-variance conditions.

The report supplies none of the following:

- a probability sample from city commuters;
- independence of responses;
- a common travel-time distribution across responding users;
- a finite-variance model tied to the target;
- evidence that self-reports measure the intended commute quantity accurately;
- coverage of commuters who do not use the app; or
- a bridge from yesterday's reported trips to the current citywide target.

Even if a Normal approximation accurately described repeated averages under some model for these respondents, it would address sampling variation under that model. It would not remove voluntary-response bias, app undercoverage, reporting error, duplicated or dependent observations, or target mismatch. A narrow model-based distribution can be centered precisely on the wrong quantity.

A defensible rewrite is:

> Four hundred app users voluntarily reported yesterday's travel time. Their sample mean, once calculated, describes the average among these received reports, subject to reporting and data-quality limitations. The supplied information does not establish that the mean represents the current citywide mean or all commuters.

An optional AI response is useful only if it preserves these distinctions and does not invent a sampling frame or model. Its claims should be checked against the original mechanism description and the theorem's actual object.

For the final transfer, the exact model center and standard error are

$$
\mathbb E[\bar X_{100}]=80
$$

and

$$
\mathrm{SD}(\bar X_{100})=\frac{30}{\sqrt{100}}=3.
$$

The standardized endpoints are

$$
z_L=\frac{75-80}{3}=-1.6667
\qquad\text{and}\qquad
z_U=\frac{85-80}{3}=1.6667.
$$

By symmetry,

$$
\mathbb P(75\leq\bar X_{100}\leq85)
\approx\Phi(1.6667)-\Phi(-1.6667)
=2\Phi(1.6667)-1
\approx2(0.9522)-1
=0.9044.
$$

The center and spread are exact under the independent common-moment model. The Normal shape and the resulting probability are approximate unless the individual costs themselves follow an independent Normal model. The interpretation also depends on how repair costs enter the modeled population.

### Verification and limitation

The interval is symmetric and about 1.67 standard errors on either side of the mean, so a central probability near 0.90 is plausible. The calculation says nothing about the validity of a convenience sample or the measurement of repair costs unless those features are included in the model.

### Nearby transfer

Suppose the 100 repair costs come in 20 shops with positively correlated costs within shop. Which displayed transfer calculation remains valid by linearity, which simple formula can fail, and why?

<details>
<summary>Reveal the transfer check</summary>

If every cost still has mean 80, the sample mean remains centered at 80 by linearity. The simple $30/\sqrt{100}=3$ standard error can fail because positive within-shop covariance adds to the variance of the mean; a CLT for independent observations cannot be invoked unchanged.

</details>

[Return to the solution map](#solution-map)

## Closing reconstruction

Without looking back, write one sentence each for the exact center-and-spread result, the LLN, and the CLT. Then calculate one continuity-corrected count boundary and name one data-quality problem that none of the three mathematical results can repair.

[← Return to Practice 12](../) · [Class 12 guide](../../) · [Practice index](../../../PRACTICE.md)
