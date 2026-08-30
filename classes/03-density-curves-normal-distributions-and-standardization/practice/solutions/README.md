# ECO 202 Practice 3: Density Curves, Normal Distributions, and Standardization — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 3: Density Curves, Normal Distributions, and Standardization](../)  
**Class guide:** [Class 3: Density Curves, Normal Distributions, and Standardization](../../)

[← Return to Practice 3](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt a problem and inspect its compact answer check before reading the corresponding solution. Compare your setup, units, calculation, interpretation, and model judgment—not only your final number.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Practice 3 module. All empirical values are independently checked against the current Class 3 script and documented bwght CSV. Inherited material calibrated scope and difficulty only; no protected exercise, wording, or reserved exam solution is reproduced. -->

## How to study a solution

For each problem, locate the first step at which your approach differed from the solution. Close the page, reproduce that step without looking, and then attempt the nearby transfer before revealing its check.

## Solution map

1. [Transform a distribution and preserve its units](#solution-1)
2. [Compare standardized positions](#solution-2)
3. [Read probability from a density](#solution-3)
4. [Work in both directions with a Normal model](#solution-4)
5. [Audit the birth-weight approximation](#solution-5)
6. [Transfer without assistance](#solution-6)

<a id="solution-1"></a>

## Solution 1. Transform a distribution and preserve its units

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [Linear transformations and units](../../#1-linear-transformations-and-units) and [Class 2 center, position, and spread](../../../02-descriptive-statistics-and-data-visualization/#3-center-position-and-spread)

### Question, data, and strategy

First recover the Class 2 summaries on the original dollar scale. Then apply the transformation to every center and use the absolute value of the multiplier for every spread; for a negative multiplier, reorder the transformed values before naming the quartiles.

### Complete solution

The five spending values sum to 350, so

$$
\bar x=\frac{350}{5}=70\ \text{dollars}.
$$

The median is 60. The lower half is $40,50$ and the upper half is $70,130$, so the median-of-halves convention gives

$$
Q_1=45,
\qquad
Q_3=100,
\qquad
\mathrm{IQR}=100-45=55\ \text{dollars}.
$$

The deviations from 70 are $-30,-20,-10,0,60$. Their squares sum to

$$
900+400+100+0+3600=5000.
$$

Therefore the sample variance and standard deviation are

$$
s_X^2=\frac{5000}{5-1}=1250\ \text{dollars}^2,
\qquad
s_X=\sqrt{1250}\approx35.36\ \text{dollars}.
$$

For $Y=X/10$, the ordered values are $4,5,6,7,13$. Thus

$$
\bar y=7,
\quad
M_Y=6,
\quad
Q_{1,Y}=4.5,
\quad
Q_{3,Y}=10,
\quad
\mathrm{IQR}_Y=5.5,
\quad
s_Y=\frac{\sqrt{1250}}{10}\approx3.536.
$$

These quantities are measured in tens of dollars, except the variance, which would be measured in squared tens of dollars. Multiplication by the positive constant $1/10$ preserves order and shape while shrinking every horizontal distance by a factor of ten.

For $R=150-X$, the transformed values in original row order are $110,100,90,80,20$ and in increasing order are $20,80,90,100,110$. The transformation rules and the reordered values give

$$
\bar r=150-70=80,
\qquad
M_R=150-60=90,
$$

$$
Q_{1,R}=150-Q_{3,X}=50,
\qquad
Q_{3,R}=150-Q_{1,X}=105,
$$

$$
\mathrm{IQR}_R=55,
\qquad
s_R=|-1|s_X\approx35.36\ \text{dollars}.
$$

The negative multiplier reverses the order: the largest spending becomes the smallest amount remaining. It therefore reflects right skew into left skew. Distances are unchanged because multiplying a difference by $-1$ changes its direction but not its absolute magnitude; this is why the $\mathrm{IQR}$ and standard deviation retain the same numerical values.

### Verification and limitation

The transformed means can be checked both by applying the formula and by averaging the transformed values. A five-household teaching example illustrates transformation rules but is not evidence about a population of households.

### Nearby transfer

For the same $X$, define $T=10+2X$. Without transforming all five observations, find the mean, median, $\mathrm{IQR}$, and standard deviation of $T$, and state what happens to shape.

<details>
<summary>Reveal the transfer check</summary>

$\bar t=10+2(70)=150$, $M_T=10+2(60)=130$, $\mathrm{IQR}_T=2(55)=110$, and $s_T=2\sqrt{1250}\approx70.71$. The positive multiplier preserves order and shape.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Compare standardized positions

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Standardization and comparable position](../../#2-standardization-and-comparable-position)

### Question, data, and strategy

Raw earnings answer who earns more. A z-score answers how far an observation lies from its own group's mean, measured in that group's standard deviations. Keep those questions separate.

### Complete solution

For Group A,

$$
z_A=\frac{72-60}{8}=\frac{12}{8}=1.5.
$$

For Group B,

$$
z_B=\frac{90-75}{10}=\frac{15}{10}=1.5.
$$

The Group B worker has higher raw earnings: 90 rather than 72 thousand dollars. The standardized positions are equal because both workers are 1.5 sample standard deviations above their respective group means.

Reverse standardization using $x=\bar x+zs$. In Group A,

$$
x=60+(-0.75)(8)=54\ \text{thousand dollars}=54{,}000\ \text{dollars}.
$$

If Group A is expressed in dollars, the mean is 60,000, the standard deviation is 8,000, and the listed earnings are 72,000. Therefore

$$
z=\frac{72{,}000-60{,}000}{8{,}000}=\frac{12{,}000}{8{,}000}=1.5.
$$

The z-score is unit-free because the same positive scale factor appears in the numerator and denominator and cancels.

A sample z-score of 1.5 does not by itself identify an exact percentile. That conclusion requires the empirical distribution or a justified distributional model; for example, an exact Normal model would connect z-scores to standard Normal areas. A z-score also says nothing about what caused earnings differences. A causal conclusion would require a clearly defined intervention or exposure and a research design that makes the relevant comparison defensible.

### Verification and limitation

Reversing the first z-score gives $60+1.5(8)=72$, and reversing the second gives $75+1.5(10)=90$. The group summaries are stipulated teaching values and do not establish a population model or causal mechanism.

### Nearby transfer

A worker in Group C earns 60 thousand dollars, while Group C has mean 50 and standard deviation 5 thousand dollars. Compare this worker's standardized position with those in Groups A and B.

<details>
<summary>Reveal the transfer check</summary>

$z_C=(60-50)/5=2$. The Group C worker has lower raw earnings than the listed workers in A and B but a higher standardized position within the corresponding group.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Read probability from a density

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Density curves as probability models](../../#3-density-curves-as-probability-models)

### Question, data, and strategy

The density is a straight line on its support, so every requested probability can be obtained from triangle or trapezoid area. Density height is not itself probability.

### Complete solution

At $x=1$, $f(1)=1$, and at $x=3$, $f(3)=0$. The density is the line segment from $(1,1)$ to $(3,0)$ and is zero outside that interval. It is nonnegative on its support, and its total area is the area of a triangle with base 2 and height 1:

$$
\frac{1}{2}(2)(1)=1.
$$

Between 1 and 2, the endpoint heights are 1 and $f(2)=0.5$. The trapezoid area is

$$
\mathbb P(X\leq2)=\frac{1+0.5}{2}(2-1)=0.75.
$$

Between 1.5 and 2.5, the endpoint heights are

$$
f(1.5)=0.75
\qquad\text{and}\qquad
f(2.5)=0.25.
$$

The corresponding trapezoid area is

$$
\mathbb P(1.5<X<2.5)=\frac{0.75+0.25}{2}(2.5-1.5)=0.50.
$$

The density height at 2 is $f(2)=0.5$. It is a height with units of inverse x-units, not the probability at the point. A single point has zero width under a continuous density, so

$$
\mathbb P(X=2)=0.
$$

Because $\mathbb P(X\leq2)=0.75>0.5$, the point that divides the area in half must lie below 2. The model is decreasing, so more probability lies near the lower end of the support.

### Verification and limitation

The complementary area above 2 is $1-0.75=0.25$, which is also the small right triangle with base 1 and height 0.5. This is a continuous probability model, not an empirical finding about observed data.

### Nearby transfer

Calculate $\mathbb P(X>2)$ directly from geometry and explain why using $>$ rather than $\geq$ does not change the answer.

<details>
<summary>Reveal the transfer check</summary>

The right-tail triangle has base 1 and height 0.5, so its area is $\tfrac12(1)(0.5)=0.25$. Since $\mathbb P(X=2)=0$, including or excluding the endpoint does not change the probability.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Work in both directions with a Normal model

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [The Normal family](../../#4-the-normal-family) and [Normal probabilities and quantiles](../../#5-normal-probabilities-and-quantiles)

### Question, data, and strategy

For every cutoff, standardize first and identify whether the desired area is a lower tail, upper tail, or interval. For the percentile, reverse the map from the standard Normal scale to hours.

### Complete solution

In $X\sim\mathsf{N}(40,4^2)$, the mean is 40 hours, the standard deviation is 4 hours, and the variance is $4^2=16$ hours squared. The second parameter is written as a variance in this course's notation.

For 34 hours,

$$
z=\frac{34-40}{4}=-1.5,
$$

so

$$
\mathbb P(X<34)=\mathbb P(Z<-1.5)=\Phi(-1.5)=0.0668.
$$

Under the model, about 6.68 percent of weekly-hour values lie below 34 hours.

For the interval from 36 to 44 hours, the standardized endpoints are $-1$ and 1. Thus

$$
\mathbb P(36<X<44)=\Phi(1)-\Phi(-1)=0.8413-0.1587=0.6826.
$$

Under the model, about 68.26 percent of weekly-hour values lie between 36 and 44 hours.

For 48 hours,

$$
z=\frac{48-40}{4}=2.
$$

The upper-tail probability is the complement of the lower tail:

$$
\mathbb P(X>48)=1-\Phi(2)=1-0.9772=0.0228.
$$

Under the model, about 2.28 percent of weekly-hour values exceed 48 hours.

For the 90th percentile, reverse the standardization:

$$
x_{0.90}=40+1.2816(4)=45.1264\ \text{hours}.
$$

Under the fitted model, 90 percent of weekly-hour values lie at or below about 45.13 hours and 10 percent lie above it.

All four results are consequences of the stipulated Normal approximation, not exact empirical percentages. A histogram can reveal skewness, heaping, multiple modes, or unusual tails, and a Normal quantile plot can show where empirical quantiles depart systematically from a Normal line. The adequacy judgment should be tied to the target: a model that is useful near the center may be unreliable for a tail cutoff.

### Verification and limitation

The interval from 36 to 44 is symmetric and exactly one model standard deviation from the mean on each side, so the result should be close to the familiar 68 percent benchmark. Weekly work hours are nonnegative and often reported at round values, while a Normal model is continuous, symmetric, and unbounded.

### Nearby transfer

Without using a new table value, calculate $\mathbb P(32<X<48)$ from the supplied value $\Phi(2)=0.9772$ and Normal symmetry.

<details>
<summary>Reveal the transfer check</summary>

The endpoints have z-scores $-2$ and 2. Symmetry gives $\Phi(-2)=1-\Phi(2)=0.0228$, so $\mathbb P(-2<Z<2)=0.9772-0.0228=0.9544$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Audit the birth-weight approximation

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Does the model fit the question?](../../#6-does-the-model-fit-the-question) and [Practice and answer checks](../../#7-practice-and-answer-checks)

### Question, data, and strategy

The task is to compare an empirical fraction with a fitted-model probability at the same cutoff, inspect global diagnostics separately, and keep source evidence, model evidence, and causal evidence distinct.

### Data and calculation

The observational unit is one birth record in a 1988 National Health Interview Survey extract. The focal variable is infant birth weight in ounces. The documented file contains 1,388 records and no missing birth weights. The data are real historical observations; the file alone does not establish that the extract represents all 1988 births or present-day births.

The standardized position of 88 ounces is

$$
z=\frac{88-118.6996}{20.35396}=\frac{-30.6996}{20.35396}\approx-1.5083.
$$

The cutoff is about 1.51 sample standard deviations below the sample mean. This is a position on a standardized scale, not 1.51 percent.

Multiplying the observed fraction by the number of records gives

$$
1388(0.05979827)\approx83,
$$

so 83 recorded births have birth weight below 88 ounces. The fitted-minus-observed difference is

$$
0.06574087-0.05979827=0.00594260,
$$

or about 0.5943 percentage points. This is close agreement at one specified cutoff, not a global theorem about the distribution.

### Model diagnosis

The histogram is broadly mound-shaped around its center, and the fitted curve gives a useful first summary near much of the main body. The empirical bars show heaping and departures from a perfectly smooth symmetric curve. In the Normal quantile plot, much of the center lies fairly near the reference line, while the tails depart visibly, including an extreme upper record near 271 ounces. These diagnostics make adequacy question-specific: a central interval may be described reasonably while an extreme-tail quantile may not be.

Agreement at 88 ounces tests only the cumulative area below that cutoff. Different distributions can share that one area while differing elsewhere, and even nearby cutoffs require a fresh empirical and model comparison.

### Claim-by-claim audit

- The z-score of about $-1.51$ is numerically correct, but interpreting it as exactly 1.51 percent confuses standardized distance with area.
- The empirical 5.98 percent and fitted 6.57 percent are close at 88 ounces, but this does not make the empirical distribution exactly Normal or validate every probability and quantile.
- A 271-ounce record is unusual and deserves source investigation. A graph cannot establish that it is erroneous or authorize deletion.
- A marginal birth-weight distribution contains no comparison or assignment mechanism that identifies effects of maternal behavior. Distributional description is not causal identification.

A defensible revision is:

> In this historical sample, 88 ounces is about 1.51 sample standard deviations below the mean, and 83 of the 1,388 recorded births—about 5.98 percent—fall below that cutoff. The fitted Normal model assigns about 6.57 percent below 88 ounces, which is close at this cutoff but does not establish an exact Normal distribution or accurate fit at every quantile. The diagnostic plots show useful central agreement as well as heaping and tail departures, and the 271-ounce record requires source investigation rather than automatic deletion. These distributional results neither describe present-day births automatically nor identify causal effects of maternal behavior.

### AI comparison and verification

An AI audit is useful only as a proposal to compare with the arithmetic, source note, figure, and design information. Giving it the public summary rather than uploading a folder follows data minimization, but the analyst still must verify every retained claim and must not treat model agreement as authority.

### Nearby transfer

Suppose a policy question instead uses a 96-ounce cutoff. Can the observed-versus-fitted agreement at 88 ounces answer it? State the checks that must be repeated.

<details>
<summary>Reveal the transfer check</summary>

No. Recalculate the empirical fraction below 96 ounces from the data, standardize 96 using the fitted mean and standard deviation, compute the corresponding Normal probability, compare the two at that cutoff, and inspect the relevant part of the diagnostics. Agreement at 88 ounces does not determine agreement at 96 ounces.

</details>

[Return to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Transfer without assistance

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connection:** [Linear transformations and units](../../#1-linear-transformations-and-units), [Normal probabilities and quantiles](../../#5-normal-probabilities-and-quantiles), and [Common core, optional paths, and recap](../../#8-common-core-optional-paths-and-recap)

### Question, data, and strategy

The conversion to grams is a positive linear transformation with no intercept. Transform center and spread, show that the common multiplier cancels from the z-score, and reverse the 10th-percentile z-value on either scale.

### Complete solution

The fitted mean in grams is

$$
\bar g=28.35(118.6996)=3365.13366\ \text{grams},
$$

and the fitted standard deviation is

$$
s_G=28.35(20.35396)=577.034766\ \text{grams}.
$$

The 88-ounce cutoff becomes

$$
28.35(88)=2494.8\ \text{grams}.
$$

On the ounce scale,

$$
z_X=\frac{88-118.6996}{20.35396}\approx-1.508286.
$$

On the gram scale,

$$
z_G=\frac{2494.8-3365.13366}{577.034766}\approx-1.508286.
$$

Algebraically, the invariance follows because

$$
\frac{28.35x-28.35\bar x}{28.35s}
=\frac{28.35(x-\bar x)}{28.35s}
=\frac{x-\bar x}{s}.
$$

The fitted 10th percentile in ounces is

$$
x_{0.10}=118.6996-1.2816(20.35396)=92.613964864\ \text{ounces}.
$$

Converting this result gives

$$
g_{0.10}=28.35(92.613964864)=2625.6059038944\ \text{grams}.
$$

Applying the percentile calculation directly on the gram scale verifies the same answer:

$$
g_{0.10}=3365.13366-1.2816(577.034766)=2625.6059038944\ \text{grams}.
$$

A positive change of units rescales the horizontal axis and the model parameters together; it cannot repair skewness, heaping, or tail departures and therefore does not improve Normal fit. The fitted 10th percentile describes individual values under the fitted distribution: it is the cutoff with model area 0.10 below it. It is not a probability statement about the true sample mean, which is a different statistical object.

A defensible interpretation is:

> Under the fitted Normal model for these historical records, about 10 percent of individual birth weights lie below approximately 92.61 ounces, or 2,625.61 grams.

> This is a model-based description of a historical sample; visible tail departures and missing population-design information limit a broader interpretation.

### Verification and limitation

The percentile computed in ounces and then converted exactly matches the percentile computed after transforming the fitted parameters. This verifies the unit calculation, not the global quality of the Normal approximation.

### Nearby transfer

Convert the fitted 10th percentile to pounds using 16 ounces per pound. Does its percentile rank change?

<details>
<summary>Reveal the transfer check</summary>

$92.613964864/16\approx5.78837$ pounds. Its fitted percentile rank remains 10 percent because division by 16 is a positive linear transformation that preserves order and standardized position.

</details>

[Return to the solution map](#solution-map)

## Final study check

Close the solutions and reconstruct these six moves on a blank page: transform a spread with $|b|$; reverse a z-score; turn density into area; standardize a Normal cutoff; reverse a Normal area to a quantile; and decide whether a fitted model is adequate for the target question.
