# ECO 202 Practice 18: Multiple Regression, Causal Interpretation, and Project Workshop

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 18: Multiple Regression, Causal Interpretation, and Project Workshop](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 18 and before In-Class Exam 4

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Problems 1–4 form the Class 18 core. Problem 5 is a separate cumulative checkpoint across Classes 14–18. Problem 6 is an optional project-readiness transfer, not a project requirement or deliverable. Use the compact checks and complete solutions to diagnose and repair your reasoning after a genuine attempt.

<!-- Source lineage: Scope is calibrated against Econ202-UlrichMueller/LectureNotes.tex, regression interpretations, multiple regression, controls, confounding, causal qualifications, and coefficient inference; Spring 2026 PS10; selected private historical assessment material; the current Classes 14--18 guides; and the Fall 2026 syllabus project principles. All wording, numerical settings, audits, and transfers are newly authored. No protected exercise or reserved exam question is reproduced. -->

## Purpose and workload

Problems 1–4 form a 35–50 minute Class 18 core route. It moves from partial-coefficient interpretation to control selection, specification comparison, and an independent-first claim audit.

Problem 5 is an additional 30–40 minute cumulative Exam 4 checkpoint. Problem 6 is a separate 20–30 minute project-readiness transfer. Neither is included in the Class 18 core estimate. Optional code execution, an AI or partner comparison after the individual audit, answer-check study, and worked-solution study take additional time.

| Class 18 core stage | Suggested time | Work |
|---|---:|---|
| Partial-coefficient interpretation | 7–9 minutes | Problem 1 |
| Control-variable audit | 8–11 minutes | Problem 2 |
| Compare two pairs of specifications | 10–14 minutes | Problem 3 |
| Claim and external audit | 10–16 minutes | Problem 4 |

## What you must be able to do independently

After completing the core route, you should be able to:

- interpret a multiple-regression coefficient with units, included controls, population, support, and claim type;
- explain why “holding fixed” is a modeled conditional comparison rather than an intervention;
- distinguish a plausible pre-treatment control from a post-treatment variable or a mechanically selected regressor;
- compare simple and adjusted coefficients without labeling their difference as omitted-variable bias automatically;
- connect randomized assignment, rather than regression adjustment, to an internal causal argument;
- align a project question with a population, target, design, method, evidence, and limitation; and
- audit an AI suggestion while retaining responsibility for the statistical decision.

## Problem map

| Problem | Bank | Main task | Suggested mode |
|---|---|---|---|
| [1. Interpret an adjusted coefficient](#problem-1) | Class 18 core | State a complete conditional comparison and its boundary. | Unaided retrieval |
| [2. Which variables belong?](#problem-2) | Class 18 core | Audit pre-treatment, post-treatment, and mechanical controls. | Design reasoning |
| [3. Two specification comparisons](#problem-3) | Class 18 core | Compare observational and randomized examples. | Calculation + interpretation |
| [4. Audit the same claim twice](#problem-4) | Class 18 core | Complete an individual audit, then optionally compare an external audit. | Individual audit; optional comparison |
| [5. Cumulative checkpoint for In-Class Exam 4](#problem-5) | Additional review | Reconstruct essential inference and regression reasoning. | 30–40 minute unaided checkpoint |
| [6. Project-readiness transfer](#problem-6) | Optional transfer | Build and audit a one-page analysis map. | 20–30 minute workshop |

## Class 18 core route

<a id="problem-1"></a>

### Problem 1. Interpret an adjusted coefficient

**Class-guide connection:** [From one predictor to several](../#c18-stop-1) and [holding fixed](../#c18-stop-2)

An observational study fits monthly household electricity use, measured in kilowatt-hours, on outside temperature in degrees Fahrenheit, household size in people, and dwelling area in hundreds of square feet. The fitted temperature coefficient is $-6.2$.

1. Identify the outcome, focal predictor, variables held fixed, and coefficient units.
2. Interpret the coefficient as a fitted conditional comparison.
3. Explain why “holding household size and dwelling area fixed” does not mean the researcher physically held everything else constant.
4. State one support problem that could make the fitted comparison unreliable.
5. Write one causal sentence that the coefficient alone cannot justify, and name the kind of design or identification argument that would be needed.

<!-- Source lineage: Newly authored energy-use setting for partial-coefficient interpretation. -->

<details>
<summary>Check after completing Problem 1</summary>

The coefficient is $-6.2$ kilowatt-hours per degree Fahrenheit. Holding included household size and dwelling area fixed, a one-degree higher temperature is associated with 6.2 fewer fitted kilowatt-hours over supported sample comparisons. This is not an intervention, and unmeasured season, behavior, building quality, pricing, or technology can differ. Extrapolating to temperatures or dwelling types with little overlap is unsafe. A causal temperature-effect claim needs a defensible design or identification argument, not the coefficient alone.

</details>

[Study the complete solution after your attempt](solutions/#solution-1)

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Which variables belong?

**Class-guide connection:** [Control-variable audit](../#c18-stop-2)

A randomized job-training program assigns an offer before training begins. The intended target is the intention-to-treat effect of assignment on earnings one year later. An analyst considers adding the following variables:

- earnings measured one year before assignment;
- age measured at enrollment;
- months of training completed after assignment;
- an indicator for obtaining a job during the training period;
- a variable selected only because it changes the assignment p-value from $0.06$ to $0.04$; and
- a pre-assignment earnings variable that is nearly missing for one assigned group.

1. Classify each candidate as a plausible pre-treatment precision variable, a post-treatment variable, mechanically selected, or requiring a serious support/missingness audit. A variable can receive more than one warning.
2. Identify the two variables that are most naturally considered for prespecified precision adjustment and explain why randomization, not their inclusion, supports the causal comparison.
3. Explain how controlling for months trained or early employment could change the estimand or create selection.
4. Explain why selecting a specification because it crosses $0.05$ is not a design argument.
5. State what must be checked before using the nearly missing pre-assignment measure.

<!-- Source lineage: Newly authored randomized-training audit using the timing distinctions in Classes 7 and 18. -->

<details>
<summary>Check after completing Problem 2</summary>

Prior earnings and age are pre-treatment and could be prespecified precision variables. Months trained and early employment occur after assignment and can be affected by it. The p-value-selected variable is mechanical. The nearly missing prior-earnings variable needs missingness, group-balance, support, and resulting-sample checks. Random assignment supports the intention-to-treat comparison; controls do not create that design.

</details>

[Study the complete solution after your attempt](solutions/#solution-2)

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Two specification comparisons

**Class-guide connection:** [Two empirical specification comparisons](../#c18-stop-3)

Use the following verified Class 18 estimates.

| Setting | Simple coefficient | Adjusted coefficient | Added variables |
|---|---:|---:|---|
| Hourly wage on education | 0.5414 | 0.5990 | Experience and tenure |
| 1978 earnings on randomized training assignment | 1.7943 | 1.7726 | 1974 and 1975 earnings |

Wage is measured in 1976 dollars per hour, education in years, and training-study earnings in thousands of 1982 dollars. The wage data are observational. The job-training coefficient concerns randomized assignment to job training or control, and the added earnings variables were recorded before assignment.

1. Calculate adjusted minus simple for each focal coefficient.
2. Interpret the adjusted education coefficient with units and variables held fixed.
3. Explain two reasons the change in the education coefficient is not automatically “the omitted-variable bias.”
4. Interpret the simple job-training coefficient and show why it equals a difference in assigned-group means when the predictor is binary and an intercept is included.
5. Explain why the causal status of the job-training comparison comes from random assignment rather than the small coefficient change after adjustment.
6. Explain why adding months of training received would differ from adding pre-assignment earnings for an intention-to-treat analysis.
7. Optional reproducibility check after your attempt: run the [Class 18 script](../class-18-regression-and-project-workshop.R) from the class folder and reconcile the printed coefficients with the table.

<!-- Source lineage: Newly authored comparison using verified current Class 18 outputs from recurring course datasets. -->

<details>
<summary>Check after completing Problem 3</summary>

The wage coefficient changes by $0.5990-0.5414=0.0576$ dollars per hour per education year. The assignment coefficient changes by $1.7726-1.7943=-0.0217$ thousand dollars. The adjusted wage coefficient compares fitted wages per education year while experience and tenure are held fixed, but the two specifications have different conditional targets and neither is automatically causal. With a binary assignment indicator, the simple slope is the job-training-group mean minus the control-group mean. Randomization supplies the internal causal design; months trained is post-assignment and would change the question.

</details>

[Study the complete solution after your attempt](solutions/#solution-3)

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Audit the same claim twice

**Class-guide connection:** [Reproducibility and responsible AI use](../#c18-stop-6)

An analyst reports:

> “Education causes wages to rise by exactly 0.5990 dollars per hour for every additional school year. This estimate is unbiased because experience and tenure were controlled, and the larger adjusted coefficient proves that omitted-variable bias was downward.”

Complete Parts 1–6 individually, without AI or a partner.

1. Underline every word or phrase that exceeds what the Class 18 wage analysis establishes.
2. Identify the first unsupported step, then list the target, design, units, support, uncertainty, and external-validity questions needed to audit the claim.
3. Rewrite the sentence as an accurate fitted conditional comparison without inserting facts not supplied.
4. Conduct a second pass using this audit checklist: target, design, units, conditioning variables, support, uncertainty, and external validity. Add one problem or qualification you missed on the first pass.
5. Classify every proposed criticism or revision from your two passes as **accept**, **reject**, or **investigate**. Give a verification step for every accepted or unresolved claim.
6. Explain why an accurate rewrite cannot turn this observational specification into a causal effect merely by changing the prose.

The timed core is now complete. Optionally, ask an AI system to audit the same claim with the self-contained prompt below, or give the claim and prompt to a partner for the same external audit.

```text
Context: historical observational wage records. The adjusted education
coefficient is 0.5990 dollars per hour per additional year of education,
holding recorded experience and tenure fixed.

Claim: "Education causes wages to rise by exactly 0.5990 dollars per hour for
every additional school year. This estimate is unbiased because experience
and tenure were controlled, and the larger adjusted coefficient proves that
omitted-variable bias was downward."

Audit only this claim using the supplied context. Separate what the fitted
coefficient establishes from what would require a causal identification
argument. Check units, conditioning variables, target, support, uncertainty,
and external validity. Identify the first unsupported step and propose one
accurate replacement sentence. Do not invent data, study-design facts,
standard errors, or sources.
```

If you use the optional external route, compare it with your completed individual audit. Identify one point it found, one it missed or misstated, and one decision that remains yours.

<!-- Source lineage: Newly authored auditable claim; the AI and non-AI paths evaluate identical content. -->

<details>
<summary>Check after completing Problem 4</summary>

The estimate supports a sample fitted conditional comparison: holding recorded experience and tenure fixed, fitted hourly wage is approximately 0.5990 dollars higher per additional education year in these historical observational data. “Causes,” “exactly,” “unbiased,” “because ... controlled,” and “proves” are unsupported. Identification, sampling, measurement, support, functional form, uncertainty, and external validity remain unresolved. A rewrite can narrow the claim but cannot change the data-generating design.

</details>

[Study the complete solution after your attempt](solutions/#solution-4)

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

## Additional Exam 4 checkpoint

### Problem 5. Cumulative checkpoint for In-Class Exam 4

**Class-guide connections:** [Null references and p-values](../../14-hypothesis-tests-p-values-significance-errors-and-power/#c14-stop-2), [errors](../../14-hypothesis-tests-p-values-significance-errors-and-power/#c14-stop-4), [power](../../14-hypothesis-tests-p-values-significance-errors-and-power/#c14-stop-5), [interval–test compatibility](../../15-confidence-intervals-and-hypothesis-tests/#c15-stop-6), [inference for proportions](../../16-inference-for-means-and-proportions/#c16-stop-6), [conditional expectations](../../17-conditional-distributions-expectations-and-simple-regression/#c17-stop-2), [simple regression](../../17-conditional-distributions-expectations-and-simple-regression/#c17-stop-5), and [adjusted coefficients](../#c18-stop-2)

Set a 30–40 minute timer. Work without AI, notes, software, answer checks, or worked solutions. Show targets and assumptions, distinguish exact calculations from approximations, and keep association separate from causality.

#### A. Tests, p-values, and intervals — Classes 14–15

An approximately Normal estimator targets a population mean $\mu$. An estimate is 53 with estimated standard error 1.5.

1. Test $H_0:\mu=50$ against $H_a:\mu\neq50$ using a standard Normal reference. Calculate the standardized statistic and approximate two-sided p-value. You may use $\Phi(2.00)=0.97725$.
2. Construct the corresponding approximate 95% confidence interval using 1.96.
3. Explain the agreement between the test and interval at the 5% level.
4. Interpret the p-value correctly, and distinguish Type I error from Type II error.
5. State how a larger sample size can affect power when the underlying effect and design remain comparable.

#### B. Comparing two proportions — Class 16

In two independent groups, 45 of 100 units in Group A and 30 of 100 units in Group B have an outcome.

1. Calculate both sample proportions and their difference, A minus B.
2. Calculate the unpooled estimated standard error $\sqrt{\widehat p_A(1-\widehat p_A)/n_A+\widehat p_B(1-\widehat p_B)/n_B}$.
3. Construct an approximate 95% confidence interval for the proportion difference.
4. Use the same unpooled standard error to calculate an approximate two-sided standardized test and p-value for a zero difference. You may use $\Phi(2.218)\approx0.9867$.
5. State the population, independence, sample-size, measurement, and causal qualifications needed before generalizing or intervening.

#### C. Conditional expectation and simple regression — Class 17

Suppose $\mathbb P(X=0)=0.60$, $\mathbb P(X=1)=0.40$, $\mathbb E[Y\mid X=0]=4$, and $\mathbb E[Y\mid X=1]=9$.

1. Use iterated expectations to calculate $\mathbb E[Y]$.
2. Write the population simple-regression line $\mathbb E[Y\mid X]=\beta_0+\beta_1X$ for this binary predictor.
3. Interpret $\beta_1$ as a conditional-mean comparison.
4. Explain what additional design condition would permit an average causal interpretation of the slope.

#### D. Adjusted regression and claim boundaries — Class 18

An adjusted coefficient for $X$ is 1.8 after pre-treatment $Z$ is included; the simple coefficient was 2.4.

1. Interpret 1.8 while holding $Z$ fixed and calculate adjusted minus simple.
2. Explain why the numerical difference is not automatically omitted-variable bias.
3. Explain why statistical significance, a large $R^2$, or adding many variables would not substitute for a causal design.
4. State the ECO 202 depth boundary for multiple regression.

<!-- Source lineage: Newly authored cumulative checkpoint calibrated to the current Classes 14--18 common core. -->

<details>
<summary>Check after completing the full checkpoint</summary>

In Part A, $z=2.00$, the two-sided p-value is approximately $0.0455$, and the 95% interval is $[50.06,55.94]$, so the test rejects at 5%. In Part B, the proportions are $0.45$ and $0.30$, their difference is $0.15$, the unpooled standard error is approximately $0.06764$, $z\approx2.218$, the p-value is approximately $0.0266$, and the 95% interval is approximately $[0.0174,0.2826]$. In Part C, $\mathbb E[Y]=6$, $\beta_0=4$, and $\beta_1=5$. In Part D, adjusted minus simple is $1.8-2.4=-0.6$; the change alone does not identify omitted-variable bias or causality.

</details>

[Study the complete solution after your attempt](solutions/#solution-5)

[Back to the problem map](#problem-map)

<a id="problem-6"></a>

## Optional project-readiness transfer

### Problem 6. Build a one-page analysis map

**Class-guide connections:** [Project question, population, and target](../#c18-stop-4), [design, method, evidence, and limitation](../#c18-stop-5), and [reproducibility and responsible AI use](../#c18-stop-6)

This exercise is ungraded, not submitted, and does not add requirements to the individual empirical project. Use a possible project idea or a fictional analysis if your topic is not yet settled.

1. Write one empirical question and label it descriptive, predictive, or causal.
2. State the observational unit, population or scope, outcome, main comparison, and estimand.
3. Describe how rows enter the data and how the key variables are measured.
4. Name one course method that targets the estimand and one uncertainty statement it could support.
5. Write one intended claim and connect it to a table, figure, estimate, interval, or test.
6. Name the strongest design, measurement, support, or external-validity limitation.
7. Give an independent verification step for the denominator, key estimate, uncertainty calculation, and graph.
8. List the data provenance, permission, privacy, and reproducibility checks that must be resolved.
9. If AI may assist, identify what it may do, what you must decide, what you must verify, and what must be documented under the final project rules.
10. Mark each element **ready**, **repair**, or **unresolved**. Identify the first repair rather than expanding the analysis.

> [!CAUTION]
> The syllabus states that detailed project guidance will specify question and data requirements, milestones, deliverables, the AI-use record and disclosure, reproducibility standard, attribution and privacy rules, grading criteria, and submission procedure. This transfer is a planning aid only; consult the approved project brief once released.

<!-- Source lineage: Newly authored project-readiness transfer aligned only with already stated syllabus principles. -->

<details>
<summary>Check after completing the project map</summary>

A complete map keeps one question aligned with one observational unit, population or scope, estimand, method, evidence item, uncertainty statement, and claim type. It names a substantive limitation and concrete checks for denominators, estimates, uncertainty, graphs, provenance, permission, privacy, and reproducibility. Any AI role is bounded by decisions, verification, and documentation that remain the student's responsibility. The first **repair** or **unresolved** link should be addressed before the analysis expands.

</details>

[Study the complete solution after your attempt](solutions/#solution-6)

[Back to the problem map](#problem-map)

## Verification and personal learning record

After using the compact checks and worked solutions, close them and reconstruct the key reasoning without assistance. Record each item in exactly one category:

- **Independent:** I completed and explained this correctly before opening any check.
- **Prompted:** A compact check, hint, peer, or AI helped me repair the reasoning.
- **Supplied:** I studied the answer before I could construct it myself.
- **Remaining:** I still cannot explain the target, calculation, design boundary, or interpretation.
- **Transfer:** I completed the nearby transfer in the worked solution without reopening its check.

Your record should distinguish the Class 18 core, the separate Exam 4 checkpoint, and the optional project transfer. A correct answer after disclosure is progress, but it is not yet independent mastery.

## Common mistakes to repair

- treating “holding fixed” as a physical intervention;
- calling a coefficient change omitted-variable bias without a justified common causal target;
- using post-treatment variables to adjust an intention-to-treat comparison;
- treating significance, fit, or many controls as substitutes for design;
- describing a p-value as the probability that the null hypothesis is true;
- generalizing a sample calculation without evidence about selection or population scope; and
- allowing a polished project narrative to hide a missing estimand, permission, verification step, or limitation.

[Open the worked solutions](solutions/) · [Return to Class 18](../)
