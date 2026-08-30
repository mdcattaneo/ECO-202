# ECO 202 Practice 5: Association, Causation, and Confounding — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 5: Association, Causation, and Confounding](../)  
**Class guide:** [Class 5: Association, Causation, and Confounding](../../)

[← Return to Practice 5](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt a problem and inspect its compact check before reading the corresponding solution. Compare the causal target, counterfactual, design, assumptions, calculation, and limitation—not only the final number or wording—then attempt the nearby transfer before revealing its check.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Practice 5 module. All calculations were independently reconstructed from the existing Class 2--5 teaching examples, documented wage1 and bwght output, and the Class 5 potential-outcome table. No protected exercise, legacy solution, or reserved exam question is reproduced. -->

## How to study these solutions

For each problem, identify the first point at which your reasoning differed from the solution. Close the file, reconstruct that step without looking, and then attempt the transfer. Reading a correct causal argument is not evidence that you can produce it independently.

## Solution map

| Solution | Main idea |
|---|---|
| [1. One fitted line, three kinds of claim](#solution-1) | Description, prediction, causation, and competing stories |
| [2. Treatment effects and selection in the complete table](#solution-2) | Potential outcomes, missing counterfactuals, and decomposition |
| [3. What the birth-weight comparison does and does not show](#solution-3) | Observational evidence, treatment definition, confounding, and design |
| [4. Audit a confident causal memo](#solution-4) | Claim-by-claim audit of causal overreach |
| [5. Change assignment, not the potential outcomes](#solution-5) | Random assignment, realized imbalance, and zero observed difference |
| [6. Cumulative checkpoint for In-Class Exam 1](#solution-6) | Essential calculations and interpretations from Classes 1–5 |

<a id="solution-1"></a>

## Solution 1. One fitted line, three kinds of claim

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [Class 4: A historical education–wage relationship](../../../04-scatterplots-correlation-and-descriptive-regression/#5-a-historical-educationwage-relationship), [Class 4: From regression output to a defensible claim](../../../04-scatterplots-correlation-and-descriptive-regression/#6-from-regression-output-to-a-defensible-claim), [Class 5: Description, prediction, or causation?](../../#c5-stop-1), and [Class 5: Why the same association can have different causes](../../#c5-stop-2)

### Question and strategy

The same fitted line can summarize observed records, contribute to a prediction rule, or be given a causal interpretation. The numerical line does not decide which claim is supported; the target and evidence do.

### Complete solution

The first statement is **descriptive** because it summarizes the direction of linear association among the recorded workers. The second is **predictive** because it makes a performance claim for comparable workers outside the data used to fit the line. The third is **causal** because it asks what would happen under an intervention that requires another year of schooling.

At 12 years of education, the fitted wage is

$$
\widehat{\mathrm{wage}}=-0.9049+0.5414(12)=5.5919.
$$

The defensible interpretation is that the line fitted to these 526 workers assigns a wage of approximately 5.59 in 1976 dollars per hour at 12 completed years of education. It is a fitted sample value, not the wage of every worker with 12 years of education.

The slope is an observed linear association. It does not show how the same worker's wage would differ under two schooling interventions. Three competing stories are:

1. additional schooling changes skills, credentials, or access to jobs and thereby changes wage;
2. prior ability or family resources affect both schooling choices and later wages, making those pre-treatment variables candidate confounders; and
3. expected wage opportunities affect schooling decisions, or selection into employment and into the recorded sample changes the observed mix of workers.

A variable is a confounder when it is a pre-treatment common cause that makes treatment groups incomparable for the causal question. Predicting wage, correlating with education, or changing a fitted coefficient is not by itself enough to establish that causal role.

The predictive claim requires evaluation on genuinely new or held-out workers drawn from the intended prediction setting, with a defined performance criterion and checks for population or time changes. The causal claim requires a sharply defined schooling intervention, target population and effect, a credible counterfactual comparison, and a design or assumptions that address confounding, selection, measurement, and treatment versions.

### Verification and limitations

The fitted-value arithmetic and units can be checked from the displayed line. The correlation, slope, and $r^2$ remain descriptive outputs from a historical observational extract. Neither a correct calculation nor successful out-of-sample prediction would by itself identify a causal effect.

### Transfer

Suppose the same fitted rule predicts wages accurately in a new historical worker sample. Which claim receives stronger support, and why does the causal claim remain unresolved?

<details>
<summary>Reveal the transfer check</summary>

The predictive claim receives stronger support because the rule has been evaluated beyond the fitting data. Accurate prediction can rely on stable associations caused by confounders or selection, so it does not reveal what the same worker's wage would have been under a different schooling intervention.

</details>

[Back to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Treatment effects and selection in the complete table

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Potential outcomes and treatment effects](../../#c5-stop-3) and [The missing counterfactual and selection](../../#c5-stop-4)

### Question and strategy

Because the fictional teaching table displays both potential outcomes, first calculate the causal effects without using the assignment column. Then use $D_i$ to select observed outcomes and separate the observed comparison into the treated effect and the untreated-potential-outcome selection term.

### Complete solution

The individual treatment effects are

| Unit | Calculation | $Y_i(1)-Y_i(0)$ |
|---|---:|---:|
| A | $7-4$ | 3 |
| B | $7-6$ | 1 |
| C | $4-2$ | 2 |
| D | $6-5$ | 1 |

Therefore,

$$
\mathrm{ATE}=\frac{3+1+2+1}{4}=\frac74=1.75.
$$

For treated unit A, the observed-outcome identity gives

$$
D_AY_A(1)+(1-D_A)Y_A(0)=1(7)+0(4)=7.
$$

For untreated unit C, it gives

$$
D_CY_C(1)+(1-D_C)Y_C(0)=0(4)+1(2)=2.
$$

Thus the observed outcomes are $(7,7,2,5)$. In an actual study, $Y_A(0)$ and $Y_B(0)$ would be missing for the treated units, while $Y_C(1)$ and $Y_D(1)$ would be missing for the untreated units.

The average treatment effect among the treated units A and B is

$$
\frac{(7-4)+(7-6)}{2}=\frac{3+1}{2}=2.
$$

The treated observed mean is 7, and the untreated observed mean is $(2+5)/2=3.5$. The observed difference is therefore

$$
7-3.5=3.5.
$$

The treated units have mean untreated potential outcome $(4+6)/2=5$, whereas the untreated units have mean untreated potential outcome $(2+5)/2=3.5$. The selection term is

$$
5-3.5=1.5.
$$

The decomposition checks:

$$
\underbrace{3.5}_{\text{observed difference}}
=\underbrace{2}_{\text{average effect for treated}}
+\underbrace{1.5}_{\text{selection term}}.
$$

The observed difference is not the ATE because the treated units both have a different average effect and would have had higher outcomes without treatment than the untreated units. In real observational data, the treated units' $Y(0)$ values are missing, so the selection term and treated effect cannot be separated without a design or identifying assumptions.

### Verification and limitations

The observed-outcome formula reproduces every value in the final column. The ATE is an average of all four individual effects and does not depend on who was treated; the observed group difference does. The complete table is a teaching device, not a claim that both potential outcomes can be observed in practice.

### Transfer

Calculate the average treatment effect among the untreated units and verify that the ATE is the equally weighted average of the treated and untreated average effects in this table.

<details>
<summary>Reveal the transfer check</summary>

For C and D, the average effect is $(2+1)/2=1.5$. Because two of the four units are treated and two are untreated, $\mathrm{ATE}=0.5(2)+0.5(1.5)=1.75$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. What the birth-weight comparison does and does not show

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Why the same association can have different causes](../../#c5-stop-2), [What random assignment changes](../../#c5-stop-5), and [Auditing a causal claim](../../#c5-stop-6)

### Question, data, and strategy

One observational unit is one birth record in a historical 1988 survey extract. The calculation compares recorded groups; the causal audit asks whether that comparison represents the missing outcomes under two interventions for comparable units.

### Complete solution

The positive-minus-zero birth-weight difference is

$$
111.1462-120.0612=-8.9150\ \text{ounces}.
$$

The corresponding family-income difference is

$$
20.9175-30.4885=-9.5710
$$

in the dataset's thousands-of-dollars units. The signs show that both recorded mean birth weight and recorded mean family income are lower in the positive-reported-cigarette group.

A defensible two-sentence description is:

> In this historical 1988 observational extract, mean recorded birth weight was 111.15 ounces among 212 records with positive reported cigarette consumption and 120.06 ounces among 1,176 records with zero reported consumption, a difference of approximately $-8.91$ ounces. Mean recorded family income also differed across the groups, so the comparison documents an association between systematically different groups rather than a causal effect.

With $D_i=1$ for positive reported cigarette consumption, $Y_i(1)$ would be the birth weight for unit $i$ under a precisely stated positive-consumption intervention, and $Y_i(0)$ would be birth weight for the same unit under a precisely stated zero-consumption intervention. A possible target is the average $Y_i(1)-Y_i(0)$ for the population represented by the intended study. The observed binary indicator is too broad for a fully precise intervention because “positive” combines different cigarette quantities, timing, duration, and versions.

For a record with $D_i=1$, $Y_i(0)$ is the missing counterfactual. Possible explanations for the association include an effect of cigarette exposure; pre-treatment family resources, maternal education, nutrition, health, or other behaviors affecting both reported consumption and birth weight; inaccurate or incomplete reporting of cigarettes; and selection determining which births or complete records appear in the comparison. These are causal stories to investigate, not facts established by the table.

The income difference shows that the observed groups differ on at least one recorded characteristic and makes simple comparability less credible. It does not show by itself that income causes both treatment and outcome, that it is the only common cause, that it is measured without error, or that a particular regression adjustment recovers the missing counterfactual.

An ethical experiment could randomly offer access to a defined smoking-cessation support program and compare outcomes by assigned offer. Random assignment would directly support a causal effect of offering that program under the implemented design, not automatically the effect of smoking itself. Noncompliance, attrition, measurement error, chance imbalance, treatment variation, and applicability to other populations could remain.

### Verification and limitations

The arithmetic reproduces the Class 5 script to the shown precision. The figure displays group distributions and income differences but contains no random assignment. A causal conclusion would also require a precisely defined intervention, a target population, and a justification for using observed comparison units to represent missing potential outcomes.

### Transfer

Suppose the two recorded groups had exactly the same mean family income. Would their birth-weight difference then identify a causal effect? Explain.

<details>
<summary>Reveal the transfer check</summary>

No. Equality in one recorded pre-treatment summary would not establish balance in other causes, correct measurement, absence of selection, a sharply defined treatment, or a valid counterfactual comparison. It would remove one visible difference, not supply an identification argument.

</details>

[Back to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Audit a confident causal memo

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [The missing counterfactual and selection](../../#c5-stop-4), [What random assignment changes](../../#c5-stop-5), and [Auditing a causal claim](../../#c5-stop-6)

### Question and audit strategy

The memo contains one correct descriptive contrast followed by several changes of target. Audit the arithmetic, treatment definition, counterfactual comparison, role of income, time ordering, ethics, experimental limitations, and execution separately.

### Complete solution

The magnitude 8.91 ounces is supported after rounding as the observed positive-minus-zero mean difference. Calling it an exact causal effect is unsupported: the study is observational, the groups are not shown to represent each other's counterfactual outcomes, and “any smoking” combines multiple treatment versions.

The income difference is numerically supported and may be consistent with pre-treatment group incomparability. It does not identify income as a common cause, establish that no other confounders exist, determine the correct adjustment model, or show that a regression coefficient would have a causal interpretation.

Smoking behavior precedes the measured birth weight, so the proposed exposure has the needed temporal ordering for an effect on birth weight. Time order is not sufficient because pre-existing variables can affect both smoking behavior and birth weight, expectations or health information can affect behavior, and reporting or selection can distort the comparison.

Assigning pregnant people to smoke would deliberately expose participants to harm and is not an acceptable proposed experiment. An ethical experiment could randomize a cessation-support offer. Even that design can face noncompliance, attrition, treatment variation, measurement error, chance imbalance in one assignment, and limited applicability beyond the study population.

Successful execution supports only that the specified instructions completed for that run. Verifying the group means requires inspection and reproduction of the intended data and calculations; validating a causal interpretation additionally requires evidence about treatment, assignment, counterfactual comparability, assumptions, and limitations.

A four-sentence revision is:

> The script reproduces the recorded group means and their differences; it does not reveal the missing counterfactual or verify a causal effect. A causal study would need a sharply defined intervention, a credible comparison design, explicit assumptions, ethical implementation, and an account of remaining limitations. Mean recorded family income was also lower in the positive-reported-cigarette group, demonstrating that the observed groups differ on at least one pre-treatment characteristic but not identifying a complete adjustment strategy. The strongest conclusion from these observational data is that mean recorded birth weight was approximately 8.91 ounces lower in the positive-reported-cigarette group than in the zero-reported-cigarette group in this historical extract.

An AI audit is useful only after its claims are checked against the supplied arithmetic, provenance, design, and causal target. Agreement with the memo or a fluent rewrite is not evidence.

### Verification and limitations

The audit does not establish that every listed alternative actually generated the association. Its role is to identify why the observed paired-variable pattern does not distinguish among plausible causal stories and what evidence a stronger claim would require.

### Transfer

A randomized cessation-support offer reduces reported smoking and raises mean birth weight in the assigned-offer group. What causal effect does random assignment directly support, and what additional step would be needed to interpret the result as the effect of smoking itself?

<details>
<summary>Reveal the transfer check</summary>

Random assignment directly supports the effect of being offered the program under the implemented design. Interpreting that contrast as the effect of smoking itself requires additional assumptions and evidence connecting assignment to actual smoking behavior and separating other pathways through which the support program could affect birth weight.

</details>

[Back to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Change assignment, not the potential outcomes

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Potential outcomes and treatment effects](../../#c5-stop-3), [The missing counterfactual and selection](../../#c5-stop-4), and [What random assignment changes](../../#c5-stop-5)

### Question and strategy

The potential outcomes and individual effects remain fixed. The changed assignment determines which potential outcome becomes observed and which units enter each group average.

### Complete solution

Under $D^\star=(1,0,1,0)$, the observed outcomes are

$$
(Y_A,Y_B,Y_C,Y_D)=(7,6,4,5).
$$

The treated mean for A and C is $(7+4)/2=5.5$, and the untreated mean for B and D is $(6+5)/2=5.5$. Their observed difference is zero.

The average treatment effect among treated units A and C is

$$
\frac{(7-4)+(4-2)}{2}=\frac{3+2}{2}=2.5.
$$

The treated units' mean untreated potential outcome is $(4+2)/2=3$, while the untreated units' mean untreated potential outcome is $(6+5)/2=5.5$. The realized selection term is

$$
3-5.5=-2.5.
$$

The decomposition again holds:

$$
\underbrace{0}_{\text{observed difference}}
=\underbrace{2.5}_{\text{average effect for treated}}
+\underbrace{(-2.5)}_{\text{realized selection term}}.
$$

The ATE remains $(3+1+2+1)/4=1.75$ because neither the potential outcomes nor the target group changed. Assignment changes what is observed, not the four unit-level causal effects.

Every individual effect is positive, but the treated units happened to have much lower untreated potential outcomes than the controls. Their positive treatment effects exactly offset that realized baseline difference, producing equal observed group means. Under random assignment, the selection term averages to zero across possible assignments because the chance mechanism does not use the potential outcomes to choose treatment status. One realized assignment can still be imbalanced and can yield a zero, negative, or positive observed difference.

### Verification and limitations

Selecting one observed outcome per row verifies $(7,6,4,5)$. The equality $0=2.5-2.5$ checks the decomposition. This four-unit example illustrates randomization logic but is too small to expect stable realized balance; replication reduces chance variability but does not make every assignment identical.

### Transfer

Using the same potential outcomes, suppose a chance mechanism instead treats B and C. Calculate the observed difference, treated average effect, and realized selection term.

<details>
<summary>Reveal the transfer check</summary>

The observed outcomes are $(4,7,4,5)$. The treated mean is $(7+4)/2=5.5$ and the control mean is $(4+5)/2=4.5$, so the observed difference is 1. The treated average effect is $(1+2)/2=1.5$. The untreated-potential-outcome selection term is $(6+2)/2-(4+5)/2=4-4.5=-0.5$, and $1=1.5-0.5$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Cumulative checkpoint for In-Class Exam 1

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connections:** [Class 1: A first reproducible analysis](../../../01-course-introduction-ai-and-data-workflows/#7-a-first-reproducible-analysis), [Class 2: Center, position, and spread](../../../02-descriptive-statistics-and-data-visualization/#3-center-position-and-spread), [Class 2: Robustness and outliers](../../../02-descriptive-statistics-and-data-visualization/#4-robustness-outliers-and-what-summaries-conceal), [Class 3: Normal probabilities and quantiles](../../../03-density-curves-normal-distributions-and-standardization/#5-normal-probabilities-and-quantiles), [Class 3: Does the model fit the question?](../../../03-density-curves-normal-distributions-and-standardization/#6-does-the-model-fit-the-question), [Class 4: Least-squares prediction](../../../04-scatterplots-correlation-and-descriptive-regression/#3-least-squares-prediction), [Class 4: Fitted values, residuals, and diagnostics](../../../04-scatterplots-correlation-and-descriptive-regression/#4-fitted-values-residuals-and-diagnostics), and [Class 5: Auditing a causal claim](../../#6-auditing-a-causal-claim)

### A. Class 1 — Workflow, verification, and scope

The reconstructed mean is

$$
\frac{3{,}101.35}{526}=5.896102\ldots\approx5.8961.
$$

It is measured in 1976 dollars per hour and describes the mean recorded wage among these 526 workers in the historical extract. Code running supports execution of particular instructions; the division checks arithmetic consistency by a second route; substantive justification still requires the correct input, variable meaning, units, source, target, and interpretation.

A reproducibility check is to confirm that the documented CSV and inspected script regenerate the reported output and to recompute one important quantity independently. A privacy or permission check is to inspect every proposed file and share only the authorized minimum, excluding personal, confidential, restricted, licensed, credential, or student information.

### B. Class 2 — Distribution, resistance, and outlier rule

The seven values sum to 84, so $\bar x=12$. The median is 10. Excluding the median, the lower half is $8,9,10$ and the upper half is $11,12,24$, giving

$$
Q_1=9,
\qquad
Q_3=12,
\qquad
\mathrm{IQR}=3.
$$

The upper fence is

$$
12+1.5(3)=16.5,
$$

so 24 is flagged. The flag records the value's position relative to the quartiles and $\mathrm{IQR}$; it does not inspect the source, diagnose error, or justify deletion.

### C. Class 3 — Normal calculation and model audit

Under $X\sim\mathsf N(120,20^2)$,

$$
z=\frac{88-120}{20}=-1.6
$$

and

$$
\mathbb P(X<88)=\Phi(-1.6)\approx0.0548.
$$

The empirical fraction 0.0598 is close to the fitted probability at this one cutoff. That agreement does not check the full distributional shape, other cutoffs, both tails, heaping, multiple modes, or extreme observations, so it does not prove that the entire distribution is Normal.

### D. Class 4 — Least squares and interpretation

The slope and intercept are

$$
b_1=\frac{s_{xy}}{s_x^2}=\frac{8.5}{10}=0.85,
\qquad
b_0=\bar y-b_1\bar x=7-0.85(14)=-4.9.
$$

At $x=16$,

$$
\widehat y=-4.9+0.85(16)=8.7,
$$

so the residual for observed wage 8 is $8-8.7=-0.7$ dollars per hour. Finally,

$$
r^2\approx0.9815^2\approx0.9633.
$$

Within this five-worker sample, one additional year of education is associated with 0.85 more dollars per hour in fitted wage. The $r^2$ value says that approximately 96.33 percent of sample wage variation is represented by the fitted linear values; it is not the fraction of wage caused by education or a guarantee of predictive performance.

### E. Class 5 — Counterfactual conclusion

A descriptive claim is: “In this historical observational extract, mean recorded birth weight is approximately 8.91 ounces lower in the positive-reported-cigarette group than in the zero-reported-cigarette group.” A distinct causal question is: “For a stated target population, how would average birth weight differ under a sharply defined positive-smoking intervention versus a sharply defined zero-smoking intervention?”

For a record observed with positive consumption, the missing counterfactual is birth weight under the zero-consumption intervention. Pre-treatment family resources or health behaviors could affect both smoking and birth weight, while reporting and selection could also distort the comparison. Answering the causal question requires a design such as ethical random assignment of a relevant intervention or explicit assumptions that justify an observational comparison, together with limitations.

### Verification and limitations

Every numerical value in the checkpoint reproduces a current Class 1–5 guide example. The short calculations test reconstruction, but complete exam reasoning also requires targets, units, assumptions, source scope, and limitations. A correct number attached to an unsupported causal or population claim is not a correct conclusion.

### Transfer

Close this file and reconstruct the module's full reasoning chain for the education–wage example: source and verification, the wage distribution, a possible standardized comparison, the fitted association, and the missing causal argument.

<details>
<summary>Reveal the transfer criteria</summary>

A complete reconstruction should keep the 1976 historical source and worker-level unit visible; distinguish reproducible calculation from substantive validity; describe wage shape and summaries before modeling; define the reference mean and standard deviation for any z-score; interpret the scatterplot, slope, residuals, and $r^2$ descriptively; and end by defining a schooling intervention, counterfactual wage, competing causal stories, design or assumptions, and limitations.

</details>

[Back to the solution map](#solution-map)

## Final study check

Close the solutions and reconstruct these statements in your own words:

1. A descriptive or predictive relationship becomes causal only through an argument about interventions and counterfactuals.
2. The observed treated-minus-untreated difference combines a treatment component and a selection component unless design or assumptions remove the latter.
3. Random assignment creates comparability on average over its assignment mechanism, not exact balance in every realized experiment.
4. A correct script and correct arithmetic verify calculations on an input; they do not supply the causal design.
