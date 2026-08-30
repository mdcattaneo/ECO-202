# ECO 202 Practice 2: Descriptive Statistics and Data Visualization — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 2: Descriptive Statistics and Data Visualization](../)  
**Class guide:** [Class 2: Descriptive Statistics and Data Visualization](../../)

[← Return to Practice 2](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt a problem and inspect its compact answer check before reading the corresponding solution. These solutions are designed to help you reconstruct the method, interpretation, and verification—not merely locate a final number.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Class 2 practice module. Scope was calibrated against the inherited descriptive-statistics coverage, but no protected wording or reserved exam question is reproduced. -->

## How to study a solution

For each problem, compare your work with the complete reasoning, identify the first point at which your approach differed, and then attempt the transfer question before revealing its check. A correct numerical answer is not sufficient unless you can also state the target, units, interpretation, and important limitation.

## Solution map

| Solution | Main idea |
|---|---|
| [1. Begin with the data structure](#solution-1) | Units, variables, displays, representation, and causal limits |
| [2. Calculate a complete numerical description](#solution-2) | Center, position, spread, fences, and resistance |
| [3. Describe the historical wage data](#solution-3) | Empirical description, denominator, and scope |
| [4. Audit a polished but unreliable report](#solution-4) | Arithmetic, units, outliers, generalization, and causation |
| [5. Transfer without assistance](#solution-5) | Resistant and nonresistant comparisons |
| [6. Why the mean and variance form a pair](#solution-6) | Least squares and the variance identity |

<a id="solution-1"></a>

## Solution 1. Begin with the data structure

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [From an economic question to a data table](../../#1-from-an-economic-question-to-a-data-table) and [From a variable to its distribution](../../#2-from-a-variable-to-its-distribution)

### Question, data, and strategy

The task is to identify what one row represents before classifying variables or choosing a display. That sequence matters because the same column name can describe a different object when the observational unit changes.

### Complete solution

1. The observational unit is one responding renter household. The word “responding” matters: the rows are not automatically all renter households in the city.

2. `monthly_rent`, `bedrooms`, and `survey_weight` are quantitative. `neighborhood`, `rent_burdened`, and `response_mode` are categorical. The values 0 and 1 label membership in the two `rent_burdened` categories; arithmetic on the codes does not turn the category itself into a measured numerical amount. The survey weight is quantitative, although it has an analytic role rather than recording an ordinary household outcome.

3. A bar chart is appropriate for counts or proportions by `response_mode`. A histogram shows the shape of `monthly_rent`; its bin width, origin, units, and missing values should be checked. Side-by-side boxplots or aligned histograms compare `monthly_rent` across the two `rent_burdened` groups; the displays should use common axes and report the group sizes.

4. Relevant information includes how the responding households were selected and covered, which households did not respond, whether focal variables are missing, when the survey was conducted, and how the survey weights were constructed and should be used. Any three well-explained items address the question. A table of respondents does not automatically represent the target population.

5. `rent_burdened` is partly defined using rent relative to income, so a rent difference between the recorded groups may reflect that construction and other household characteristics. The comparison describes the observed groups; it does not represent an intervention or establish a causal effect of applying a label.

### Verification and limitations

Check every proposed graph against the variable type and question: one categorical distribution calls for category comparisons, one quantitative distribution calls for a display of shape, and a quantitative outcome across groups calls for aligned group displays. None of these choices repairs selection, nonresponse, missingness, or an unsupported causal interpretation.

### Transfer

Suppose the same file instead has one row per rental listing, and one household can appear in several rows. Can the file directly answer what fraction of renter households are rent-burdened? Explain.

<details>
<summary>Reveal the transfer check</summary>

Not without additional information and a defensible household-level construction. The observational unit is now a listing, households may receive unequal representation, and the denominator of listings is not the denominator of renter households.

</details>

[Back to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Calculate a complete numerical description

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Center, position, and spread](../../#3-center-position-and-spread) and [Robustness, outliers, and what summaries conceal](../../#4-robustness-outliers-and-what-summaries-conceal)

### Question, data, and strategy

The data are already ordered. Compute the location summaries first, separate the lower and upper halves for the quartiles, and then use deviations from the mean for the sample variance.

### Complete solution

The six values sum to 54, so

$$
\bar x=\frac{54}{6}=9.
$$

The median is the mean of the third and fourth ordered values:

$$
M=\frac{7+8}{2}=7.5.
$$

The lower half is $4,6,7$ and the upper half is $8,9,20$. Under the median-of-halves convention,

$$
Q_1=6,
\qquad
Q_3=9,
\qquad
\mathrm{IQR}=9-6=3,
$$

and the range is $20-4=16$. The mean exceeds the median, as predicted from the long right tail created by 20.

The squared deviations from the mean are

$$
25, 9, 4, 1, 0, 121,
$$

which sum to 160. Therefore,

$$
s^2=\frac{160}{6-1}=32,
\qquad
s=\sqrt{32}\approx5.66.
$$

The mean, median, quartiles, $\mathrm{IQR}$, range, and standard deviation are measured in dollars per hour. The variance is measured in $(\text{dollars per hour})^2$.

The fences are

$$
Q_1-1.5\mathrm{IQR}=6-4.5=1.5
$$

and

$$
Q_3+1.5\mathrm{IQR}=9+4.5=13.5.
$$

The wage 20 lies above the upper fence and is flagged. The rule establishes its position relative to the quartiles and $\mathrm{IQR}$ under this convention. It does not establish that 20 is erroneous, impossible, generated by a different process, or suitable for deletion.

After replacing 20 by 50, the sum becomes 84 and the new mean is 14. The middle values and half-sample medians do not change, so $M=7.5$, $Q_1=6$, $Q_3=9$, and $\mathrm{IQR}=3$. The new squared deviations from 14 sum to 1570, giving

$$
s^2_{\mathrm{new}}=\frac{1570}{5}=314,
\qquad
s_{\mathrm{new}}=\sqrt{314}\approx17.72.
$$

The median and $\mathrm{IQR}$ are unchanged, while the mean and standard deviation increase sharply. This illustrates resistance, but it does not mean the resistant summaries preserve the entire distribution.

Reporting only the mean and standard deviation loses, among other things, the ordered values, median and quartiles, the gap between 9 and 20, and the fact that one observation creates a long right tail. Any two such features answer the final part.

### Verification and limitations

The deviations from 9 sum to zero, and the squared deviations sum to 160; these are useful arithmetic checks. The summaries describe only these six workers. The fence is a diagnostic based on order and spread, not a data-quality investigation.

### Transfer

Replace 20 by 14 instead. Predict which summaries become less extreme, and compute the new mean, median, $\mathrm{IQR}$, and upper fence.

<details>
<summary>Reveal the transfer check</summary>

The new data are $4,6,7,8,9,14$. The mean is $48/6=8$, the median is 7.5, $Q_1=6$, $Q_3=9$, and $\mathrm{IQR}=3$. The upper fence remains 13.5, so 14 is still flagged, although it is much closer to the main body of the data. The mean, range, and standard deviation are smaller than in the original data; the median and $\mathrm{IQR}$ are unchanged.

</details>

[Back to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Describe the historical wage data

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [A reproducible wage-distribution walkthrough](../../#5-a-reproducible-wage-distribution-walkthrough)

### Question, data, and strategy

The observational unit is one worker recorded in the 1976 extract. The focal variable is hourly wage, measured in 1976 dollars per hour. The task is to combine numerical and graphical evidence while keeping the conclusion within the historical sample and separating description from causation.

### Complete solution

The percentage above the upper fence is

$$
100\times\frac{36}{526}\approx6.84.
$$

The numerator is the 36 recorded wages above 12.205 dollars per hour; the denominator is all 526 workers with recorded hourly wages in this extract. The denominator is not all workers in 1976 and certainly not current workers.

Three pieces of evidence for right skew are that the mean 5.90 exceeds the median 4.65, the histogram and boxplot display a longer upper tail, and the maximum 24.98 lies far above $Q_3=6.88$ with 36 observations beyond the upper fence.

A defensible three-sentence report is:

> Among the 526 workers in this historical 1976 Current Population Survey extract, recorded hourly wage had a median of 4.65 dollars and a mean of 5.90 dollars per hour, with no missing wage values. The histogram and boxplot show a right-skewed distribution, consistent with the mean exceeding the median and with 36 recorded wages above the 12.205-dollar upper $1.5\mathrm{IQR}$ fence. These flags warrant investigation rather than automatic deletion, and the extract does not describe current wages or by itself identify causes of wage differences.

Neither the table nor the graph provides a research design that assigns education, occupation, sex, race, or another exposure. Describing a distribution or group association does not identify a causal contrast.

### Verification and limitations

The arithmetic can be checked from the supplied table, and the empirical quantities can be reproduced with the [Class 2 R script](../../class-02-wage-distributions.R). Running the script reports 526 workers, zero missing wages, mean 5.896103, median 4.65, $Q_1=3.33$, $Q_3=6.88$, $\mathrm{IQR}=3.55$, maximum 24.98, sample standard deviation 3.693086, upper fence 12.205, and 36 flagged wages. Reproducibility verifies the calculation on this file; it does not establish population representativeness or causation.

### Transfer

In a hypothetical revision, suppose five wages were missing and the same 36 observed wages exceeded the fence. What denominator would describe the percentage among workers with recorded wages, and why must the missingness still be reported?

<details>
<summary>Reveal the transfer check</summary>

The observed-wage denominator would be $526-5=521$, so the recorded percentage would be $100(36/521)\approx6.91$ percent. The five missing values must be reported because their wages and their relation to the observed distribution are unknown; changing the denominator does not solve possible missing-data selection.

</details>

[Back to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Audit a polished but unreliable report

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [From output to a defensible description](../../#6-from-output-to-a-defensible-description)

### Question, data, and strategy

Audit arithmetic independently from interpretation. Then check the observational unit, units of measurement, scope in time, meaning of an outlier flag, and whether any design supports a causal statement.

### Complete solution

The endpoints $4.8-5.6=-0.8$ and $4.8+5.6=10.4$ are arithmetically correct. The interpretation that nearly all deliveries must lie in this interval is unsupported. Standard deviation measures a scale of variation around the mean; without additional assumptions it does not assign a fixed percentage to that interval. The negative lower endpoint also warns that a symmetric rule centered at the mean extends outside the feasible support for delivery time.

The standard deviation is 5.6 days. Variance would have squared-day units; calling a standard deviation “5.6 squared days” confuses the units of the two measures.

The observational unit is one order, not necessarily one unique customer. “Typical customer” therefore mismatches the unit and leaves “typical” imprecise. The mean and median answer different descriptive questions and differ materially here, so a defensible report should name the unit and chosen summary.

The 18 upper-fence observations are not thereby data-entry errors. The fence uses only quartiles and the $\mathrm{IQR}$; diagnosis would require source records, timing, coding, and substantive context. Deleting every flagged value would alter the distribution and needs a defensible data-quality or analysis rule.

The data cover one promotional week. Without information about the selection of that week, the order mix, and other periods, they do not establish the retailer's normal delivery performance. There is also no comparison group or assignment mechanism that identifies a causal effect of the promotion.

A four-sentence rewrite is:

> For the 240 orders placed during this promotional week, mean delivery time was 4.8 days and median delivery time was 3.2 days. The sample standard deviation was 5.6 days, but that number alone does not determine how many deliveries fell within one standard deviation of the mean. The 18 orders above the upper $1.5\mathrm{IQR}$ fence should be investigated, but the rule alone does not show that they are data-entry errors or justify deleting them. This one-week description neither establishes the retailer's normal delivery performance nor identifies a causal effect of the promotion.

### Verification and limitations

The $\mathrm{IQR}$ is $4.1-2.4=1.7$ days, and the upper fence is $4.1+1.5(1.7)=6.65$ days, matching the report. The arithmetic checks do not validate the report's distributional, data-quality, population, or causal conclusions. An AI audit is useful only after it is checked against the same supplied numbers and missing design information.

### Transfer

Suppose the retailer instead supplies the same summaries for all orders placed during four ordinary weeks. Which criticism becomes weaker, and which major criticisms remain?

<details>
<summary>Reveal the transfer check</summary>

The criticism that the data cover only one promotional week becomes weaker, although four weeks still may not represent normal performance across seasons or order mixes. The observational unit remains an order rather than necessarily a customer, standard deviation still has units of days, the one-standard-deviation interval still does not contain a guaranteed percentage, fence flags still do not prove errors, and descriptive data still do not identify a causal effect.

</details>

[Back to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Transfer without assistance

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Robustness, outliers, and what summaries conceal](../../#4-robustness-outliers-and-what-summaries-conceal)

### Question, data, and strategy

The first six waiting times are identical across clinics, so begin with the shared order positions. Then isolate how changing only the largest value affects resistant summaries, the mean, squared deviations, and distance beyond the common fence.

### Complete solution

For Clinic A, the sum is 57 and

$$
\bar x_A=\frac{57}{7}\approx8.14.
$$

For Clinic B, the sum is 87 and

$$
\bar x_B=\frac{87}{7}\approx12.43.
$$

Both distributions have median 7. Excluding the median, each lower half is $4,5,6$, so $Q_1=5$, and each upper half has median 9, so $Q_3=9$. Thus both have $\mathrm{IQR}=4$.

Clinic B has the larger standard deviation. Its largest value is 30 minutes farther to the right, which raises its mean and produces much larger squared deviations. An exact verification gives

$$
s_A^2=\frac{916}{42}\approx21.81,
\qquad
s_A\approx4.67,
$$

and

$$
s_B^2=\frac{10456}{42}\approx248.95,
\qquad
s_B\approx15.78.
$$

For both clinics, the fences are

$$
5-1.5(4)=-1
$$

and

$$
9+1.5(4)=15.
$$

Both 18 and 48 exceed 15 and are flagged. The flag is binary, but distance beyond the fence is not: 18 is 3 minutes above it, whereas 48 is 33 minutes above it. A graph or the original values therefore conveys information that a flag alone loses.

A valid comparison is:

> Both clinics have median 7 minutes and $\mathrm{IQR}=4$ minutes, but Clinic B has a larger mean and standard deviation because its longest wait is much greater. Both maxima receive an upper-fence flag, while the original values and a graph reveal that Clinic B has the more extreme right tail.

### Verification and limitations

The common median, quartiles, and fences can be checked directly from the shared order positions. The exact variance calculation verifies the comparison but is not required to justify its direction. These seven recorded waits do not by themselves explain the difference or establish a general comparison between the clinics' patient populations.

### Transfer

Replace Clinic A's largest value by 15. Predict which summaries change, recompute the quartiles and fence, and determine whether 15 is flagged.

<details>
<summary>Reveal the transfer check</summary>

The revised data are $4,5,6,7,8,9,15$. The mean falls to $54/7\approx7.71$, while the median remains 7, $Q_1=5$, $Q_3=9$, and $\mathrm{IQR}=4$. The upper fence remains 15. Because the rule flags observations above the fence, the value 15 is on the fence and is not flagged. The standard deviation also decreases.

</details>

[Back to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Why the mean and variance form a pair

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connection:** [Center, position, and spread](../../#3-center-position-and-spread) and [Robustness, outliers, and what summaries conceal](../../#4-robustness-outliers-and-what-summaries-conceal)

### Question, data, and strategy

Insert and subtract $\bar x$ inside $x_i-a$, expand the square, and use the fact that centered deviations sum to zero. The same zero-sum fact yields the computational variance identity.

### Complete solution

Write

$$
x_i-a=(x_i-\bar x)+(\bar x-a).
$$

Squaring and summing gives

$$
\sum_{i=1}^n(x_i-a)^2
=\sum_{i=1}^n(x_i-\bar x)^2
+2(\bar x-a)\sum_{i=1}^n(x_i-\bar x)
+n(\bar x-a)^2.
$$

Because $\sum_{i=1}^n(x_i-\bar x)=0$, the cross term vanishes, and $(\bar x-a)^2=(a-\bar x)^2$. Therefore,

$$
\sum_{i=1}^n(x_i-a)^2=\sum_{i=1}^n(x_i-\bar x)^2+n(a-\bar x)^2.
$$

The first term on the right does not depend on $a$, and the second is nonnegative with equality only when $a=\bar x$. Hence the sample mean uniquely minimizes the sum of squared deviations over all constant centers.

For the variance identity, expand directly:

$$
\begin{aligned}
\sum_{i=1}^n(x_i-\bar x)^2
&=\sum_{i=1}^n x_i^2-2\bar x\sum_{i=1}^n x_i+n\bar x^2 \\
&=\sum_{i=1}^n x_i^2-2n\bar x^2+n\bar x^2 \\
&=\sum_{i=1}^n x_i^2-n\bar x^2.
\end{aligned}
$$

Dividing by $n-1$ gives

$$
s^2=\frac{1}{n-1}\sum_{i=1}^n x_i^2-\frac{n}{n-1}\bar x^2.
$$

For $4,6,7,8,9,20$, $n=6$, $\bar x=9$, and

$$
\sum_{i=1}^6x_i^2=16+36+49+64+81+400=646.
$$

Therefore,

$$
s^2=\frac{646}{5}-\frac{6}{5}(81)=\frac{160}{5}=32.
$$

For the least-squares identity, taking $a=7.5$ gives

$$
\sum_{i=1}^6(x_i-7.5)^2=160+6(7.5-9)^2=173.5,
$$

which exceeds the minimum 160 attained at $a=9$. The identities explain an optimization and offer an algebraic computation. They do not bound the influence of a single value: a large observation enters both $\bar x$ and the sum of squares, so the mean and standard deviation remain nonresistant.

### Verification and limitations

The key verification is $\sum_{i=1}^n(x_i-\bar x)=0$, which removes the cross term. Substituting the six wages into both formulas yields the same sample variance, 32. Algebraic equivalence does not make the shortcut numerically or conceptually superior in every setting, and neither identity makes the summaries resistant.

### Transfer

For the six wages in Problem 2, use the least-squares identity—without recomputing six deviations—to find $\sum_{i=1}^6(x_i-10)^2$.

<details>
<summary>Reveal the transfer check</summary>

The centered sum of squares at $\bar x=9$ is 160. With $a=10$, the identity gives

$$
\sum_{i=1}^6(x_i-10)^2=160+6(10-9)^2=166.
$$

</details>

[Back to the solution map](#solution-map)

## Final study check

Close the solutions and reconstruct one numerical problem and one interpretation problem on a blank page. Your goal is to reproduce the reasoning—including units, denominator, scope, and limitation—without using the wording above.
