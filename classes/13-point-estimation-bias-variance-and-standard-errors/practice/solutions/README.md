# ECO 202 Practice 13: Point Estimation, Bias, Variance, and Standard Errors — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 13: Point Estimation, Bias, Variance, and Standard Errors](../)  
**Class guide:** [Class 13](../../)

[← Return to Practice 13](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Read a solution only after a genuine attempt and its compact check. Then close the file, reconstruct the target–rule–sampling-distribution argument, and attempt the nearby transfer without assistance.

<!-- Source lineage: Complete solutions for the newly authored Fall 2026 Practice 13 package. All calculations were independently reconstructed from the public problem inputs and current Classes 10--13 examples. No protected solution or reserved exam answer is reproduced. -->

## Solution map

| Solution | Main idea |
|---|---|
| [1. Target, estimator, and estimate](#solution-1) | Statistical objects and repeated sampling |
| [2. Three different spreads](#solution-2) | Data spread, true SE, estimated SE, and realized error |
| [3. Bias, variance, and MSE](#solution-3) | Bias–variance comparison under squared error |
| [4. A small tank population](#solution-4) | Exact estimator sampling distributions |
| [5. Audit a precise but unsupported report](#solution-5) | Estimator uncertainty versus data validity |
| [6. Cumulative checkpoint for In-Class Exam 3](#solution-6) | Random variables through estimator quality |

<a id="solution-1"></a>

## Solution 1. Target, estimator, and estimate

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [Target, rule, and realized number](../../#c13-stop-1)

### Question and strategy

Name the fixed target, the random rule before sampling, and the realized number after sampling. Then use the Bernoulli sampling model to describe what would happen if the same rule were repeated.

### Complete solution

The observational unit is one modeled subscriber response under the stated question and conditions. The estimand $p$ is the common probability that such a response is yes. It is not the proportion who actually renew later.

The estimator is the random sample proportion

$$
\widehat p=\frac{1}{100}\sum_{i=1}^{100}X_i,
$$

where $X_i=1$ for a yes response and 0 otherwise. The realized estimate is $62/100=0.62$.

Across repetitions of the response model, $p$ remains fixed while the Bernoulli responses, $\widehat p$, and realized estimate may change. Under the stated independent Bernoulli model,

$$
\mathbb E[\widehat p]=p
\qquad\text{and}\qquad
\mathrm{SE}(\widehat p)=\sqrt{\frac{p(1-p)}{100}}.
$$

Unbiasedness states that the mean of $\widehat p$ across repetitions is $p$. It does not state that every realized proportion equals $p$.

The model does not guarantee that the question measures actual renewal behavior. Intentions may differ from later choices, and the announced price or contract may be interpreted differently. Those are target and measurement issues rather than algebraic properties of the sample-proportion rule.

### Verification and limitations

The notation is consistent only if the response mechanism is part of the target definition. If the target is actual future renewal rather than the answer to the stated question, another bridge is required.

### Nearby transfer

Before opening the check, suppose a company contacts 100 subscribers, only 70 respond, and 62 of the respondents say yes. Identify the contacted and responding groups, the estimate among respondents, and the new threat to a target concerning all contacted subscribers.

<details>
<summary>Reveal the transfer check</summary>

The contacted group has 100 units, the responding group has 70, and the available respondent proportion is $62/70\approx0.886$. Without information about the 30 nonrespondents, it need not be unbiased for a yes-response target covering all 100 contacted subscribers.

</details>

[Back to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Three different spreads

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Sampling distributions and standard errors](../../#c13-stop-2)

### Question and strategy

Use the population standard deviation for the true standard error under the teaching mechanism and the sample standard deviation for the estimated standard error. Calculate the realized error separately.

### Complete solution

Under independent sampling with replacement,

$$
\mathrm{SE}(\bar X)=\frac{\sigma}{\sqrt n}
=\frac{3.6896}{\sqrt{25}}
=0.73792\approx0.7379.
$$

Using the one sample to estimate the unknown population spread would give

$$
\widehat{\mathrm{SE}}(\bar X)=\frac{s}{\sqrt n}
=\frac{3.8517}{\sqrt{25}}
=0.77034\approx0.7703.
$$

The realized error is

$$
\bar x-\mu=5.7184-5.8961=-0.1777.
$$

The value $3.8517$ describes spread among the 25 observed wage values. The true standard error $0.7379$ is the standard deviation of the random sample mean under repeated row sampling from the fixed teaching population. The estimated standard error $0.7703$ is one sample's estimate of that repeated-sampling spread. The realized error $-0.1777$ compares this one estimate with the known teaching target.

Across 10,000 repetitions, the mean of the sample means should be near $5.8961$ and their standard deviation should be near $0.7379$. Simulation discrepancy remains because the number of repetitions is finite.

This exercise does not establish that the 526 rows form a probability sample from a current or historical labor-market target population. It verifies estimator behavior inside the stated row-sampling model.

### Verification and limitations

The units provide a quick check: all four numerical spreads or differences are in dollars per hour, but they describe different distributions or comparisons. Neither standard error is the realized error.

### Nearby transfer

Before opening the check, keep the same population standard deviation and change the sample size to 100. Calculate the true standard error and explain the change.

<details>
<summary>Reveal the transfer check</summary>

$3.6896/\sqrt{100}=0.3690$, half the $n=25$ standard error because the sample size increased by a factor of four.

</details>

[Back to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Bias, variance, and MSE

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Bias, variance, and mean squared error](../../#c13-stop-3)

### Question and strategy

Apply linearity of expectation and the variance rule for independent averages. Then use $\mathrm{MSE}=\mathrm{Var}+\mathrm{Bias}^2$.

### Complete solution

Because $n=4$ and each observation has variance 4,

$$
\mathbb E[T_1]=\mathbb E[\bar X]=\theta,
\qquad
\mathrm{Var}(T_1)=\frac{4}{4}=1.
$$

Thus $T_1$ has bias 0 and MSE 1.

For the second rule,

$$
\mathbb E[T_2]=0.8\theta+1.6,
$$

so

$$
\mathrm{Bias}(T_2;\theta)=0.8\theta+1.6-\theta=1.6-0.2\theta.
$$

The constant 1.6 has no variance, giving

$$
\mathrm{Var}(T_2)=0.8^2\mathrm{Var}(\bar X)=0.64.
$$

Therefore

$$
\mathrm{MSE}(T_2;\theta)=0.64+(1.6-0.2\theta)^2.
$$

At $\theta=10$, the bias is $-0.4$ and MSE is $0.64+0.16=0.80$, below $T_1$'s MSE of 1. At $\theta=14$, the bias is $-1.2$ and MSE is $0.64+1.44=2.08$, above 1.

Unbiasedness ignores variance, while choosing only by variance ignores systematic error. Squared-error comparison requires both, and the ranking can depend on $\theta$. Treating 8 as useful requires prior evidence that the target is plausibly near 8 and that the benchmark was not chosen after seeing the current outcome.

### Verification and limitations

At $\theta=8$, $T_2$ is unbiased and has lower variance. As $\theta$ moves away from 8, its squared bias grows. This pattern checks the algebra and exposes the benchmark's role.

### Nearby transfer

Before opening the check, find the values of $\theta$ for which $T_2$ has smaller MSE than $T_1$.

<details>
<summary>Reveal the transfer check</summary>

We need $0.64+(1.6-0.2\theta)^2<1$, so $|1.6-0.2\theta|<0.6$. Dividing by $0.2$ gives $|8-\theta|<3$, or $5<\theta<11$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. A small tank population

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [The German tank problem](../../#c13-stop-4)

### Question and strategy

Enumerate every equally likely two-number subset. A complete sampling distribution makes expectation, bias, variance, and MSE direct weighted calculations.

### Complete solution

The ten possible samples and estimator values are

| Sample | $T_{\mathrm{mean}}$ | $M$ | $T_{\mathrm{max}}$ |
|---|---:|---:|---:|
| $\lbrace1,2\rbrace$ | 2 | 2 | 2 |
| $\lbrace1,3\rbrace$ | 3 | 3 | 3.5 |
| $\lbrace1,4\rbrace$ | 4 | 4 | 5 |
| $\lbrace1,5\rbrace$ | 5 | 5 | 6.5 |
| $\lbrace2,3\rbrace$ | 4 | 3 | 3.5 |
| $\lbrace2,4\rbrace$ | 5 | 4 | 5 |
| $\lbrace2,5\rbrace$ | 6 | 5 | 6.5 |
| $\lbrace3,4\rbrace$ | 6 | 4 | 5 |
| $\lbrace3,5\rbrace$ | 7 | 5 | 6.5 |
| $\lbrace4,5\rbrace$ | 8 | 5 | 6.5 |

$T_{\mathrm{mean}}$ takes values $2,3,4,5,6,7,8$ with counts $1,1,2,2,2,1,1$. Its expectation is

$$
\frac{2+3+2(4)+2(5)+2(6)+7+8}{10}=5.
$$

Its squared deviations from 5 sum to 30, so its variance and MSE are $30/10=3$.

The raw maximum takes value 2 once, 3 twice, 4 three times, and 5 four times. Its expectation is

$$
\frac{1(2)+2(3)+3(4)+4(5)}{10}=4,
$$

so its bias for $m=5$ is $-1$.

The corrected maximum takes value 2 once, 3.5 twice, 5 three times, and 6.5 four times. Its expectation is

$$
\frac{1(2)+2(3.5)+3(5)+4(6.5)}{10}=5.
$$

It is unbiased in this model. Its squared deviations from 5 sum to

$$
1(2-5)^2+2(3.5-5)^2+3(5-5)^2+4(6.5-5)^2=22.5,
$$

so its variance and MSE are $22.5/10=2.25$. It has smaller MSE than the mean-based rule in this finite model.

Changing to sampling with replacement changes both the possible samples and their probabilities, especially repetitions and the maximum distribution. The expectation used to correct $M$ must therefore be derived again.

### Verification and limitations

Each distribution's counts sum to 10. Both unbiased estimators have expectation 5, and their MSE equals their variance. The comparison is conditional on this design, target, and squared-error loss.

### Nearby transfer

Before opening the check, calculate the raw maximum's variance and MSE for estimating 5.

<details>
<summary>Reveal the transfer check</summary>

$\mathbb E[M^2]=(1(4)+2(9)+3(16)+4(25))/10=17$, so $\mathrm{Var}(M)=17-4^2=1$. Its bias is $-1$, so its MSE is $1+1=2$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Audit a precise but unsupported report

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connections:** [Estimator bias is not data bias](../../#c13-stop-5) and [Choose, report, and audit an estimator](../../#c13-stop-6)

### Question and strategy

Separate the arithmetic object from the evidence connecting the responses to a national target. A small model-based standard error cannot supply a missing sampling or measurement design.

### Complete solution

The proposed target is the mean monthly rent among “every renter in the country,” although the population, time period, rent definition, household-versus-unit basis, subsidies, shared payments, and occupied-unit scope are not defined. The estimator is a sample mean, the estimate is 2,100 dollars, and the reported estimated standard error is 3 dollars.

The first unsupported step is the claim that the sample mean is unbiased. The website used voluntary responses, and no probability-sampling or response mechanism connecting those reports to a defined national renter population is supplied.

Possible gaps include:

1. **coverage:** renters who do not visit the website cannot respond;
2. **voluntary response:** participation may depend on rent, location, grievance, interest, or digital access;
3. **measurement:** respondents may report their share, total unit rent, asking rent, or rent including different fees;
4. **dependence and duplication:** several reports could concern the same unit or correlated website audience;
5. **target definition:** “every renter” is not aligned with an unspecified reporting period and rent concept; and
6. **data quality:** no validation, missingness, or duplicate-removal process is described.

The reported standard error measures sampling or model variability only under the assumptions used to compute it. It does not measure coverage error, voluntary-response bias, target mismatch, measurement error, dependence, or every other source of uncertainty. A large sample can estimate the wrong selected-group quantity very precisely.

The strongest supplied description is: “Among the 40,000 rent reports received by the website, the reported mean was 2,100 dollars.” Even that statement should be accompanied by the definition, time period, quality checks, and duplicate handling. A national claim would require a defined target, a defensible sampling and response process, appropriate weighting or design analysis, validated measurement, and an uncertainty calculation aligned with that process.

Both the AI and non-AI routes should reach this evidence boundary. Fluent discussion of a narrow interval is not a substitute for the missing design.

### Verification and limitations

Class 15 will develop confidence-interval construction and interpretation. Here, the central point is earlier in the evidence chain: no interval arithmetic can repair an unsupported sampling mechanism or target-population claim.

### Nearby transfer

Before opening the check, suppose the website receives 400,000 reports and the reported standard error falls to $1$. Which concerns are reduced, and which remain?

<details>
<summary>Reveal the transfer check</summary>

Model-based random variability may be smaller under the assumptions behind the standard error. Coverage, voluntary response, measurement, target definition, duplication, dependence, and external-validity concerns remain unless the data-generating process changes or those issues are addressed directly.

</details>

[Back to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Cumulative checkpoint for In-Class Exam 3

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connections:** [Class 10](../../../10-random-variables-expectations-variance-and-covariance/), [Class 11](../../../11-sampling-distributions-for-counts-proportions-and-means/), [Class 12](../../../12-laws-of-large-numbers-and-central-limit-theorem/), and [Class 13](../../)

### Question and strategy

Build the probability-model moments first. They determine the exact center and scale of the sample mean, which then feed the CLT approximation and estimator comparison.

### Complete solution

For the stated distribution,

$$
\mathbb E[X]=0(0.50)+1(0.30)+3(0.20)=0.90
$$

and

$$
\mathbb E[X^2]=0^2(0.50)+1^2(0.30)+3^2(0.20)=2.10.
$$

Therefore

$$
\mathrm{Var}(X)=2.10-0.90^2=1.29
$$

and $\mathrm{SD}(X)=\sqrt{1.29}\approx1.1358$.

$H=1$ when $X$ is 1 or 3, so $\mathbb E[H]=\mathbb P(X\geq1)=0.50$. Because $XH=X$ for all possible values,

$$
\mathrm{Cov}(X,H)=\mathbb E[XH]-\mathbb E[X]\mathbb E[H]=0.90-0.90(0.50)=0.45.
$$

The positive sign reflects that the indicator selects the positive values of $X$.

For $n=100$, the sample mean has exact mean and standard error

$$
\mathbb E[\bar X]=0.90,
\qquad
\mathrm{SE}(\bar X)=\sqrt{\frac{1.29}{100}}\approx0.1136.
$$

At $n=400$, the standard error is $\sqrt{1.29/400}\approx0.0568$, exactly half as large.

The LLN says that $\bar X$ converges in probability to 0.90 as $n$ grows. It does not by itself specify a finite-sample tail probability. Without a continuity correction, the CLT gives

$$
\mathbb P(\bar X>1.0)
\approx
1-\Phi\left(\frac{1.0-0.9}{\sqrt{1.29/100}}\right).
$$

The standardized value is approximately $0.8805$, so the supplied Normal value gives an upper-tail probability of $1-0.8107=0.1893$.

Because $\sum_iX_i$ is integer-valued, $\bar X>1.0$ means $\sum_iX_i\geq101$. A continuity correction therefore evaluates the Normal approximation above 100.5 rather than above 100. The standardized threshold is

$$
\frac{100.5-100(0.9)}{\sqrt{100(1.29)}}\approx0.9245,
$$

so the corrected approximation is $1-0.8224=0.1776$. The correction uses the discreteness of the sum and is closer to the exact probability in this example; both calculations remain CLT approximations.

For $T_1=\bar X$, bias is 0, variance is $1.29/100=0.0129$, standard error is about $0.1136$, and MSE is $0.0129$. For $T_2=\bar X+0.10$, bias is $0.10$, variance remains $0.0129$, standard error remains about $0.1136$, and MSE is

$$
0.0129+0.10^2=0.0229.
$$

$T_1$ has smaller MSE under the stated model and squared-error loss. One realization cannot reveal the repeated-sampling mean or variance by itself. Neither calculation repairs selection, nonresponse, measurement error, or a mismatch between the modeled mean and the intended substantive target.

### Verification and limitations

The exact moment calculations use independence and the stated finite distribution. The probabilities $0.1893$ and $0.1776$ are approximations because they use the CLT for a discrete, skewed sample mean; the second also uses a continuity correction. The LLN and CLT answer different questions.

### Nearby transfer

Before opening the check, change $T_2$ to $\bar X-0.05$. Calculate its bias and MSE.

<details>
<summary>Reveal the transfer check</summary>

Its bias is $-0.05$, its variance is still $0.0129$, and its MSE is $0.0129+0.0025=0.0154$.

</details>

[Back to the solution map](#solution-map)

## Reconstruct before moving on

Close this file and, from a blank page, write one example that separates the estimand, estimator, estimate, realized error, data standard deviation, standard error, estimator bias, and data-collection bias. If any two collapse into the same sentence, return to the corresponding class-guide section before beginning Class 14.
