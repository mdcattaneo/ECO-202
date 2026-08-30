# ECO 202 Practice 10: Random Variables, Expectations, Variance, and Covariance

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 10: Random Variables, Expectations, Variance, and Covariance](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 10 and before Class 11

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Begin with an independent attempt, use compact checks to diagnose your work, and open a complete solution only after you have a specific calculation or interpretation to repair.

<!-- Source lineage: Scope is calibrated against the current Fall 2026 Class 10 guide; Econ202-UlrichMueller/LectureNotes.tex, lines 1337--2013; Spring 2026 Problem Set 4; and selected private historical assessment material. Every setting, value, table, claim, prompt, and transfer below is newly authored for this practice; no legacy exercise or protected assessment wording is reproduced. -->

## Purpose and recommended route

This practice turns random outcomes into numerical variables and then builds the moment calculations needed for later statistical work. You will construct a discrete distribution, calculate expectations of transformations and indicators, track variance and standard-deviation units, work through a joint table, use covariance in the variance of a sum, and distinguish zero covariance from independence.

The recommended core is Problems 1–6 and should take exactly 45–55 minutes under the stage ranges below. Complete Problems 1–5 without AI, statistical software, answer checks, or worked solutions; an ordinary calculator is fine. Problem 6 includes a complete non-AI audit and final transfer in the timed core, followed by an optional AI comparison outside the estimate. Optional AI use, answer-check study, worked-solution study, and optional extensions take additional time.

| Stage | Suggested time | Work |
|---|---:|---|
| Map outcomes into a distribution | 6–7 minutes | Problem 1 |
| Calculate expectations and indicators | 7–8 minutes | Problem 2 |
| Track variance, scale, and units | 7–8 minutes | Problem 3 |
| Work through a joint table | 10–12 minutes | Problem 4 |
| Combine variables and audit dependence | 8–10 minutes | Problem 5 |
| Audit claims and finish unaided | 7–10 minutes | Problem 6 |

## What you must be able to do independently

After completing the core route, you should be able to:

- distinguish a random phenomenon, a random variable, a realization, and a probability distribution;
- construct and check a discrete pmf and read probabilities from its CDF;
- calculate and interpret expectations of a variable, a transformation, and an indicator;
- calculate variance and standard deviation and track their different units;
- obtain marginal distributions from a joint table and calculate $\mathbb E[XY]$, covariance, and correlation;
- calculate the variance of a sum with the covariance term visible;
- explain why independence implies zero covariance while zero covariance does not generally imply independence; and
- audit claims about support, units, dependence, and causality without relying on software syntax.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. From scenarios to a random variable](#problem-1) | Map equally likely economic scenarios into a pmf and CDF. | Unaided object map |
| [2. Expectations, transformations, and indicators](#problem-2) | Calculate expectations without using invalid nonlinear shortcuts. | Unaided calculation |
| [3. Variance, standard deviation, and units](#problem-3) | Calculate spread and transform it with the correct scale and units. | Board-style calculation |
| [4. A joint revenue–delivery table](#problem-4) | Obtain marginals, moments, covariance, correlation, and an independence check. | Unaided joint-table work |
| [5. Variance of a sum and zero covariance](#problem-5) | Use covariance in a sum and construct a dependent uncorrelated pair. | Calculation + distinction audit |
| [6. Audit one moment report](#problem-6) | Repair an identical claim by non-AI and optional AI routes, then transfer unaided. | Non-AI audit; optional AI comparison |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. From scenarios to a random variable

**Class-guide connection:** [From an outcome to a random variable](../#c10-stop-1)

A neighborhood seller uses eight equally likely demand-and-return scenarios, labeled $a$ through $h$, for next-hour net profit. Let $X$ be profit measured in tens of dollars. The scenario map is

| Scenario | $a$ | $b$ | $c$ | $d$ | $e$ | $f$ | $g$ | $h$ |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Profit realization ($x$) | $-1$ | $-1$ | $1$ | $1$ | $1$ | $2$ | $2$ | $4$ |

1. Identify the random phenomenon, sample space, random variable, and one possible realization. Explain why $X$ is discrete under this model even though profit is quantitative.
2. Construct the pmf of $X$ and verify its probabilities are nonnegative and sum to one.
3. Write the CDF $F_X(t)=\mathbb P(X\leq t)$ as a piecewise function.
4. Calculate $F_X(0)$, $F_X(1)$, $\mathbb P(1<X\leq4)$, and $\mathbb P(X\geq2)$.
5. If scenario $g$ occurs, state the realization $x$ in both tens of dollars and dollars. Explain which parts of the probability model remain unchanged after this outcome is observed.

<!-- Source lineage: Newly authored eight-scenario seller model and outcome map. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Expectations, transformations, and indicators

**Class-guide connection:** [Expectation, transformations, and indicators](../#c10-stop-2)

Continue with the random variable $X$ from Problem 1.

1. Calculate $\mathbb E[X]$ from the pmf and interpret the result in tens of dollars and dollars. Is the expectation a possible realization of $X$?
2. Calculate $\mathbb E[X^2]$ and compare it with $(\mathbb E[X])^2$. Explain why the two values need not agree.
3. A fixed 5-dollar payment is added to dollar profit, giving $T=5+10X$. List the possible values and probabilities of $T$.
4. Calculate $\mathbb E[T]$ directly from the distribution of $T$ and again using linearity. Verify that the two routes agree.
5. Define $H=\mathbf 1\lbrace X\geq2\rbrace$. Write the distribution of $H$ and calculate $\mathbb E[H]$. Interpret this expectation as a probability.
6. State which expectation calculations above require independence. Explain your answer.

<!-- Source lineage: Newly authored transformation and threshold indicator built from Problem 1. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Variance, standard deviation, and units

**Class-guide connection:** [Variance, standard deviation, and units](../#c10-stop-3)

Continue with $X$, $T=5+10X$, and $H$ from Problems 1–2.

1. Calculate $\mathrm{Var}(X)$ using both the squared-deviation definition and $\mathbb E[X^2]-(\mathbb E[X])^2$.
2. Calculate $\mathrm{SD}(X)$. State the units of $\mathrm{Var}(X)$ and $\mathrm{SD}(X)$.
3. Use the transformation rules to calculate $\mathrm{Var}(T)$ and $\mathrm{SD}(T)$. State their units in dollars.
4. Explain why adding the fixed 5-dollar payment changes expected profit but not variance, while multiplying $X$ by 10 changes variance by a factor of 100.
5. Calculate $\mathrm{Var}(H)$ and $\mathrm{SD}(H)$. Explain why these quantities are unitless.
6. Audit this statement: “The standard deviation of $T$ is about 235.94 dollars because variance and standard deviation use the same units.” Identify both errors.

<!-- Source lineage: Newly authored spread-and-units sequence using the preceding practice distribution. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. A joint revenue–delivery table

**Class-guide connection:** [Joint distributions, covariance, and correlation](../#c10-stop-4)

For a stylized delivery business, let $R$ be the next-day revenue change measured in hundreds of dollars, with possible values 0 and 2. Let $Q=1$ if all scheduled deliveries arrive on time and $Q=0$ otherwise. Their joint distribution is

| Delivery indicator | $R=0$ | $R=2$ | Marginal probability |
|---|---:|---:|---:|
| $Q=0$ | $0.30$ | $0.10$ |  |
| $Q=1$ | $0.20$ | $0.40$ |  |
| **Marginal probability** |  |  | **$1.00$** |

1. Complete all marginal probabilities and verify that the four joint cells form a valid distribution.
2. Write the marginal pmfs of $R$ and $Q$, then calculate $\mathbb E[R]$ and $\mathbb E[Q]$.
3. Calculate $\mathrm{Var}(R)$, $\mathrm{SD}(R)$, $\mathrm{Var}(Q)$, and $\mathrm{SD}(Q)$.
4. Calculate $\mathbb E[RQ]$ directly from the joint table.
5. Calculate $\mathrm{Cov}(R,Q)$ and $\mathrm{Corr}(R,Q)$. State the units of each.
6. Test independence using the cell $(R=2,Q=1)$. Would the sign of the covariance alone be enough to establish independence or causality? Explain.

<!-- Source lineage: Newly authored revenue–delivery joint distribution and values. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Variance of a sum and zero covariance

**Class-guide connection:** [Sums, dependence, and diversification](../#c10-stop-5)

Two weekly cost shocks $A$ and $B$, measured in hundreds of dollars, satisfy

$$
\mathrm{Var}(A)=16,
\qquad
\mathrm{Var}(B)=9,
\qquad
\mathrm{Cov}(A,B)=-6.
$$

1. Calculate $\mathrm{SD}(A)$, $\mathrm{SD}(B)$, and $\mathrm{Corr}(A,B)$.
2. Calculate $\mathrm{Var}(A+B)$. Compare it with the answer obtained by incorrectly omitting covariance.
3. If $A$ and $B$ were independent with the same marginal variances, what would $\mathrm{Cov}(A,B)$ and $\mathrm{Var}(A+B)$ be? Which implication are you using?

Now let $U$ take values $-2,-1,1,2$ with probability $1/4$ each and let $V=\mathbf 1\lbrace |U|=2\rbrace$.

4. Calculate $\mathbb E[U]$, $\mathbb E[V]$, $\mathbb E[UV]$, and $\mathrm{Cov}(U,V)$.
5. Show directly that $U$ and $V$ are dependent despite their covariance.
6. Calculate $\mathrm{Var}(U+V)$ with the variance-of-a-sum formula and verify it from the distribution of $U+V$.

<!-- Source lineage: Newly authored cost-shock moments and four-outcome dependent-but-uncorrelated construction. -->

[Back to the problem map](#problem-map)

<a id="problem-6"></a>

### Problem 6. Audit one moment report

**Class-guide connection:** [Audit a moment report](../#c10-stop-7)

Audit this exact claim after completing Problems 1–5:

> “Because R is numerical, it is continuous. Its expected value 1 must be a possible realization. The variance and standard deviation are both 1, so both are measured in hundreds of dollars. Covariance 0.20 proves that on-time delivery causes revenue to rise, and correlation 0.4082 has hundreds-of-dollars units. If two variables have zero covariance, they are independent, so the variance of their sum equals the sum of their variances.”

1. Identify the first error, then audit every sentence using the support and joint table from Problem 4.
2. Rewrite the claim in no more than five sentences. Preserve every correct numerical conclusion while repairing definitions, units, dependence logic, and causal scope.
3. For the final zero-covariance sentence, explain why its independence claim is false but its variance-additivity conclusion is correct under the stated zero-covariance condition.
4. Give one calculation and one logical counterexample that verify your repair.

**Complete non-AI route:** Return to the support of $R$ and the four joint cells before reading your numerical summaries. Recalculate $\mathbb E[R]$, $\mathrm{Var}(R)$, $\mathrm{SD}(R)$, $\mathrm{Cov}(R,Q)$, and $\mathrm{Corr}(R,Q)$ with units. Check independence with one failed cell product, ask whether any intervention was assigned, apply the variance-of-a-sum formula under zero covariance, and use the $U,V$ construction from Problem 5 to test the converse from zero covariance to independence.

**Optional AI comparison outside the recommended time:** Only after completing the non-AI audit, give an AI system the supplied table and the identical claim below. Do not upload personal work or unrelated files.

```text
Use this joint distribution: the probabilities of (R=0,Q=0), (R=2,Q=0),
(R=0,Q=1), and (R=2,Q=1) are 0.30, 0.10, 0.20, and 0.40. R is measured
in hundreds
of dollars and Q is a zero-one on-time-delivery indicator.

Audit exactly this claim: "Because R is numerical, it is continuous. Its
expected value 1 must be a possible realization. The variance and standard
deviation are both 1, so both are measured in hundreds of dollars. Covariance
0.20 proves that on-time delivery causes revenue to rise, and correlation
0.4082 has hundreds-of-dollars units. If two variables have zero covariance,
they are independent, so the variance of their sum equals the sum of their
variances."

Identify the first error, then repair every sentence. Verify the marginal
moments, the expected value of RQ, covariance, correlation, and one cell-product
independence
check. For the final sentence, separate the valid variance conclusion under
zero covariance from the invalid independence conclusion. Do not invent a
causal design or data source.
```

Record one correction the system made accurately and one point you had to verify or refine yourself.

**Final unaided transfer:** Close any AI system, answer check, and worked solution. Suppose $\mathrm{Var}(C)=5$, $\mathrm{Var}(D)=7$, and $\mathrm{Cov}(C,D)=0$. Calculate $\mathrm{Var}(C+D)$. Can you conclude that $C$ and $D$ are independent? If you are additionally told they are independent, identify which conclusion is newly supplied and which variance calculation remains unchanged.

<!-- Source lineage: Newly authored audit and transfer using the Problem 4 table and Problem 5 dependence distinction. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the recommended route. They confirm targets and principal values, not the reasoning that an independent solution must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

The pmf is $p_X(-1)=2/8$, $p_X(1)=3/8$, $p_X(2)=2/8$, and $p_X(4)=1/8$. The CDF levels are 0, $2/8$, $5/8$, $7/8$, and 1 across the cut points $-1,1,2,4$. Thus $F_X(0)=2/8$, $F_X(1)=5/8$, and both requested interval probabilities equal $3/8$. Scenario $g$ realizes $x=2$, or 20 dollars.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

$\mathbb E[X]=9/8=1.125$, $\mathbb E[X^2]=29/8=3.625$, and $(\mathbb E[X])^2=81/64$. The transformed values are $-5,15,25,45$ dollars, with $\mathbb E[T]=16.25$ dollars. The indicator has $\mathbb P(H=1)=\mathbb E[H]=3/8$.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

$\mathrm{Var}(X)=151/64=2.359375$ and $\mathrm{SD}(X)=\sqrt{151}/8\approx1.5360$. Therefore $\mathrm{Var}(T)=235.9375$ dollars squared and $\mathrm{SD}(T)\approx15.3603$ dollars. Also $\mathrm{Var}(H)=15/64$ and $\mathrm{SD}(H)=\sqrt{15}/8$.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

The row margins are 0.40 and 0.60; the column margins are 0.50 and 0.50. $\mathbb E[R]=1$, $\mathbb E[Q]=0.60$, $\mathrm{Var}(R)=1$, $\mathrm{Var}(Q)=0.24$, and $\mathbb E[RQ]=0.80$. Covariance is 0.20 and correlation is approximately 0.4082. The cell 0.40 differs from $(0.50)(0.60)=0.30$, so the variables are not independent.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

$\mathrm{Corr}(A,B)=-0.50$ and $\mathrm{Var}(A+B)=13$; under independence the sum variance would be 25. For the counterexample, $\mathbb E[U]=0$, $\mathbb E[V]=0.50$, and $\mathrm{Cov}(U,V)=0$, but $V$ is determined by $U$. The variance of $U+V$ is 2.75.

</details>

<details>
<summary>Reveal the compact check for Problem 6</summary>

$R$ is discrete under the supplied table, 1 is not in its support, variance has squared revenue units, standard deviation has revenue units, correlation is unitless, and the table supplies association rather than causality. Zero covariance makes variances add but does not prove independence. The final transfer gives $\mathrm{Var}(C+D)=12$ with no independence conclusion.

</details>

## Suggested study sequence

1. Complete Problems 1–6 in order and mark the first step at which you became uncertain.
2. Use only the corresponding compact check to identify whether the issue is arithmetic, notation, or interpretation.
3. Open a [worked solution](solutions/) only after a genuine attempt and read through the first point where your work diverged.
4. Close the solution, reconstruct the calculation from a blank page, and complete its nearby transfer without assistance.
5. Repeat one dependence audit on a later day, explicitly separating covariance, correlation, and independence.

## Personal learning record

In private study notes, record:

- **Independent:** one distribution or moment calculation completed without a hint;
- **Prompted:** one step completed after a compact check or strategic cue;
- **Supplied:** any reasoning, wording, or computation supplied by AI, a solution, or another source;
- **Verified:** one numerical or logical claim checked by a second route;
- **Remaining:** one distinction you still need to explain without assistance; and
- **Transfer:** one fresh variance or dependence problem you will attempt later.

This record is for self-assessment, not submission or grading.

## Common core and optional extensions

**Common core:** Every definition, calculation, interpretation, assumption, unit check, and limitation required in Problems 1–6.

**Optional extensions:** Mixed discrete–continuous distributions; existence conditions for moments; full algebraic proofs of covariance identities; general affine covariance transformations; expected utility; and portfolio optimization. These extensions are not substitutes for the common-core calculations and independence distinction.
