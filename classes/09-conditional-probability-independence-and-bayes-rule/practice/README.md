# ECO 202 Practice 9: Conditional Probability, Independence, and Bayes' Rule

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 9: Conditional Probability, Independence, and Bayes' Rule](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 9 and before In-Class Exam 2

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Problems 1–5 form the Class 9 core. Problem 6 is a separate cumulative checkpoint across Classes 6–9. Use the checks and solutions to diagnose and repair your reasoning, not merely to record answers.

<!-- Source lineage: Scope is calibrated against Econ202-UlrichMueller/LectureNotes.tex, lines 964--1336; Spring 2026 PS3; selected private first-midterm calibration material; and the current Classes 6--9 guides. All settings, values, wording, audit tasks, and transfers are newly authored or deliberately reuse the documented current bwght example. No protected exercise or reserved exam question is reproduced. -->

## Purpose and workload

The Class 9 core route is Problems 1–5 and should take about 42–55 minutes. It moves from Class 8 event algebra to joint tables, conditional probabilities, independence, total probability, Bayes' rule, and a final unaided transfer.

Problem 6 is an additional 25–35 minute Exam 2 checkpoint. It is not part of the Class 9 core estimate. Optional software execution, external AI comparison, answer-check study, and worked-solution study take additional time.

| Class 9 core stage | Suggested time | Work |
|---|---:|---|
| Events to a joint table | 8–10 minutes | Problem 1 |
| Conditional empirical comparison | 10–12 minutes | Problem 2 |
| Independence and complements | 6–8 minutes | Problem 3 |
| Bayes and base-rate audit | 10–14 minutes | Problem 4 |
| Transfer without assistance | 8–11 minutes | Problem 5 |

## What you must be able to do independently

After completing the core route, you should be able to:

- define the sample space and events for a stated random mechanism;
- translate verbal events into complements, unions, and intersections;
- complete a two-way table and distinguish joint, marginal, and conditional probabilities;
- keep $\mathbb P(A\mid B)$ separate from $\mathbb P(B\mid A)$ by identifying the conditioning denominator;
- check independence through products or conditional probabilities and distinguish it from disjointness;
- derive and use a short consequence of the probability rules;
- use multiplication, total probability, natural frequencies, and Bayes' rule; and
- explain the scope of an empirical probability without adding a population or causal claim.

## Problem map

