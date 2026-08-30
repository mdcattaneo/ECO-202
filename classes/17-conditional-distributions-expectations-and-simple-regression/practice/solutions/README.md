# ECO 202 Practice 17: Conditional Distributions, Expectations, and Simple Regression — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 17: Conditional Distributions, Expectations, and Simple Regression](../)  
**Class guide:** [Class 17](../../)

[← Return to Practice 17](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Read a solution only after a genuine attempt and its compact check. Then close this file, reconstruct the argument from a blank page, and attempt the nearby transfer without assistance.

<!-- Source lineage: Complete solutions for the newly authored Fall 2026 Practice 17 package. Every calculation was independently reconstructed from the public inputs, the current Class 17 guide, and the verified Class 17 script and data. No protected solution or reserved assessment answer is reproduced. -->

## Solution map

| Solution | Main idea |
|---|---|
| [1. Conditional distributions from the joint table](#solution-1) | Conditional denominators and complete distributions |
| [2. Conditional means, iterated expectations, and noise](#solution-2) | Within-group means, recombination, and mean-zero errors |
| [3. A population line is not every conditional mean](#solution-3) | Population best linear approximation |
| [4. The fitted wage line](#solution-4) | Sample coefficients, units, and fitted values |
| [5. Robust uncertainty for the wage slope](#solution-5) | HC1 slope uncertainty and its limits |
| [6. Audit one regression report](#solution-6) | Predictive, conditional, population, and causal boundaries |

<a id="solution-1"></a>

## Solution 1. Conditional distributions from the joint table

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [Conditional distributions from a joint table](../../#c17-stop-1)

### Question and strategy

Conditioning restricts attention to one column and changes the denominator to that column's probability. Divide every joint cell in the chosen column by its margin, then verify that the resulting conditional probabilities sum to one.

### Complete solution

The intermediate-group margin is $0.08+0.25+0.15=0.48$. Therefore

$$
\begin{aligned}
\mathbb P(Y=4\mid X=\mathrm{intermediate})&=\frac{0.08}{0.48}=\frac16,\\
\mathbb P(Y=10\mid X=\mathrm{intermediate})&=\frac{0.25}{0.48}=\frac{25}{48},\\
\mathbb P(Y=16\mid X=\mathrm{intermediate})&=\frac{0.15}{0.48}=\frac{5}{16}.
\end{aligned}
$$

These sum to $(8+25+15)/48=1$. For the advanced group, the margin is 0.32, so the conditional probabilities at $Y=4,10,16$ are $1/16$, $5/16$, and $5/8$, which also sum to one.

The requested upper probabilities are

$$
\mathbb P(Y\geq10\mid X=\mathrm{intermediate})=\frac{25}{48}+\frac{5}{16}=\frac56
$$

and

$$
\mathbb P(Y\geq10\mid X=\mathrm{advanced})=\frac{5}{16}+\frac58=\frac{15}{16}.
$$

Unconditionally, $\mathbb P(Y\geq10)=0.43+0.35=0.78$. The unconditional probability mixes all three groups using their population prevalence, whereas each conditional probability describes only one group. A conditional mean keeps the weighted center but discards how probability is distributed around that center; the full conditional distribution retains every outcome probability.

### Verification and limitation

Multiplying each conditional probability by its group margin recovers the corresponding joint cell. This table describes a known fictional population; it does not by itself say that education causes the earnings differences.

### Nearby transfer

Before opening the check, construct the basic-group conditional distribution and calculate $\mathbb P(Y\geq10\mid X=\mathrm{basic})$.

<details>
<summary>Reveal the transfer check</summary>

The basic margin is 0.20, so the conditional probabilities at $Y=4,10,16$ are 0.60, 0.40, and 0. The requested probability is 0.40.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Conditional means, iterated expectations, and noise

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Conditional means and iterated expectations](../../#c17-stop-2) and [The regression function and mean-plus-noise](../../#c17-stop-3)

### Question and strategy

Average $Y$ using the conditional probabilities within each group. Then average the three conditional means using the actual group probabilities, not equal weights. Finally, subtract the appropriate conditional mean from each possible outcome to verify mean-zero noise within a group.

### Complete solution

The three conditional means are

$$
\begin{aligned}
\mathbb E[Y\mid X=\mathrm{basic}]&=4(0.60)+10(0.40)+16(0)=6.4,\\
\mathbb E[Y\mid X=\mathrm{intermediate}]&=4\left(\frac16\right)+10\left(\frac{25}{48}\right)+16\left(\frac{5}{16}\right)=10.875,\\
\mathbb E[Y\mid X=\mathrm{advanced}]&=4\left(\frac{1}{16}\right)+10\left(\frac{5}{16}\right)+16\left(\frac58\right)=13.375.
\end{aligned}
$$

The law of iterated expectations gives

$$
\mathbb E[Y]=0.20(6.4)+0.48(10.875)+0.32(13.375)=10.78.
$$

The marginal calculation $4(0.22)+10(0.43)+16(0.35)=10.78$ verifies the result. The unweighted average $(6.4+10.875+13.375)/3\approx10.2167$ is wrong because the groups have probabilities 0.20, 0.48, and 0.32 rather than $1/3$ each.

Let $f(x)=\mathbb E[Y\mid X=x]$ and $\varepsilon=Y-f(X)$. For an advanced unit with $Y=16$, $\varepsilon=16-13.375=2.625$. Conditional mean zero is an average statement, not a claim that every error equals zero. In the advanced group, the errors at $Y=4,10,16$ are $-9.375$, $-3.375$, and $2.625$, and

$$
\left(-9.375\right)\frac{1}{16}+\left(-3.375\right)\frac{5}{16}+2.625\frac{10}{16}=0.
$$

Thus $\mathbb E[\varepsilon\mid X]=0$ for every group, and iterated expectations imply $\mathbb E[\varepsilon]=\mathbb E[\mathbb E[\varepsilon\mid X]]=0$.

### Verification and limitation

The direct marginal mean and prevalence-weighted conditional means both equal 10.78. That checks the arithmetic; it does not give the group differences a causal interpretation.

### Nearby transfer

Before opening the check, suppose $\mathbb P(X=0)=0.25$, $\mathbb P(X=1)=0.75$, $f(0)=5$, and $f(1)=9$. Find $\mathbb E[Y]$. For a unit with $X=1$ and $Y=12$, find $\varepsilon$.

<details>
<summary>Reveal the transfer check</summary>

$\mathbb E[Y]=0.25(5)+0.75(9)=8$. The realized error is $12-9=3$; one positive error does not contradict a zero conditional error mean.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. A population line is not every conditional mean

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Population line and fitted sample line](../../#c17-stop-5)

### Question and strategy

Treat the fictional table as the complete population distribution. Calculate the moments of the numerical group index, use them in the population coefficient formulas, and compare the best line with the three conditional means.

### Complete solution

The group probabilities imply

$$
\mathbb E[X]=0(0.20)+1(0.48)+2(0.32)=1.12
$$

and $\mathbb E[X^2]=0^2(0.20)+1^2(0.48)+2^2(0.32)=1.76$, so $\mathrm{Var}(X)=1.76-(1.12)^2=0.5056$.

Using the conditional means,

$$
\mathbb E[XY]=0(0.20)(6.4)+1(0.48)(10.875)+2(0.32)(13.375)=13.78.
$$

Therefore $\mathrm{Cov}(X,Y)=13.78-(1.12)(10.78)=1.7064$, and

$$
\beta_1=\frac{1.7064}{0.5056}=3.375,
\qquad
\beta_0=10.78-3.375(1.12)=7.
$$

Because $Y$ is in tens of thousands of dollars and $X$ is a one-step group index, the slope is 3.375 tens of thousands of dollars per one-index-step. It is not a per-year education effect.

The line's values are 7, 10.375, and 13.75 at $X=0,1,2$. These differ from the conditional means 6.4, 10.875, and 13.375, so the best line does not reproduce the full conditional-mean function. The coefficients are population objects because the complete joint distribution is known. Recoding the groups changes the numerical scale and spacing of $X$, so it changes the slope's numerical interpretation.

### Verification and limitation

The fitted population line passes through $(\mathbb E[X],\mathbb E[Y])=(1.12,10.78)$ because $7+3.375(1.12)=10.78$. A best population line remains descriptive or predictive unless design assumptions justify a causal reading.

### Nearby transfer

Before opening the check, let $X\in\lbrace0,1\rbrace$ with equal probabilities and suppose $\mathbb E[Y\mid X=0]=2$ and $\mathbb E[Y\mid X=1]=8$. Find the population best linear approximation.

<details>
<summary>Reveal the transfer check</summary>

With only two support points, the line passes through both conditional means: $\beta_0=2$ and $\beta_1=6$. This exact fit of the conditional means still does not establish causality.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. The fitted wage line

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [The fitted wage line](../../#c17-stop-5)

### Question and strategy

Use the supplied centered sums to calculate the sample slope, obtain the intercept from the sample means, and keep the outcome and regressor units attached to every interpretation.

### Complete solution

The fitted sample slope is

$$
b_1=\frac{\sum_i(x_i-\bar x)(y_i-\bar y)}{\sum_i(x_i-\bar x)^2}
=\frac{2179.2036}{4025.4297}
\approx0.5413593.
$$

The intercept is

$$
b_0=\bar y-b_1\bar x
=5.8961027-0.5413593(12.5627376)
\approx-0.9048516.
$$

Thus

$$
\widehat{\mathrm{wage}}=-0.9048516+0.5413593\mathrm{educ}.
$$

Substitution of $\bar x$ gives $\widehat y(\bar x)=\bar y$, so the fitted line passes through the sample means. At 14 years,

$$
\widehat{\mathrm{wage}}(14)=-0.9048516+0.5413593(14)\approx6.6742
$$

1976 dollars per hour. The positive slope says that the fitted historical sample wage rises by about 0.5414 dollars per hour for a one-year increase in recorded education. The fitted two-year difference is $2(0.5413593)\approx1.0827$ 1976 dollars per hour.

A fitted value is the line's summary at a given education value, not a guarantee for every worker. The coefficient $b_1$ is calculated from this sample, whereas $\beta_1$ denotes the target population best-linear slope. Neither the sample coefficient nor its positive sign identifies an education effect without a defensible causal design or identification argument.

### Verification and limitation

Using the unrounded moments reproduces $b_1=0.5413592547$ and $b_0=-0.9048516120$; the small difference from hand arithmetic using rounded inputs is harmless. The data are historical and observational.

### Nearby transfer

Before opening the check, a sample has $\bar x=10$, $\bar y=50$, $S_{xx}=200$, and $S_{xy}=80$. Find the fitted line and $\widehat y(12)$.

<details>
<summary>Reveal the transfer check</summary>

$b_1=80/200=0.4$, $b_0=50-0.4(10)=46$, and $\widehat y(12)=50.8$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Robust uncertainty for the wage slope

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Inference for the education slope](../../#c17-stop-6)

### Question and strategy

Standardize the fitted slope by its HC1 estimated standard error, then form estimate plus or minus 1.96 standard errors. Interpret the target and units before auditing what the robust variance calculation does and does not change.

### Complete solution

For $H_0:\beta_1=0$,

$$
Z=\frac{0.5413593-0}{0.0612596}\approx8.8371.
$$

The supplied two-sided p-value is below 0.0001, so reject the zero population best-linear-slope benchmark at the 5% level under the stated model and reference conditions.

The approximate interval is

$$
\begin{aligned}
0.5413593\pm1.96(0.0612596)
&=0.5413593\pm0.1200688\\
&\approx[0.42129,0.66143].
\end{aligned}
$$

Its units are 1976 dollars per hour per year of education. Under the stated independent-observation, large-sample, and model-population conditions, it is an interval for the population best-linear-prediction slope. It is not an interval for every individual's wage change or automatically for a causal effect.

HC1 changes the estimated variance calculation so it does not require constant conditional error variance. It does not make dependent observations independent, create random sampling, repair selection or measurement, impose a linear conditional-mean function, update historical data, or supply causal identification. A small robust p-value measures incompatibility with a zero slope benchmark under the maintained procedure; it cannot solve those separate design and scope problems.

### Verification and limitation

The interval center is the fitted slope and its half-width is approximately 0.12007. Replacing a conventional standard error with HC1 changes uncertainty estimation, not the fitted coefficients or the underlying research design.

### Nearby transfer

Before opening the check, a slope estimate is 0.30 with HC1 standard error 0.10. Find the standardized statistic for zero and the approximate 95% interval, then state one conclusion that robustness alone cannot support.

<details>
<summary>Reveal the transfer check</summary>

$Z=3$ and the interval is $0.30\pm1.96(0.10)=[0.104,0.496]$. The calculation alone cannot establish a causal effect, random sampling, independence, correct measurement, or current-population relevance.

</details>

[Return to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Audit one regression report

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connection:** [Prediction, comparison, or causality?](../../#c17-stop-7)

### Question and strategy

Name the fitted object and target before judging the words around them. Then separate the conditional-mean, individual, causal, design, and historical claims and audit HC1 only for the problem it addresses.

### Complete solution

The fitted object is the sample best-linear line for hourly wage in 1976 dollars and education in years among the 526 historical records. Its slope is about 0.5414 dollars per hour per year, and the approximate HC1 interval for a model-population best-linear slope is $[0.4213,0.6614]$ under independent-observation and large-sample conditions.

The first unsupported step is the word “proves”: an interval excluding zero does not make the estimate exact or causal. The fitted sample line is not necessarily the full conditional-mean function, because $\mathbb E[Y\mid X=x]$ can be nonlinear. A best-linear population slope is an average linear summary, not a claim that every worker has the same response. A causal education effect additionally requires random assignment or a defensible identification strategy with substantive assumptions; none is supplied.

HC1 addresses heteroskedasticity in the estimated slope variance. It does not remove dependence, selection, measurement error, omitted-variable bias, functional-form error, historical obsolescence, or lack of causal identification. Each concern requires separate evidence or a different design or method.

One defensible rewrite is:

> Among these 526 historical worker records, the fitted wage–education line has slope about 0.541 1976 dollars per hour for each additional recorded year of education. Under the stated independent-observation and large-sample model conditions, the HC1 approximate 95% interval for the population best-linear slope is $[0.421,0.661]$. HC1 permits heteroskedastic conditional variance but does not repair selection, dependence, measurement, functional-form, or external-validity problems. Because education was not randomly assigned and no identification strategy is supplied, the result is not by itself a causal effect or a common individual response.

For the unaided transfer,

$$
b_1=\frac{-15}{50}=-0.3,
\qquad
b_0=20-(-0.3)(4)=21.2.
$$

The fitted line is $\widehat y=21.2-0.3x$, so $\widehat y(6)=19.4$. The statistic and interval are

$$
Z=\frac{-0.3}{0.12}=-2.5
$$

and

$$
-0.3\pm1.96(0.12)=[-0.5352,-0.0648].
$$

The strongest unconditional statement is descriptive: in the supplied sample, the fitted outcome decreases by 0.3 outcome units per one-unit increase in $x$. Under the stated inference conditions, the statistic and interval can address a population best-linear slope. With no sampling, functional-form, or assignment information, they do not establish that the conditional mean is exactly linear or that changing $x$ would causally change $Y$.

### Verification and limitation

The exact flawed claim appears in both the independent and optional AI routes, so the AI comparison does not silently answer an easier question. The final transfer reverses the slope sign while preserving the object and interpretation audit.

### Nearby transfer

Before opening the check, suppose $\mathrm{Var}(X)=4$, $\mathrm{Cov}(X,Y)=-2$, $\mathbb E[X]=3$, and $\mathbb E[Y]=10$. Find the population best linear approximation and state whether these moments identify a causal effect.

<details>
<summary>Reveal the transfer check</summary>

$\beta_1=-2/4=-0.5$ and $\beta_0=10-(-0.5)(3)=11.5$, so the line is $11.5-0.5X$. These population moments identify a best linear approximation, not a causal effect.

</details>

[Return to the solution map](#solution-map)
