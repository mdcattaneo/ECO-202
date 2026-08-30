# ECO 202 Practice 18: Multiple Regression, Causal Interpretation, and Project Workshop — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 18: Multiple Regression, Causal Interpretation, and Project Workshop](../)  
**Class guide:** [Class 18](../../)

[← Return to Practice 18](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Read a solution only after a genuine attempt and its compact check. Then close this file, reconstruct the reasoning, and attempt the nearby transfer without assistance.

<!-- Source lineage: Complete solutions for the newly authored Fall 2026 Practice 18 package. Every calculation and interpretation was independently reconstructed from the public problem inputs, finalized Class 18 guide, and verified class script and data. No protected solution or reserved assessment answer is reproduced. -->

## Solution map

| Solution | Main idea |
|---|---|
| [1. Interpret an adjusted coefficient](#solution-1) | Conditional comparison, support, and causal boundary |
| [2. Which variables belong?](#solution-2) | Timing, design purpose, missingness, and selection |
| [3. Two specification comparisons](#solution-3) | Observational adjustment versus randomized assignment |
| [4. Audit the same claim twice](#solution-4) | Independent claim audit and verified external criticism |
| [5. Cumulative checkpoint for In-Class Exam 4](#solution-5) | Tests, intervals, proportions, conditional means, and regression |
| [6. Build a one-page analysis map](#solution-6) | Question-to-evidence alignment and project readiness |

<a id="solution-1"></a>

## Solution 1. Interpret an adjusted coefficient

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [From one predictor to several](../../#c18-stop-1) and [holding fixed](../../#c18-stop-2)

### Question and strategy

Translate the coefficient into outcome units per predictor unit, name the included variables held fixed, limit the comparison to supported observations, and keep a fitted conditional association separate from an intervention.

### Complete solution

The outcome is monthly household electricity use in kilowatt-hours. The focal predictor is outside temperature in degrees Fahrenheit. Household size and dwelling area are the included predictors held fixed. Because dwelling area is measured in hundreds of square feet but is not the focal variable, the temperature coefficient's units are kilowatt-hours per degree Fahrenheit.

A complete fitted comparison is: among sample observations with the same recorded household size and dwelling area and within the data's supported range, a one-degree-Fahrenheit higher outside temperature is associated with 6.2 fewer fitted kilowatt-hours of monthly electricity use.

“Holding fixed” describes which observations the regression compares through its fitted specification. The researcher did not physically intervene on temperature or force households to share every other feature. Season, building quality, appliance efficiency, energy prices, behavior, and other unrecorded variables can still differ.

A support problem arises if, for example, very high temperatures occur only for large dwellings in the sample. The model may then have little or no direct information about a high-temperature comparison among small dwellings, even though it can print a fitted coefficient.

The coefficient alone cannot justify “Increasing a household's outside temperature by one degree causes its monthly electricity use to fall by 6.2 kilowatt-hours.” A causal claim requires a defensible assignment, natural-experiment, or other identification argument that makes the relevant counterfactual comparison credible, along with measurement, support, and implementation checks.

### Verification and limitation

The sign and units can be checked by increasing only the model's temperature input by one unit: the fitted value changes by $-6.2$ kilowatt-hours. That algebra checks the fitted model, not its causal validity or behavior outside the observed support.

### Nearby transfer

Before opening the check, a fitted apartment-rent equation has a floor-area coefficient of 1.8 when rent is measured in dollars, floor area in square feet, and neighborhood and number of bedrooms are included. Give a complete conditional interpretation and one unsupported causal claim.

<details>
<summary>Reveal the transfer check</summary>

Holding included neighborhood and bedroom count fixed over supported sample comparisons, one additional square foot is associated with 1.80 dollars higher fitted monthly rent. The coefficient alone does not establish that physically enlarging an apartment by one square foot would cause its monthly rent to rise by 1.80 dollars.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Which variables belong?

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Control-variable audit](../../#c18-stop-2)

### Question and strategy

Classify every variable by when it was measured, whether assignment can affect it, why it would enter the model, and whether its availability changes the analyzed sample. Preserve the intention-to-treat target: the effect of assignment to the offer.

### Complete solution

| Candidate | Classification | Reason |
|---|---|---|
| Earnings one year before assignment | Plausible pre-treatment precision variable | It precedes assignment and may predict later earnings. |
| Age at enrollment | Plausible pre-treatment precision variable | It is fixed before assignment and may predict later earnings. |
| Months of training completed | Post-treatment variable | Assignment can affect training received, so conditioning can remove part of the assignment effect or redefine the comparison. |
| Employment during training | Post-treatment variable with selection risk | Assignment can affect early employment, and conditioning on it compares selected post-assignment groups. |
| Variable chosen only to move the reported value ($p$) from 0.06 to 0.04 | Mechanically selected | Crossing a reporting threshold is not a prespecified design or substantive reason for adjustment. |
| Nearly missing pre-assignment earnings | Pre-treatment in timing, but requiring serious missingness, support, and selection audits | Using it could change the analyzed population differently by assigned group. |

Prior earnings and age are the two most natural candidates for prespecified precision adjustment because both precede assignment and plausibly predict the outcome. Their inclusion can sometimes reduce residual variation or address chance baseline imbalance. Random assignment—not these controls—supports the internal intention-to-treat comparison under the study's implementation assumptions.

Months trained is part of what assignment can change. Holding it fixed can block a pathway from assignment to earnings and shift attention from assignment to a different received-treatment question. Early employment can also be affected by assignment; conditioning on it can select participants on a post-assignment outcome and create incomparable groups.

Choosing a specification because its p-value crosses 0.05 makes the reported procedure depend on the observed outcome. It obscures the search process and does not establish identification, precision, or a stable estimand.

Before using the nearly missing baseline measure, check the missing count and percentage by assigned group, why values are missing, whether complete cases remain comparable, whether overlap is adequate, how the analytic sample and target change, and whether a prespecified missing-data strategy is defensible. Its pre-treatment timestamp does not erase selection caused by missingness.

### Verification and limitation

The decisive check is temporal: could assignment have affected the variable? A “no” makes precision adjustment possible, not automatically necessary or harmless. A “yes” warns that the intended intention-to-treat target can change.

### Nearby transfer

Before opening the check, a randomized tutoring offer predicts an end-of-term score. Classify baseline score, sessions attended after assignment, and an indicator chosen only because it gives the largest in-sample $R^2$ after many candidate indicators were tried.

<details>
<summary>Reveal the transfer check</summary>

Baseline score is a plausible prespecified pre-treatment precision variable. Sessions attended is post-assignment and can change the estimand. The indicator chosen after searching many candidates is mechanically selected unless a separate substantive or design reason justifies it. Random assignment, not any of these inclusions, supports the assignment-effect argument.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Two specification comparisons

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Two empirical specification comparisons](../../#c18-stop-3)

### Question, data, and strategy

Calculate adjusted minus simple in each setting, interpret each coefficient in its actual units and design, and explain why changing the conditioning set is not itself evidence about causality.

### Complete solution

For education,

$$
0.5990-0.5414=0.0576
$$

dollars per hour per education year. For randomized training assignment,

$$
1.7726-1.7943=-0.0217
$$

thousand 1982 dollars.

In the observational wage sample, holding recorded years of experience and tenure fixed, one additional education year is associated with 0.5990 dollars higher fitted hourly wage, measured in 1976 dollars, over supported comparisons.

The $0.0576$ change is not automatically omitted-variable bias for at least two reasons. First, the simple and adjusted regressions define different conditional comparisons, so their coefficients need not estimate the same descriptive target. Second, calling one difference “bias” requires a justified causal target and assumptions showing which estimator targets it. The observational data can still contain unmeasured confounding, selection, measurement error, functional-form problems, or limited overlap.

For the job-training study, the simple coefficient says that mean 1978 real earnings for participants assigned to job training exceed mean earnings for participants assigned to control by $1.7943$ thousand 1982 dollars. With a binary assignment indicator $D$ and an intercept, the fitted value for $D=0$ is $b_0$ and the fitted value for $D=1$ is $b_0+b_1$. Least squares makes those two fitted values equal the two assigned-group means, so

$$
b_1=\bar Y_1-\bar Y_0.
$$

Random assignment supplies the internal causal comparison for assignment under the relevant implementation assumptions. The small $-0.0217$ adjustment difference is neither the source nor a test of that design. Adding 1974 and 1975 earnings can improve precision or absorb chance imbalance because they precede assignment. Months of training received occurs after assignment and is part of the pathway assignment can affect; adding it changes the question away from the intention-to-treat contrast and can introduce selection.

### Verification and limitation

Running the [Class 18 script](../../class-18-regression-and-project-workshop.R) reproduces full-precision coefficients $0.5413593$, $0.5989651$, $1.794343$, and $1.772604$. Rounding to four decimals gives the table values. The script verifies computation but does not expand the observational wage result's causal or external scope.

### Nearby transfer

Before opening the check, suppose the same randomized assignment coefficient becomes $1.7000$ after prespecified baseline age is added. Calculate adjusted minus simple and explain what the change does and does not show.

<details>
<summary>Reveal the transfer check</summary>

$1.7000-1.7943=-0.0943$ thousand dollars. The adjusted model makes a conditional comparison that may absorb chance baseline variation. The change does not create randomization, measure bias by itself, or show that age was a confounder; assignment already came from the randomized design.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Audit the same claim twice

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [Reproducibility and responsible AI use](../../#c18-stop-6)

### Question and strategy

Identify the first claim that exceeds the evidence, audit each required link independently, conduct the second individual checklist pass, and rewrite only within the observed specification. Any external audit comes afterward as an optional comparison.

### Complete solution

The phrases **causes**, **exactly**, **for every**, **unbiased**, **because experience and tenure were controlled**, **larger ... proves**, and **omitted-variable bias was downward** all exceed the supplied evidence. The first unsupported step is the opening transition from an observational fitted association to causality.

The second individual pass checks:

- **Target:** Is the coefficient a descriptive sample fit, a population best linear predictor, or a causal return to schooling?
- **Design:** How were education levels determined, and what makes the missing counterfactual wage credible?
- **Units:** Wage is in 1976 dollars per hour and education is in years; $0.5990$ is an estimated slope, not an exact individual change.
- **Support:** Are experience, tenure, and education combinations sufficiently overlapping, and is a linear comparison meaningful throughout the claimed range?
- **Uncertainty:** What standard error, reference assumptions, and interval accompany the estimate? None are supplied in the problem.
- **External validity:** Which historical workers and labor market can the sample represent, if any?

An accurate replacement is: “In these historical observational data, holding recorded years of experience and tenure fixed, one additional year of education is associated with approximately 0.5990 dollars higher fitted hourly wage, measured in 1976 dollars, over supported sample comparisons.”

In the individual classification record, mark a criticism or revision **accept** when it identifies one of the unsupported causal, exactness, bias, unit, support, uncertainty, or scope claims and ties that criticism to the supplied analysis. Mark it **reject** if it depends on random assignment, a standard error, a population, a variable definition, or another fact not supplied. Mark it **investigate** if it raises a relevant but unresolved empirical issue, such as overlap or measurement, and name the data or documentation needed to check it.

The two individual passes are complete without another person or system. If the optional external comparison is used, one valid comparison record might say that it found the limited-support issue, missed the historical population scope, and left the final estimand and wording decision to the analyst. A different record can be correct if it accurately describes the response actually received. The external response can add a missed category or clearer wording, but it cannot decide the estimand, determine acceptable evidence, or certify a claim. Rewriting can accurately narrow the report; it cannot change how education was generated, recover unobserved counterfactual wages, or convert the observational design into a causal one.

### Verification and limitation

Compare the replacement sentence word by word with the regression inputs: it contains only the outcome, units, focal predictor, included controls, historical sample, fitted association, and support boundary supplied. Verification of the remaining design questions would require information not in the quoted claim.

### Nearby transfer

Before opening the check, audit: “Because adding baseline earnings barely changed the randomized training coefficient, the regression adjustment proves there was no confounding and the estimate applies to all unemployed workers.”

<details>
<summary>Reveal the transfer check</summary>

Random assignment, not coefficient stability, supports the internal assignment-effect comparison. “Proves there was no confounding” overstates what a small adjustment change shows, and “all unemployed workers” needs separate sampling and external-validity evidence. A defensible rewrite describes the assignment contrast for study participants under the documented randomized design and states that broader scope is unresolved.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Cumulative checkpoint for In-Class Exam 4

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connections:** [Null references and p-values](../../../14-hypothesis-tests-p-values-significance-errors-and-power/#c14-stop-2), [errors](../../../14-hypothesis-tests-p-values-significance-errors-and-power/#c14-stop-4), [power](../../../14-hypothesis-tests-p-values-significance-errors-and-power/#c14-stop-5), [interval–test compatibility](../../../15-confidence-intervals-and-hypothesis-tests/#c15-stop-6), [inference for proportions](../../../16-inference-for-means-and-proportions/#c16-stop-6), [conditional expectations](../../../17-conditional-distributions-expectations-and-simple-regression/#c17-stop-2), [simple regression](../../../17-conditional-distributions-expectations-and-simple-regression/#c17-stop-5), and [adjusted coefficients](../../#c18-stop-2)

### Question, model, and strategy

For each part, state the population target and reference approximation before calculating. Then attach units and distinguish the arithmetic conclusion from sampling, assignment, measurement, and causal scope.

### Complete solution

#### A. Tests, p-values, and intervals

The standardized statistic is

$$
z_{\mathrm{obs}}=\frac{53-50}{1.5}=2.00.
$$

Using the supplied standard Normal probability,

$$
p=2[1-\Phi(2.00)]=2(1-0.97725)=0.0455.
$$

The approximate 95% confidence interval is

$$
53\pm1.96(1.5)=53\pm2.94=[50.06,55.94].
$$

At the 5% level, reject $H_0:\mu=50$ because $0.0455<0.05$. The matching two-sided 95% interval excludes 50, so it gives the same decision under the compatible Normal-reference approximation.

The p-value is the probability, assuming $H_0$ and the reference model, of observing a standardized statistic at least as far from zero as 2.00 in either direction. It is not the probability that the null is true. A Type I error rejects a true null; a Type II error fails to reject a false null. With a fixed underlying effect and comparable design, a larger sample typically reduces the standard error and increases power, though it does not repair bias or design defects.

#### B. Comparing two proportions

The estimates are

$$
\widehat p_A=\frac{45}{100}=0.45,
\qquad
\widehat p_B=\frac{30}{100}=0.30,
$$

so the estimated difference is $0.45-0.30=0.15$, or 15 percentage points. The unpooled estimated standard error is

$$
\begin{aligned}
\widehat{\mathrm{SE}}(\widehat p_A-\widehat p_B)
&=\sqrt{\frac{0.45(0.55)}{100}+\frac{0.30(0.70)}{100}}\\
&=\sqrt{0.004575}\\
&\approx0.06764.
\end{aligned}
$$

The approximate 95% interval is

$$
0.15\pm1.96(0.06764)\approx[0.0174,0.2826].
$$

Using the requested unpooled standard error,

$$
z_{\mathrm{obs}}=\frac{0.15}{0.06764}\approx2.218
$$

and

$$
p\approx2(1-0.9867)=0.0266.
$$

The arithmetic assumes independent groups and an appropriate large-sample reference; the success and failure counts are 45, 55, 30, and 70. Population generalization additionally requires a defined population and defensible sampling or selection process. Measurement must define the binary outcome consistently. A causal interpretation requires randomized assignment or another credible identification design; the two-group formula alone supplies neither causality nor external validity.

#### C. Conditional expectation and simple regression

The law of iterated expectations gives

$$
\mathbb E[Y]
=0.60(4)+0.40(9)
=6.
$$

For the binary predictor, the intercept is the conditional mean at $X=0$ and the slope is the difference between conditional means:

$$
\beta_0=4,
\qquad
\beta_1=9-4=5.
$$

Thus

$$
\mathbb E[Y\mid X]=4+5X.
$$

$\beta_1=5$ says that the conditional mean of $Y$ is 5 outcome units higher for $X=1$ than for $X=0$. An average causal interpretation requires a design condition such as randomized assignment of $X$, together with relevant implementation assumptions that make assigned groups comparable in their potential outcomes. Regression notation alone is insufficient.

#### D. Adjusted regression and claim boundaries

The adjusted coefficient says that, holding included pre-treatment $Z$ fixed, a one-unit difference in $X$ is associated with a 1.8-unit difference in the fitted conditional mean of the outcome over supported comparisons. The coefficient change is

$$
1.8-2.4=-0.6.
$$

The change is not automatically omitted-variable bias because the specifications make different conditional comparisons. Labeling the difference as bias would require a defensible common causal target and assumptions establishing which estimator targets it. Statistical significance measures compatibility with a null reference under assumptions; $R^2$ measures in-sample fit; and additional variables alter the fitted specification. None substitutes for assignment or another identification argument.

At ECO 202 depth, students interpret adjusted coefficients, compare specifications, classify controls, and audit causal claims. Matrix algebra, manual multiple-regression computation, and technical multiple-regression inference are reserved for the next econometrics course.

### Verification and limitation

Independent calculation gives Part B standard error $0.0676387463$, statistic $2.2176638$, exact Normal-reference p-value $0.0265778$, and interval $[0.0174281,0.2825719]$. Rounding reconciles these values with the supplied $\Phi(2.218)$ approximation. Every calculation remains conditional on the stated reference and design assumptions.

### Nearby transfer

Before opening the check, an approximately Normal estimator is 42 with estimated standard error 3. Test $H_0:\theta=39$ against a two-sided alternative and construct the matching 95% interval using $\Phi(1)=0.84134$ and 1.96.

<details>
<summary>Reveal the transfer check</summary>

$z=(42-39)/3=1$, so the two-sided p-value is $2(1-0.84134)=0.31732$. The interval is $42\pm1.96(3)=[36.12,47.88]$. Fail to reject at 5%, and note that the interval contains 39; neither statement proves $\theta=39$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Build a one-page analysis map

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connections:** [Project question, population, and target](../../#c18-stop-4), [design, method, evidence, and limitation](../../#c18-stop-5), and [reproducibility and responsible AI use](../../#c18-stop-6)

### Question and strategy

There is no universal project answer. The complete fictional example below demonstrates alignment without creating a project requirement: every claim has a target, evidence item, assumption, check, and limitation.

### Complete solution: fictional delivery-record analysis

1. **Question and claim type — ready:** Among completed shipments recorded by a fictional regional delivery platform during October 2026, how does the recorded late-delivery proportion differ between ground and air service? This is descriptive, not causal.
2. **Unit, scope, outcome, comparison, and estimand — ready:** One row is one completed shipment. Scope is shipments recorded by this platform in the stated region and month. The binary outcome is whether delivery occurred after the platform's promised timestamp. The comparison is ground minus air. The estimand is the difference in recorded late-delivery proportions for the defined finite set of shipments.
3. **Selection and measurement — repair:** Rows enter after a shipment is marked completed. Service type comes from the booking record; lateness is computed from promised and recorded delivery timestamps. Canceled, unresolved, or missing-timestamp shipments require a documented inclusion decision.
4. **Method and uncertainty — unresolved:** Report group counts, proportions, their difference, and a two-proportion interval if a coherent repeated-sampling model is justified. If the analysis treats all October platform shipments as the finite target, the descriptive difference can be reported without pretending that a sampling interval expands the target.
5. **Claim and evidence — ready as a template:** “In the analyzed October platform records, the ground late-delivery proportion was [estimated difference] percentage points higher or lower than the air proportion.” Evidence is a table containing group denominators, late counts, proportions, the difference, and any justified interval.
6. **Strongest limitation — ready:** Service selection is observational and can differ by distance, urgency, package type, weather, and customer. The difference cannot be interpreted as the effect of switching service. Excluding unresolved shipments could also alter the descriptive target.
7. **Independent verification — ready as a plan:** Recompute each denominator from raw service labels; hand-check a sample of timestamp classifications; reproduce the difference from the displayed counts; recalculate any standard error from the printed inputs; and confirm graph heights, labels, units, and denominators against the table.
8. **Provenance, permission, privacy, and reproducibility — unresolved:** Record the data owner, extract date and query, data dictionary, permission to analyze or share, treatment of shipment identifiers and addresses, raw-file preservation rule, cleaning steps, software versions, and one command or documented sequence that rebuilds every output.
9. **AI boundary — unresolved until the project rules are final:** AI may propose code or critique the claim using only nonrestricted descriptions or approved data. The student decides the target, exclusions, method, and claim; runs and audits all code; checks every number and source; protects private records; and documents material assistance under the final project rules.
10. **First repair:** Confirm permission and the exact data-generating, completion, and missingness process before expanding the analysis. Remove or repair any causal-sounding service comparison.

### Verification and limitation

Read the ten numbered entries as a chain. The descriptive claim reaches only the defined records, the evidence has explicit denominators, the uncertainty statement depends on a coherent repetition, and the strongest causal and selection limitations appear before stylistic polishing. Actual project rules come from the approved project brief, not this fictional example.

### Nearby transfer

Before opening the check, change the question to “What is the causal effect of switching a shipment from ground to air service on late delivery?” What new evidence is missing?

<details>
<summary>Reveal the transfer check</summary>

The observational service groups do not reveal the same shipment's outcome under both services. A causal answer needs a credible assignment or identification design, such as a well-implemented randomized service offer for eligible shipments, plus implementation, outcome-measurement, interference, support, and external-validity checks. Adding controls or rewriting the descriptive sentence cannot supply that missing design.

</details>

[Return to the solution map](#solution-map)

## Final study move

Close this file and complete the [personal learning record](../#verification-and-personal-learning-record). Reconstruct one Class 18 core problem and one Exam 4 checkpoint section without assistance. Use **Transfer** only when you can solve the nearby task without reopening its check.

[← Return to Practice 18](../) · [Class 18 guide](../../)
