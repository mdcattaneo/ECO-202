# ECO 202 Practice 10: Random Variables, Expectations, Variance, and Covariance — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 10: Random Variables, Expectations, Variance, and Covariance](../)  
**Class guide:** [Class 10](../../)

[← Return to Practice 10](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Read a solution only after a genuine attempt and its compact check. Then close this file, reconstruct the probability-model calculation, and attempt the nearby transfer without assistance.

<!-- Source lineage: Complete solutions for the newly authored Fall 2026 Practice 10 package. Every calculation was independently reconstructed from the public problem inputs and current Class 10 notation. No protected solution or reserved assessment answer is reproduced. -->

## Solution map

| Solution | Main idea |
|---|---|
| [1. From scenarios to a random variable](#solution-1) | Outcomes, realizations, pmf, and CDF |
| [2. Expectations, transformations, and indicators](#solution-2) | Weighted averages and linearity |
| [3. Variance, standard deviation, and units](#solution-3) | Squared deviations, scale, and units |
| [4. A joint revenue–delivery table](#solution-4) | Marginals, covariance, correlation, and independence |
| [5. Variance of a sum and zero covariance](#solution-5) | Covariance in sums and a counterexample |
| [6. Audit one moment report](#solution-6) | Definition, unit, dependence, and causal repairs |

<a id="solution-1"></a>

## Solution 1. From scenarios to a random variable

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [From an outcome to a random variable](../../#c10-stop-1)

### Question and strategy

Keep the scenario and its numerical image separate. Count how many of the eight equally likely scenarios map to each possible profit, then accumulate those masses from left to right for the CDF.

### Complete solution

The random phenomenon is which one of the eight demand-and-return scenarios occurs. The sample space is

$$
\Omega=\lbrace a,b,c,d,e,f,g,h\rbrace.
$$

The random variable $X$ maps each scenario into profit measured in tens of dollars. A realization $x$ is the numerical value produced after one scenario occurs. Because the support $\lbrace-1,1,2,4\rbrace$ is finite, $X$ is discrete under this model; being quantitative does not make a variable continuous.

Counting scenarios gives the pmf

| $x$ | $-1$ | $1$ | $2$ | $4$ |
|---|---:|---:|---:|---:|
| $p_X(x)$ | $2/8$ | $3/8$ | $2/8$ | $1/8$ |

The masses are nonnegative and sum to $(2+3+2+1)/8=1$. The CDF is

$$
F_X(t)=
\begin{cases}
0, & t<-1, \\
\frac{2}{8}, & -1\leq t<1, \\
\frac{5}{8}, & 1\leq t<2, \\
\frac{7}{8}, & 2\leq t<4, \\
1, & t\geq4.
\end{cases}
$$

Therefore

$$
F_X(0)=\frac28,
\qquad
F_X(1)=\frac58.
$$

The event $1<X\leq4$ contains $X=2$ and $X=4$, so its probability is $(2+1)/8=3/8$. The event $X\geq2$ contains the same values and also has probability $3/8$.

If scenario $g$ occurs, the realization is $x=2$ tens of dollars, or 20 dollars. The possible-outcome map and the probability distribution remain the stated model; observing one realization does not replace the distribution with a point mass unless the model itself is changed.

### Verification and limitation

The four pmf masses sum to one, and every CDF jump equals the mass at that value. The model describes the declared eight-scenario mechanism; it does not establish how the scenarios were calibrated to an actual business.

### Nearby transfer

Before opening the check, suppose six equally likely scenarios map a random variable $Z$ to $-2$ in two scenarios, 0 in one scenario, and 3 in three scenarios. Construct its pmf and CDF, then calculate $\mathbb P(Z>0)$.

<details>
<summary>Reveal the transfer check</summary>

The pmf assigns probabilities $1/3$, $1/6$, and $1/2$ to $-2,0,3$. The CDF levels are 0, $1/3$, $1/2$, and 1 across the cut points $-2,0,3$, and $\mathbb P(Z>0)=1/2$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Expectations, transformations, and indicators

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Expectation, transformations, and indicators](../../#c10-stop-2)

### Question and strategy

Use the pmf as probability weights. For a transformation, either transform every support value or apply linearity when the transformation is affine. For an indicator, its expectation is the probability that it equals one.

### Complete solution

The expectation of $X$ is

$$
\mathbb E[X]
=(-1)\frac28+(1)\frac38+(2)\frac28+(4)\frac18
=\frac98
=1.125.
$$

Expected profit is 1.125 tens of dollars, or 11.25 dollars. The value $1.125$ is not in the support, so expectation need not be a possible realization.

The second moment is

$$
\mathbb E[X^2]
=(1)\frac28+(1)\frac38+(4)\frac28+(16)\frac18
=\frac{29}{8}
=3.625.
$$

By contrast,

$$
(\mathbb E[X])^2=\left(\frac98\right)^2=\frac{81}{64}=1.265625.
$$

Squaring is nonlinear, so $\mathbb E[X^2]$ need not equal $(\mathbb E[X])^2$.

For $T=5+10X$, the transformed distribution is

| $t$&nbsp;in dollars | $-5$ | $15$ | $25$ | $45$ |
|---|---:|---:|---:|---:|
| $\mathbb P(T=t)$ | $2/8$ | $3/8$ | $2/8$ | $1/8$ |

The direct expectation is

$$
\mathbb E[T]
=(-5)\frac28+(15)\frac38+(25)\frac28+(45)\frac18
=\frac{130}{8}
=16.25.
$$

The expectation is 16.25 dollars.

Linearity gives the same result:

$$
\mathbb E[T]=5+10\mathbb E[X]=5+10\left(\frac98\right)=16.25.
$$

The indicator $H=1$ when $X=2$ or $X=4$, so

| $h$ | $0$ | $1$ |
|---|---:|---:|
| $\mathbb P(H=h)$ | $5/8$ | $3/8$ |

Thus

$$
\mathbb E[H]=0\left(\frac58\right)+1\left(\frac38\right)=\frac38=\mathbb P(X\geq2).
$$

None of these calculations requires independence. Each concerns one variable or a function of it, and linearity of expectation itself does not require independence.

### Verification and limitation

The direct and linearity calculations for $T$ both give 16.25 dollars. That agreement checks the transformed support and weights; it does not make expected profit a guaranteed outcome.

### Nearby transfer

Before opening the check, define $K=\mathbf 1\lbrace X=4\rbrace$ and $L=2-3X$. Calculate $\mathbb E[K]$ and $\mathbb E[L]$.

<details>
<summary>Reveal the transfer check</summary>

$\mathbb E[K]=\mathbb P(X=4)=1/8$. By linearity, $\mathbb E[L]=2-3(9/8)=-11/8$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Variance, standard deviation, and units

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Variance, standard deviation, and units](../../#c10-stop-3)

### Question and strategy

Calculate spread around $\mathbb E[X]=9/8$ and verify it with the second-moment shortcut. Then apply the square-scale rule to variance and the absolute-scale rule to standard deviation.

### Complete solution

The squared-deviation calculation is

$$
\begin{aligned}
\mathrm{Var}(X)
&=\frac28\left(-1-\frac98\right)^2
+\frac38\left(1-\frac98\right)^2 \\
&\quad+\frac28\left(2-\frac98\right)^2
+\frac18\left(4-\frac98\right)^2 \\
&=\frac{151}{64}
=2.359375.
\end{aligned}
$$

The shortcut agrees:

$$
\mathrm{Var}(X)
=\mathbb E[X^2]-(\mathbb E[X])^2
=\frac{29}{8}-\frac{81}{64}
=\frac{151}{64}.
$$

Therefore

$$
\mathrm{SD}(X)=\frac{\sqrt{151}}8\approx1.5360.
$$

Because $X$ is measured in tens of dollars, its variance is measured in squared tens of dollars and its standard deviation in tens of dollars.

For $T=5+10X$,

$$
\mathrm{Var}(T)
=10^2\mathrm{Var}(X)
=100\left(\frac{151}{64}\right)
=235.9375
$$

in dollars squared, while

$$
\mathrm{SD}(T)
=10\mathrm{SD}(X)
=\frac{10\sqrt{151}}8
\approx15.3603
$$

in dollars. Adding 5 changes every value and the expectation by 5 dollars but leaves all deviations from the expectation unchanged. Multiplying by 10 multiplies deviations by 10 and their squares by 100.

Because $H$ is a zero-one random variable with $\mathbb P(H=1)=3/8$,

$$
\mathrm{Var}(H)
=\frac38\left(1-\frac38\right)
=\frac{15}{64},
$$

and

$$
\mathrm{SD}(H)=\frac{\sqrt{15}}8\approx0.4841.
$$

An indicator is a unitless numerical coding of an event, so its variance and standard deviation are unitless.

The audited statement has two errors: 235.94 is approximately the variance of $T$, not its standard deviation, and variance uses squared dollars rather than dollars. The standard deviation is approximately 15.36 dollars.

### Verification and limitation

Squaring $15.3603$ gives approximately 235.94, which checks the variance–standard-deviation distinction. A location shift can be checked by subtracting the transformed expectation from every transformed support value.

### Nearby transfer

Before opening the check, let $S=-20+5X$ be measured in dollars. Calculate $\mathrm{Var}(S)$ and $\mathrm{SD}(S)$ with units.

<details>
<summary>Reveal the transfer check</summary>

$\mathrm{Var}(S)=25(151/64)=3775/64\approx58.9844$ dollars squared, and $\mathrm{SD}(S)=5\sqrt{151}/8\approx7.6801$ dollars. The shift $-20$ does not affect spread.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. A joint revenue–delivery table

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [Joint distributions, covariance, and correlation](../../#c10-stop-4)

### Question and strategy

Complete the margins before calculating moments. Obtain each one-variable moment from its marginal distribution and $\mathbb E[RQ]$ from the four joint cells.

### Complete solution

Summing rows and columns gives

| Delivery indicator | $R=0$ | $R=2$ | Marginal probability |
|---|---:|---:|---:|
| $Q=0$ | $0.30$ | $0.10$ | $0.40$ |
| $Q=1$ | $0.20$ | $0.40$ | $0.60$ |
| **Marginal probability** | **$0.50$** | **$0.50$** | **$1.00$** |

All four cells are nonnegative and sum to one. The marginal pmfs are

$$
\mathbb P(R=0)=0.50,
\qquad
\mathbb P(R=2)=0.50,
$$

and

$$
\mathbb P(Q=0)=0.40,
\qquad
\mathbb P(Q=1)=0.60.
$$

The expectations are

$$
\mathbb E[R]=0(0.50)+2(0.50)=1
$$

hundred dollars and

$$
\mathbb E[Q]=0(0.40)+1(0.60)=0.60.
$$

For revenue,

$$
\mathbb E[R^2]=0^2(0.50)+2^2(0.50)=2,
$$

so

$$
\mathrm{Var}(R)=2-1^2=1,
\qquad
\mathrm{SD}(R)=1.
$$

For the indicator,

$$
\mathrm{Var}(Q)=0.60(0.40)=0.24,
\qquad
\mathrm{SD}(Q)=\sqrt{0.24}\approx0.4899.
$$

Only the cell $(R=2,Q=1)$ contributes a nonzero product, so

$$
\mathbb E[RQ]=2(1)(0.40)=0.80.
$$

Thus

$$
\mathrm{Cov}(R,Q)
=0.80-(1)(0.60)
=0.20
$$

and

$$
\mathrm{Corr}(R,Q)
=\frac{0.20}{(1)(\sqrt{0.24})}
\approx0.4082.
$$

Covariance has units of hundreds of dollars times the unitless indicator, while correlation is unitless. Independence fails because

$$
\mathbb P(R=2,Q=1)=0.40
\ne
(0.50)(0.60)=0.30.
$$

The positive association and failed factorization do not establish that making deliveries on time would cause revenue to change. No assignment or other causal design is supplied.

### Verification and limitation

The covariance sign agrees with the table: $Q=1$ places more probability on $R=2$ than $Q=0$ does. Standardizing $0.20$ by both positive standard deviations must produce a correlation between zero and one.

### Nearby transfer

Before opening the check, convert revenue to dollars by defining $S=100R$. Calculate $\mathrm{SD}(S)$, $\mathrm{Cov}(S,Q)$, and $\mathrm{Corr}(S,Q)$.

<details>
<summary>Reveal the transfer check</summary>

$\mathrm{SD}(S)=100$ dollars, $\mathrm{Cov}(S,Q)=100(0.20)=20$ dollars, and $\mathrm{Corr}(S,Q)=0.4082$ because correlation is unchanged by positive rescaling.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Variance of a sum and zero covariance

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Sums, dependence, and diversification](../../#c10-stop-5)

### Question and strategy

Keep the covariance term in every sum calculation until the model removes it. Then use the four-outcome construction to test whether zero covariance determines the entire joint distribution.

### Complete solution

The standard deviations are

$$
\mathrm{SD}(A)=4,
\qquad
\mathrm{SD}(B)=3,
$$

so

$$
\mathrm{Corr}(A,B)=\frac{-6}{(4)(3)}=-0.50.
$$

The variance of the sum is

$$
\mathrm{Var}(A+B)
=16+9+2(-6)
=13.
$$

Omitting covariance would incorrectly give $16+9=25$. If $A$ and $B$ were independent, independence would imply zero covariance and the sum variance would be 25. Zero covariance alone would also make this particular variance formula equal 25, but it would not establish independence.

For the constructed pair, the four equally likely outcomes are

| $u$ | $-2$ | $-1$ | $1$ | $2$ |
|---|---:|---:|---:|---:|
| $v=\mathbf 1\lbrace|u|=2\rbrace$ | $1$ | $0$ | $0$ | $1$ |

The moments are

$$
\mathbb E[U]=0,
\qquad
\mathbb E[V]=\frac12,
$$

and

$$
\mathbb E[UV]
=\frac14(-2+0+0+2)
=0.
$$

Therefore

$$
\mathrm{Cov}(U,V)=0-(0)\left(\frac12\right)=0.
$$

The variables are nevertheless dependent because $V$ is determined by $U$. For example,

$$
\mathbb P(V=1\mid U=2)=1
\ne
\frac12=\mathbb P(V=1).
$$

The variances are

$$
\mathrm{Var}(U)=\mathbb E[U^2]=\frac{4+1+1+4}{4}=2.5
$$

and

$$
\mathrm{Var}(V)=\frac12\left(1-\frac12\right)=0.25.
$$

Because covariance is zero,

$$
\mathrm{Var}(U+V)=2.5+0.25=2.75.
$$

Directly, $U+V$ equals $-1,-1,1,3$ across the four outcomes. Its mean is $0.5$, its second moment is

$$
\frac{1+1+1+9}{4}=3,
$$

and its variance is $3-0.5^2=2.75$, confirming the formula.

### Verification and limitation

The direct sum distribution and covariance formula agree exactly. This counterexample disproves the general converse from zero covariance to independence; special distribution families may impose additional structure, but none is assumed here.

### Nearby transfer

Before opening the check, let $Z$ take values $-3,-1,1,3$ with equal probabilities and let $K=\mathbf 1\lbrace|Z|=3\rbrace$. Calculate $\mathrm{Cov}(Z,K)$, decide whether the variables are independent, and find $\mathrm{Var}(Z+K)$.

<details>
<summary>Reveal the transfer check</summary>

$\mathbb E[Z]=0$, $\mathbb E[K]=1/2$, and $\mathbb E[ZK]=(-3+3)/4=0$, so covariance is zero. The variables are dependent because $K$ is determined by $Z$. $\mathrm{Var}(Z)=5$ and $\mathrm{Var}(K)=0.25$, so $\mathrm{Var}(Z+K)=5.25$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Audit one moment report

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connection:** [Audit a moment report](../../#c10-stop-7)

### Question and strategy

Check support before labels, units before interpretation, and the joint distribution before dependence claims. Treat the final sentence as two claims: one about independence and one about variance additivity.

### Complete solution

The first error is calling $R$ continuous merely because it is numerical. Under the supplied joint table, $R$ has finite support $\lbrace0,2\rbrace$ and is discrete.

The expected value is $\mathbb E[R]=1$, which is not a possible realization. Expectation is a probability-weighted center, not a requirement that one outcome equal the center.

Although $\mathrm{Var}(R)=1$ and $\mathrm{SD}(R)=1$ have the same numerical value, their units differ. Variance is measured in squared hundreds of dollars, while standard deviation is measured in hundreds of dollars.

The positive covariance $0.20$ and correlation approximately $0.4082$ describe association under the joint distribution. Covariance has revenue-by-indicator units, and correlation is unitless. The table contains no randomized intervention or other identification argument, so it does not establish causality.

The final sentence combines a false justification with a correct conclusion. Zero covariance does not imply independence, as the $U,V$ construction shows. Yet zero covariance does imply

$$
\mathrm{Var}(X+Y)
=\mathrm{Var}(X)+\mathrm{Var}(Y)
$$

because the covariance term in the general formula is zero. Independence would be sufficient for zero covariance under finite second moments, but it is not necessary for variance additivity.

A five-sentence repair is:

> Under the supplied table, $R$ is a discrete random variable with support $\lbrace0,2\rbrace$, and its expectation 1 need not be a possible realization. Its variance is 1 in squared hundreds of dollars, while its standard deviation is 1 hundred dollars. Covariance 0.20 and correlation about 0.4082 describe positive association, correlation is unitless, and no causal design is supplied. If covariance is zero, the variance of a sum equals the sum of the variances. Zero covariance alone does not establish independence.

For the final transfer,

$$
\mathrm{Var}(C+D)=5+7+2(0)=12.
$$

Zero covariance does not justify an independence conclusion. If independence is additionally supplied, the new information is the full factorization property of the joint distribution; the sum-variance calculation remains 12 because covariance was already known to be zero.

### Verification and limitation

Problem 4 independently verifies every reported moment, while Problem 5 supplies the logical counterexample. A correct sum-variance result does not retroactively make an invalid independence argument correct.

### Nearby transfer

Before opening the check, suppose $\mathrm{Var}(M)=4$, $\mathrm{Var}(N)=1$, and $\mathrm{Cov}(M,N)=-1$. Calculate $\mathrm{Corr}(M,N)$ and $\mathrm{Var}(M+N)$. Can the variables be independent?

<details>
<summary>Reveal the transfer check</summary>

$\mathrm{Corr}(M,N)=-1/(2\cdot1)=-0.5$ and $\mathrm{Var}(M+N)=4+1+2(-1)=3$. They cannot be independent because independent variables with finite second moments have zero covariance.

</details>

[Return to the solution map](#solution-map)

## Reconstruct before moving on

Close this file and, from a blank page, build one discrete pmf, calculate an expectation and variance, and explain with one formula and one counterexample why variance additivity under zero covariance does not establish independence. If any step depends on remembered prose rather than a probability model, return to the corresponding solution and attempt its nearby transfer.