| Problem | Bank | Main task | Suggested mode |
|---|---|---|---|
| [1. From events to a complete table](#problem-1) | Class 9 core | Spiral from Class 8 set algebra to joint and marginal probabilities. | Unaided retrieval + calculation |
| [2. Forward and reverse conditionals in `bwght`](#problem-2) | Class 9 core | Calculate conditional probabilities and diagnose independence. | Empirical calculation |
| [3. Independence and complements](#problem-3) | Class 9 core | Derive and calculate consequences of independence. | Unaided reasoning |
| [4. Audit a base-rate claim](#problem-4) | Class 9 core | Use natural frequencies and Bayes, then audit a flawed claim. | Non-AI route or AI comparison |
| [5. Transfer without assistance](#problem-5) | Class 9 core | Solve a new screening problem from target through interpretation. | Final unaided transfer |
| [6. Cumulative checkpoint for In-Class Exam 2](#problem-6) | Additional review | Reconstruct one essential task from each of Classes 6–9. | 25–35 minute unaided checkpoint |

## Class 9 core route

<a id="problem-1"></a>

### Problem 1. From events to a complete table

**Class-guide connection:** [Class 8: Sample spaces and event algebra](../../08-probability-rules-and-probability-models/#2-sample-spaces-and-event-algebra), [Class 8: Rules derived from the axioms](../../08-probability-rules-and-probability-models/#4-rules-derived-from-the-axioms), and [Class 9: One table, several probability questions](../#1-one-table-several-probability-questions)

A firm uniformly selects one of 200 employee records from a fixed internal training file. Let $R$ denote a record for a remote employee and $D$ a record for an employee with a college degree. The joint counts are

| Work arrangement | No degree ($D^c$) | Degree ($D$) | Total |
|---|---:|---:|---:|
| Onsite ($R^c$) | 54 | 66 | 120 |
| Remote ($R$) | 26 | 54 | 80 |
| **Total** | **80** | **120** | **200** |

1. State the sample space and explain what makes its 200 elementary outcomes equally likely in this problem.
2. Calculate $\mathbb P(R)$, $\mathbb P(D)$, $\mathbb P(R\cap D)$, $\mathbb P(R\cup D)$, and $\mathbb P(R^c\cap D^c)$.
3. Verify the complement rule using $R$ and the general addition rule using $R$ and $D$.
4. Explain why the remote and onsite events are disjoint but the remote and degree events are not.
5. State what these probabilities describe and one population claim that the fixed-file experiment does not establish.

<!-- Source lineage: Newly authored fixed-file event-table problem. It preserves Class 8 event algebra and establishes the joint-table structure needed for Class 9 without adapting a legacy exercise. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Forward and reverse conditionals in `bwght`

**Class-guide connection:** [Conditioning changes the denominator](../#2-conditioning-changes-the-denominator) and [Independence is a testable model property](../#3-independence-is-a-testable-model-property)

Uniformly select one row from the 1,388-record historical [`bwght` course file](../data/README.md). Let $S$ denote positive reported cigarettes per day and $L$ denote recorded birth weight below 88 ounces.

| Reported cigarettes | Not low ($L^c$) | Low ($L$) | Total |
|---|---:|---:|---:|
| Zero ($S^c$) | 1,113 | 63 | 1,176 |
| Positive ($S$) | 192 | 20 | 212 |
| **Total** | **1,305** | **83** | **1,388** |

1. Calculate $\mathbb P(S)$, $\mathbb P(L)$, and $\mathbb P(S\cap L)$.
2. Calculate $\mathbb P(L\mid S)$ and $\mathbb P(S\mid L)$. Interpret both with their conditioning populations and historical scope visible.
3. Calculate $\mathbb P(L\mid S^c)$ and use total probability to reconstruct $\mathbb P(L)$.
4. Check whether $S$ and $L$ are independent by both a product comparison and a conditional-probability comparison.
5. Explain why the dependence conclusion is associational rather than evidence of a causal smoking effect.

You can complete the problem entirely from the supplied table. For an optional computational check, run the [Class 9 script](../class-09-conditional-probability.R) from the Class 9 folder.

<!-- Source lineage: Original empirical practice using only the current documented bwght table and script. It introduces no new data, regression, or causal estimate. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Independence and complements

**Class-guide connection:** [Independence is a testable model property](../#3-independence-is-a-testable-model-property)

Suppose $\mathbb P(A)=0.40$, $\mathbb P(B)=0.30$, and $A$ and $B$ are independent.

1. Calculate $\mathbb P(A\cap B)$.
2. Starting from $B=(A\cap B)\cup(A^c\cap B)$ as a disjoint union, derive $\mathbb P(A^c\cap B)=\mathbb P(A^c)\mathbb P(B)$.
3. Complete all four cells of the joint-probability table for $A$ and $B$ and verify that they sum to one.
4. Calculate $\mathbb P(A\cup B)$, $\mathbb P(A^c\mid B)$, and $\mathbb P(B\mid A^c)$.
5. Explain why the same argument cannot be used to claim that two disjoint positive-probability events are independent.

<!-- Source lineage: Newly authored calculation preserving the inherited short-proof expectation and independence-of-complements result without copying PS3 or a historical exam item. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Audit a base-rate claim

**Class-guide connection:** [Multiplication and total probability](../#4-multiplication-and-total-probability), [Bayes' rule keeps the base rate](../#5-bayes-rule-keeps-the-base-rate), and [Audit the inverse fallacy](../#6-audit-the-inverse-fallacy)

Return to the Class 9 quality-alert mechanism, but suppose the defect base rate rises to 5% while sensitivity remains 90% and the false-positive rate remains 4%. Work with 10,000 items.

An analyst writes:

> The alert was 18.52% reliable in the original setting. Sensitivity and the false-positive rate have not changed, so the same 18.52% posterior still applies. Observing an alert makes the base rate irrelevant.

First work without assistance.

1. Construct the complete natural-frequency table for the new 5% base rate.
2. Calculate the total alert probability and $\mathbb P(\mathrm{defective}\mid\mathrm{alert})$ using counts.
3. Verify the result with total probability and Bayes' rule.
4. Identify the first unsupported step in the analyst's claim and explain why the posterior changes even though sensitivity and the false-positive rate do not.
5. State whether alert and defect are independent and justify your answer.

Then choose one route.

**AI comparison route:** After completing your table, give an AI system the prompt below and audit whether it preserves the new base rate and requested direction.

```text
Among 10,000 items, 5 percent are defective. An alert occurs for 90 percent
of defective items and 4 percent of nondefective items. An analyst says the
posterior probability after an alert must remain 18.52 percent because the
sensitivity and false-positive rate have not changed from an earlier setting.

Audit the claim using a complete natural-frequency table, total probability,
and Bayes' rule. Label the base rate, sensitivity, false-positive rate,
numerator, denominator, and requested conditional direction. Identify the
first unsupported step and do not invent additional information.
```

**Complete non-AI route:** Calculate defective and nondefective counts, true and false alerts, all alerts, and the posterior. Compare the new alert column with the original one in Class 9, then test independence by comparing the alert rates across defective and nondefective items.

<!-- Source lineage: Newly authored base-rate change and flawed report extending the current Class 9 example. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Transfer without assistance

**Class-guide connection:** [Bayes' rule keeps the base rate](../#5-bayes-rule-keeps-the-base-rate)

Do not use AI, software, answer checks, or worked solutions until you have completed this problem.

A scholarship program applies an initial signal to 2,000 applications. Ten percent of the applications meet a sharply defined readiness benchmark. The signal is positive for 80% of benchmark-ready applications and for 20% of applications that do not meet the benchmark.

1. Define events for benchmark readiness and a positive signal, then construct the complete natural-frequency table.
2. Calculate the marginal probability of a positive signal using total probability.
3. Calculate the probability that an application meets the benchmark given a positive signal, first from counts and then using Bayes' rule.
4. Determine whether readiness and the signal are independent.
5. Explain why sensitivity is not the posterior and why the result alone does not validate the benchmark, the signal, or a scholarship decision.
6. Predict how the posterior changes if the false-positive rate falls while the base rate and sensitivity stay fixed.

<!-- Source lineage: Newly authored final transfer. The setting and values are not taken from a protected exercise or empirical dataset. -->

[Back to the problem map](#problem-map)

## Additional cumulative review

<a id="problem-6"></a>

### Problem 6. Cumulative checkpoint for In-Class Exam 2

This checkpoint is an additional 25–35 minute unaided review. Close the class guides, do not use AI or software, and show the calculation or reasoning needed for every conclusion. Open the compact checks only after completing all four parts.

#### A. Class 6 — Population scope and selection

An open online poll receives 2,400 voluntary responses from university students. Of the respondents, 62% support a proposed campus policy. A headline says, “Sixty-two percent of all university students support the policy.”

1. Identify the sample, intended target population, statistic, and target parameter.
2. Name two selection or measurement mechanisms that threaten the headline and explain a possible direction for one of them.
3. Explain why 2,400 responses do not by themselves repair the design.

#### B. Class 7 — Assignment, sampling, and causal scope

A researcher recruits volunteers and randomly assigns them to receive or not receive a study-support program. Outcomes are recorded for every volunteer.

1. What does random assignment support about the program comparison?
2. What does the volunteer recruitment fail to establish about population generalization?
3. Name one remaining threat that random assignment alone does not solve.

#### C. Class 8 — Event rules

Suppose $\mathbb P(A)=0.55$, $\mathbb P(B)=0.35$, and $\mathbb P(A\cap B)=0.20$.

1. Calculate $\mathbb P(A\cup B)$ and $\mathbb P(A^c\cap B^c)$.
2. Determine whether $A$ and $B$ are disjoint and whether they are independent.
3. Explain why those are distinct questions.

#### D. Class 9 — Conditioning and Bayes

In 1,000 cases, a condition has prevalence 2%. A signal appears for 85% of cases with the condition and 10% of cases without it.

1. Construct the natural-frequency table.
2. Calculate $\mathbb P(\mathrm{condition}\mid\mathrm{signal})$.
3. Explain why 85% is not the requested answer and identify the role of the 2% base rate.

<!-- Source lineage: Newly authored checkpoint using only the current Classes 6--9 targets and examples. Historical exams were used solely for scope and expected fluency; no archived setting or wording is reused. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the corresponding problem. They confirm targets and main results, not the reasoning an exam answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

$\mathbb P(R)=0.40$, $\mathbb P(D)=0.60$, $\mathbb P(R\cap D)=0.27$, $\mathbb P(R\cup D)=0.73$, and $\mathbb P(R^c\cap D^c)=0.27$. The row-selection experiment makes file rows equally likely; it does not establish probabilities for another workforce.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

$\mathbb P(S)=212/1388\approx0.1527$, $\mathbb P(L)=83/1388\approx0.0598$, and $\mathbb P(S\cap L)=20/1388\approx0.0144$. The forward and reverse conditionals are $20/212\approx0.0943$ and $20/83\approx0.2410$. Also $\mathbb P(L\mid S^c)=63/1176\approx0.0536$, and total probability reconstructs $83/1388$. The events are not independent because $0.0943\ne0.0598$.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

The four cells $\mathbb P(A\cap B)$, $\mathbb P(A^c\cap B)$, $\mathbb P(A\cap B^c)$, and $\mathbb P(A^c\cap B^c)$ are 0.12, 0.18, 0.28, and 0.42. Thus $\mathbb P(A\cup B)=0.58$, $\mathbb P(A^c\mid B)=0.60$, and $\mathbb P(B\mid A^c)=0.30$.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

There are 500 defective and 9,500 nondefective items, with 450 true alerts and 380 false alerts. Thus 830 items alert and $\mathbb P(\mathrm{defective}\mid\mathrm{alert})=450/830\approx0.5422$. The posterior changes because the base rate changes.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

There are 200 ready and 1,800 not-ready applications, with 160 true positive signals and 360 false positives. The signal rate is $520/2000=0.26$, and $\mathbb P(\mathrm{ready}\mid\mathrm{positive})=160/520\approx0.3077$. Readiness and the signal are not independent.

</details>

<details>
<summary>Reveal cumulative check A — Class 6</summary>

The 2,400 respondents are the sample; all university students are the claimed target population; 0.62 is the statistic; and the population support proportion is the parameter. Voluntary response, undercoverage of students who did not encounter the poll, repeated participation, and wording or response bias can threaten the headline. Large $n$ reduces neither systematic selection nor measurement bias.

</details>

<details>
<summary>Reveal cumulative check B — Class 7</summary>

Random assignment supports a causal comparison for the recruited study units under the implemented treatment and execution. Volunteer recruitment does not supply random population sampling. Attrition, noncompliance, spillovers, measurement, treatment versions, and external validity can remain.

</details>

<details>
<summary>Reveal cumulative check C — Class 8</summary>

$\mathbb P(A\cup B)=0.55+0.35-0.20=0.70$, so $\mathbb P(A^c\cap B^c)=0.30$. The events are not disjoint because their intersection is positive, and they are not independent because $0.20\ne0.55(0.35)=0.1925$.

</details>

<details>
<summary>Reveal cumulative check D — Class 9</summary>

There are 20 condition cases with 17 signals and 980 noncondition cases with 98 signals. Among 115 signals, 17 are condition cases, so the posterior is $17/115\approx0.1478$. Sensitivity reverses the requested conditional and the low base rate creates many more opportunities for false positives.

</details>

## Worked solutions

Attempt each problem and inspect its compact check before opening the [complete worked solutions](solutions/). The solution guide includes the full reasoning, verification, limitations, and a nearby transfer for every problem.

## Personal learning record

Keep this record in your own notes; do not submit it or add it to the course repository.

- **Independent:** Which tables, calculations, derivations, and interpretations did you complete without assistance?
- **Prompted:** Which steps required a hint, checklist, or partial result?
- **Supplied:** Which results or explanations came from an answer check, solution, AI system, or software?
- **Remaining:** Which conditional direction, independence check, or Bayes step can you not yet reconstruct?
- **Transfer:** Did you complete Problem 5 and the cumulative checkpoint before looking?
- **Next attempt:** Rebuild one table and one argument from a blank page within two days.
