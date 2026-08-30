# ECO 202 Practice 5: Association, Causation, and Confounding

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 5: Association, Causation, and Confounding](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 5 and before In-Class Exam 1

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Use the Class 5 core route to practice causal reasoning, then use the separate cumulative checkpoint to diagnose your preparation across Classes 1–5.

<!-- Source lineage: Scope calibrated against Econ202-UlrichMueller/LectureNotes.tex, lines 717--851, Spring 2026 PS2, and selected private first-midterm calibration material. All problem wording, organization, audit tasks, and transfers below are newly authored for the Fall 2026 Class 5 guide; no protected exercise or reserved exam question is reproduced. Numerical inputs come only from the existing Class 2--5 teaching examples and documented wage1 and bwght materials. -->

## Purpose and workload

The Class 5 core route is Problems 1–5 and should take about 42–54 minutes. It moves from the causal boundary of a fitted line to potential-outcome calculations, a real observational comparison, an auditable causal memo, and a final transfer. Begin Problems 1, 2, and 5 without AI or answer checks. Problem 4 offers an optional AI comparison and a complete non-AI route.

The cumulative Exam 1 checkpoint is Problem 6. It is an additional 25–35 minute review across Classes 1–5, not part of the Class 5 core-route estimate. Optional software execution, the external AI comparison, and worked-solution study also take additional time.

| Class 5 core stage | Suggested time | Work |
|---|---:|---|
| Spiral back from regression | 6–8 minutes | Problem 1 |
| Calculate counterfactual quantities | 12–15 minutes | Problem 2 |
| Audit the real-data comparison | 10–12 minutes | Problem 3 |
| Audit a causal memo | 7–10 minutes | Problem 4 |
| Transfer without assistance | 7–9 minutes | Problem 5 |

## What you must be able to do independently

After completing the Class 5 core route, you should be able to:

- distinguish descriptive, predictive, and causal claims and state the evidence each requires;
- construct competing causal stories for the same association and explain how confounding and selection can make observed groups incomparable;
- define $D_i$, $Y_i(1)$, $Y_i(0)$, an individual treatment effect, an average treatment effect, and the observed outcome;
- explain why one potential outcome is missing for each unit in real data;
- calculate individual effects, the ATE, the average effect for treated units, an observed group difference, and the untreated-potential-outcome selection term;
- distinguish an observational study from a randomized experiment and explain why random assignment creates comparability on average rather than exact balance in every realized experiment;
- identify the intervention, outcome, units, target population, counterfactual comparison, design, assumptions, and limitations needed for a causal claim; and
- state the strongest descriptive conclusion supported by an observational comparison without turning it into a causal estimate.

## Problem map

| Problem | Bank | Main task | Suggested mode |
|---|---|---|---|
| [1. One fitted line, three kinds of claim](#problem-1) | Class 5 core | Spiral back to Class 4 and expose the missing causal argument. | Unaided retrieval and interpretation |
| [2. Treatment effects and selection in the complete table](#problem-2) | Class 5 core | Calculate effects, observed outcomes, and the treatment-selection decomposition. | Unaided calculation |
| [3. What the birth-weight comparison does and does not show](#problem-3) | Class 5 core | Audit a real observational comparison and propose a more credible design. | Empirical causal audit |
| [4. Audit a confident causal memo](#problem-4) | Class 5 core | Diagnose claims about confounding, time order, computation, and randomization. | Non-AI route or AI comparison |
| [5. Change assignment, not the potential outcomes](#problem-5) | Class 5 core | Recalculate a realized experiment and explain chance imbalance. | Final unaided transfer |
| [6. Cumulative checkpoint for In-Class Exam 1](#problem-6) | Additional review | Reconstruct one essential task from each of Classes 1–5. | 25–35 minute unaided checkpoint |

## Class 5 core route

<a id="problem-1"></a>

### Problem 1. One fitted line, three kinds of claim

**Class-guide connection:** [Class 4: A historical education–wage relationship](../../04-scatterplots-correlation-and-descriptive-regression/#5-a-historical-educationwage-relationship), [Class 4: From regression output to a defensible claim](../../04-scatterplots-correlation-and-descriptive-regression/#6-from-regression-output-to-a-defensible-claim), [Class 5: Description, prediction, or causation?](../#c5-stop-1), and [Class 5: Why the same association can have different causes](../#c5-stop-2)

Class 4 reported the following relationship among 526 workers in the historical `wage1` extract:

$$
r=0.4059,
\qquad
\widehat{\mathrm{wage}}=-0.9049+0.5414\mkern3mu\mathrm{educ},
\qquad
r^2=0.1648.
$$

1. Classify each statement as descriptive, predictive, or causal.
   - Among the workers in this extract, completed education and hourly wage are positively linearly associated.
   - Completed education improves wage predictions for comparable workers outside the fitted sample.
   - Requiring one additional year of schooling would raise a worker's hourly wage by 0.5414 dollars.
2. Calculate the fitted hourly wage at 12 years of education and interpret it with the sample, units, and historical period visible.
3. Explain why the fitted slope does not by itself estimate the causal statement in part 1.
4. Give three distinct stories that could contribute to the positive association: one in which education affects wage, one involving a pre-treatment common cause, and one involving expectations or selection. For the common-cause story, explain why a variable is not a confounder merely because it predicts wage.
5. What new evidence would be needed to support the predictive statement? What different evidence or assumptions would be needed to support the causal statement?

<!-- Source lineage: Newly organized spiral-back using only the verified Class 4 wage1 output. The competing-story task preserves the conceptual level of Mueller LectureNotes.tex, lines 719--746, and Spring 2026 PS2 without adapting their settings or wording. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Treatment effects and selection in the complete table

**Class-guide connection:** [Potential outcomes and treatment effects](../#c5-stop-3) and [The missing counterfactual and selection](../#c5-stop-4)

Use the complete fictional teaching table from Class 5. The table displays both potential outcomes only so the causal quantities can be checked; real data would reveal at most one potential outcome per unit.

| Unit | $Y_i(0)$ | $Y_i(1)$ | $D_i$ | Observed outcome ($Y_i$) |
|---|---:|---:|---:|---:|
| A | 4 | 7 | 1 | 7 |
| B | 6 | 7 | 1 | 7 |
| C | 2 | 4 | 0 | 2 |
| D | 5 | 6 | 0 | 5 |

1. Calculate every individual treatment effect and the ATE across the four units.
2. Verify the observed-outcome identity $Y_i=D_iY_i(1)+(1-D_i)Y_i(0)$ for one treated and one untreated unit. Identify which potential outcome would be missing for each unit in an actual study.
3. Calculate the average treatment effect among the treated units.
4. Calculate the observed treated-minus-untreated mean difference.
5. Calculate the untreated-potential-outcome selection term $\overline{Y(0)}_{D=1}-\overline{Y(0)}_{D=0}$ for these four units, and verify that the treated effect plus this term equals the observed difference.
6. Explain in words why the observed difference is not the ATE and why the counterfactual problem would prevent this decomposition from being calculated directly in real observational data.

<!-- Source lineage: Uses the existing fictional potential-outcome table and notation from the current Class 5 guide. The questions extend the in-class walkthrough without introducing new units, values, or protected source material. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. What the birth-weight comparison does and does not show

**Class-guide connection:** [Why the same association can have different causes](../#c5-stop-2), [What random assignment changes](../#c5-stop-5), and [Auditing a causal claim](../#c5-stop-6)

The Class 5 [`bwght` data](../data/README.md) contain 1,388 birth records from a historical 1988 survey extract. Inspect the [Class 5 comparison figure](../figures/smoking-birthweight-comparisons.png) and use the verified output below.

| Recorded group | Records | Mean birth weight (ounces) | Mean family income (thousands of dollars) |
|---|---:|---:|---:|
| Zero reported cigarettes per day | 1,176 | 120.0612 | 30.4885 |
| Positive reported cigarettes per day | 212 | 111.1462 | 20.9175 |

1. Verify the positive-minus-zero difference in each outcome. Keep the direction and units visible.
2. State the strongest two-sentence descriptive conclusion supported by the table and figure.
3. Let $D_i=1$ denote positive reported cigarette consumption and $D_i=0$ denote zero reported consumption. Define $Y_i(1)$, $Y_i(0)$, and one target average causal effect in this setting. Explain why “positive consumption” combines multiple treatment versions and therefore needs sharper definition for a precise intervention claim.
4. Identify the missing counterfactual for a record with $D_i=1$. Give at least three mechanisms that could contribute to the observed birth-weight association, including one pre-treatment common cause and one measurement or selection issue.
5. Explain what the family-income difference contributes to the audit and why it neither proves that income is a confounder nor shows that adjusting for income alone identifies a causal effect.
6. Describe an ethical randomized design that offers a smoking-cessation intervention rather than assigning smoking. Which causal effect would that design address directly, and name two limitations that could remain?

You can complete the problem entirely from the supplied table and figure. For an optional computational check, open the [Class 5 folder](../), run [`class-05-causal-comparisons.R`](../class-05-causal-comparisons.R), and compare the output with your arithmetic. Running R or memorizing its syntax is not part of the independent exam target.

<!-- Source lineage: Original empirical audit using only the existing documented Wooldridge bwght CSV, Class 5 figure, and verified Class 5 script. No new data, code, regression, or causal estimate is introduced. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Audit a confident causal memo

**Class-guide connection:** [The missing counterfactual and selection](../#c5-stop-4), [What random assignment changes](../#c5-stop-5), and [Auditing a causal claim](../#c5-stop-6)

An AI system receives the Class 5 output and writes:

> The 8.91-ounce birth-weight gap is the exact causal effect of any smoking during pregnancy. The income difference identifies family income as the only confounder, so adding income to a regression would prove causality. Smoking was reported before birth, which rules out every alternative explanation. The best confirmation would randomly assign pregnant people to smoke because randomized experiments have no remaining limitations. The R script ran successfully, so all of these conclusions are verified.

First work without assistance.

1. Break the memo into claims and classify each as numerically supported, conceptually possible but unestablished, or unsupported.
2. Identify the first point at which an observed group comparison becomes a causal claim. State the missing counterfactual and the treatment-definition problem.
3. Explain why the income difference is evidence of group incomparability rather than proof that income is the only confounder or an automatic adjustment solution.
4. Explain why time ordering is useful but insufficient, why the proposed experiment is unethical, and why even an ethical randomized experiment can retain limitations.
5. Separate what successful script execution verifies from the causal argument that still requires design and assumptions.
6. Rewrite the memo in no more than four sentences, ending with the strongest conclusion supported by the observational data alone.

Then choose one of the following routes.

**AI comparison route:** Copy the prompt below into any AI system, compare its audit with yours, and record one correction it handled well and one claim, assumption, or design issue you still needed to resolve yourself.

```text
I am auditing a memo about 1,388 birth records in a historical 1988
observational survey extract. Mean birth weight is 120.0612 ounces among
1,176 records with zero reported cigarettes per day and 111.1462 ounces
among 212 records with positive reported consumption. Mean family income
is 30.4885 versus 20.9175 in thousands of dollars.

Audit this memo claim by claim: "The 8.91-ounce birth-weight gap is the
exact causal effect of any smoking during pregnancy. The income difference
identifies family income as the only confounder, so adding income to a
regression would prove causality. Smoking was reported before birth, which
rules out every alternative explanation. The best confirmation would
randomly assign pregnant people to smoke because randomized experiments
have no remaining limitations. The R script ran successfully, so all of
these conclusions are verified."

Separate arithmetic, descriptive association, treatment definition,
counterfactual reasoning, confounding, time order, ethics, randomization,
external validity, and software execution. Do not invent a regression or
causal estimate. Give a verification route for each checkable claim and
provide a four-sentence revision limited to the supplied evidence.
```

**Complete non-AI route:** Verify the two mean differences directly; label the study observational; define the missing untreated outcome for records with positive reported consumption; ask which pre-treatment variables could affect both reported smoking and birth weight; distinguish “income differs” from “income is sufficient”; separate time order from identification; replace the unethical experiment with randomized cessation support; list compliance, attrition, measurement, and population limitations; and keep the final conclusion descriptive.

<!-- Source lineage: Newly authored flawed causal memo, audit sequence, and generic prompt using only the verified Class 5 output. No generated regression, protected wording, or reserved assessment content is reproduced. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Change assignment, not the potential outcomes

**Class-guide connection:** [Potential outcomes and treatment effects](../#c5-stop-3), [The missing counterfactual and selection](../#c5-stop-4), and [What random assignment changes](../#c5-stop-5)

Do not use AI, software, answer checks, or worked solutions until you have completed this problem. Return to the four units and potential outcomes in Problem 2. Suppose a chance assignment mechanism instead produces

$$
(D_A^\star,D_B^\star,D_C^\star,D_D^\star)=(1,0,1,0).
$$

The potential outcomes do not change.

1. Construct the four observed outcomes under $D^\star$ and calculate the treated-minus-untreated observed mean difference.
2. Calculate the average treatment effect for the treated units under $D^\star$ and the untreated-potential-outcome selection term. Verify the decomposition.
3. Does the ATE across all four units change when the assignment changes? Explain.
4. Every individual treatment effect in the table is positive, yet the observed group difference under $D^\star$ is zero. Explain how both statements can be true.
5. Explain why random assignment makes the selection term zero on average over the assignment mechanism but does not guarantee exact balance or a nonzero estimated effect in this one realized assignment.

<!-- Source lineage: Newly authored transfer that changes only the assignment indicators in the existing Class 5 potential-outcome table. It introduces no new units, potential outcomes, dataset, or code. -->

[Back to the problem map](#problem-map)

## Additional cumulative review

<a id="problem-6"></a>

### Problem 6. Cumulative checkpoint for In-Class Exam 1

This checkpoint is an additional 25–35 minute unaided review. Close the class guides, do not use AI or software, and show the calculation or reasoning needed for every conclusion. Open the compact checks only after completing all five parts.

#### A. Class 1 — Workflow, verification, and scope

The historical `wage1` analysis reports 526 workers and a total hourly wage of 3,101.35 dollars per hour.

1. Reconstruct the mean hourly wage and state its units and historical scope.
2. Distinguish what is established by code running, the arithmetic check agreeing, and a claim being substantively justified.
3. State one reproducibility check and one privacy or permission check before sharing an analysis with an AI system.

#### B. Class 2 — Distribution, resistance, and outlier rule

Use the existing Class 2 teaching values

$$
8,\ 9,\ 10,\ 10,\ 11,\ 12,\ 24.
$$

Calculate the mean, median, $Q_1$, $Q_3$, $\mathrm{IQR}$, and upper $1.5\mathrm{IQR}$ fence using the median-of-halves convention. Identify any flag and explain why it is not a deletion instruction.

#### C. Class 3 — Normal calculation and model audit

Under the simplified model $X\sim\mathsf N(120,20^2)$ for birth weight in ounces, calculate the z-score for 88 ounces and $\mathbb P(X<88)$. After standardizing, use the supplied standard Normal value $\Phi(-1.6)=0.0548$; no software or separate probability table is needed. The empirical fraction below 88 ounces in the historical extract is 0.0598; explain why proximity to the model probability does not prove that the entire distribution is Normal.

#### D. Class 4 — Least squares and interpretation

For the five-worker teaching example, $\bar x=14$, $\bar y=7$, $s_x^2=10$, $s_{xy}=8.5$, and $r\approx0.9815$.

1. Calculate $b_1$, $b_0$, the fitted wage at $x=16$, the residual for the worker whose observed wage is 8, and $r^2$.
2. Interpret the slope and $r^2$ without causal language.

#### E. Class 5 — Counterfactual conclusion

Return to the historical `bwght` comparison in Problem 3.

1. Write one descriptive claim and one distinct causal question.
2. State the missing counterfactual, one competing causal story, and one design or assumption needed before answering the causal question.

<!-- Source lineage: Cumulative checkpoint uses only numerical examples and empirical outputs already developed in the current Class 1--5 guides. Selected historical first-midterm material was used solely to calibrate the expectation that students show short calculations and explanations; no archived question is copied. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the corresponding problem. They confirm targets and main conclusions, not the reasoning that an exam answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

The three statements are descriptive, predictive, and causal, respectively. At 12 years, the fitted wage is $-0.9049+0.5414(12)=5.5919$ dollars per hour in the historical fitted sample. The slope alone does not separate an education effect from prior ability or resources, expected wage opportunities, selection into the records, measurement, or other mechanisms. Prediction requires performance on genuinely new data; causation requires a defensible intervention, counterfactual comparison, design, and assumptions.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

The individual effects for A–D are $(3,1,2,1)$, so $\mathrm{ATE}=7/4=1.75$. The observed outcomes are $(7,7,2,5)$; the treated average effect is 2; and the observed treated-minus-untreated difference is $7-3.5=3.5$. The untreated-potential-outcome selection term is $5-3.5=1.5$, so $3.5=2+1.5$. In real data, $Y(0)$ is missing for A and B and $Y(1)$ is missing for C and D.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

The positive-minus-zero birth-weight difference is $111.1462-120.0612=-8.9150$ ounces, and the family-income difference is $20.9175-30.4885=-9.5710$ thousand dollars. These are descriptive group differences in a historical observational extract. The income difference demonstrates group incomparability, not a complete confounding diagnosis. Randomized cessation support would directly address the effect of offering that support; compliance, attrition, measurement, and applicability can remain limited.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

Only the displayed group means and their arithmetic differences are numerically supported. The memo turns a group difference into a causal effect, treats a broad exposure as one intervention, mistakes one differing covariate for a complete adjustment set, treats time order as identification, proposes an unethical experiment, erases randomized-experiment limitations, and confuses successful execution with causal verification. A defensible revision must remain descriptive and state what design information is missing.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

The observed outcomes under $D^\star$ are $(7,6,4,5)$. The treated and untreated means are both 5.5, so their difference is zero. The treated average effect is $(3+2)/2=2.5$, while the untreated-potential-outcome selection term is $(4+2)/2-(6+5)/2=-2.5$; their sum is zero. The ATE remains 1.75. Random assignment balances potential outcomes over repeated assignments, not necessarily in one realized split.

</details>

<details>
<summary>Reveal the checkpoint for Class 1</summary>

$3{,}101.35/526\approx5.8961$ in 1976 dollars per hour among the 526 recorded workers. Execution, arithmetic consistency, and substantive validity are distinct. Reproducibility requires documented input, inspectable instructions, regenerated output, and independent checks; sharing requires file-by-file privacy and permission review.

</details>

<details>
<summary>Reveal the checkpoint for Class 2</summary>

$\bar x=12$, $M=10$, $Q_1=9$, $Q_3=12$, $\mathrm{IQR}=3$, and the upper fence is 16.5. The value 24 is flagged for investigation; the rule does not establish that it is erroneous or should be removed.

</details>

<details>
<summary>Reveal the checkpoint for Class 3</summary>

$z=(88-120)/20=-1.6$ and $\mathbb P(X<88)=\Phi(-1.6)\approx0.0548$. Agreement with 0.0598 at one cutoff checks one feature, not shape, other cutoffs, tails, extreme values, or the truth of the full Normal model.

</details>

<details>
<summary>Reveal the checkpoint for Class 4</summary>

$b_1=8.5/10=0.85$, $b_0=7-0.85(14)=-4.9$, $\widehat y(16)=8.7$, the residual is $8-8.7=-0.7$, and $r^2\approx0.9633$. The slope is a fitted sample association in dollars per hour per year of education; $r^2$ is the fraction of sample wage variation represented by the fitted linear values.

</details>

<details>
<summary>Reveal the checkpoint for Class 5</summary>

A descriptive claim compares recorded mean birth weights across the two reported-cigarette groups. A causal question compares birth weight under two sharply defined interventions for the same target units. The missing counterfactual, pre-treatment common causes, measurement or selection, and the absence of random assignment prevent the observed difference from answering that question by itself.

</details>

## Worked solutions

Attempt each problem and inspect its compact check before opening the [complete worked solutions](solutions/). The solution guide develops the target, calculation or argument, verification, interpretation, limitations, and a nearby transfer for every problem; use it to reconstruct the reasoning rather than copy a conclusion.

## Personal learning record

Keep this record in your own notes; do not submit it or add it to the course repository.

- **Independent:** Which Class 5 problems and checkpoint parts did you complete without hints, AI, software, answer checks, or worked solutions?
- **Prompted:** Which parts did you complete after a cue, checklist, or partial hint?
- **Supplied:** Which calculations, causal stories, design ideas, or wording came from software, AI, a compact check, or a worked solution?
- **Remaining:** Which distinction, calculation, or assumption could you not yet reconstruct on a blank page?
- **Transfer:** Did you complete Problem 5 unaided, and can you explain why a zero observed difference can coexist with positive individual effects?
- **Exam 1 checkpoint:** Which of Classes 1–5 needs the next focused review, and what exact task will you redo?
- **Next attempt:** Choose one remaining item and reconstruct it unaided within the next two days.
