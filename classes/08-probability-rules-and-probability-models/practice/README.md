# ECO 202 Practice 8: Probability Rules and Probability Models

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 8: Probability Rules and Probability Models](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 8 and before Class 9

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Use it to identify which probability objects, rules, calculations, and interpretations you can produce and defend independently.

<!-- Source lineage: Scope calibrated against the current Fall 2026 Class 8 guide, Mueller LectureNotes.tex probability coverage, Spring 2026 Problem Set 3, and selected private historical assessment material. Every setting, value, claim, prompt, and task below is newly authored for this practice; no legacy exercise or protected assessment wording is reproduced. -->

## Purpose and recommended route

This module turns random mechanisms into probability models. You will move from a Class 7 assignment mechanism to a sample space, use event algebra, test probability assignments for coherence, count equally likely outcomes, construct an empirical finite model from `wage1`, and audit a simulation without confusing repetition with evidence about a broader population.

The recommended route is Problems 1–6 and should take exactly 42–55 minutes under the stage ranges below. Begin Problems 1–5 without AI, statistical software, answer checks, or worked solutions; an ordinary calculator is fine. Problem 6 supplies a complete non-AI audit route and an optional AI comparison, then ends with a fresh transfer that you should complete unaided. Optional execution of the existing Class 8 script, the external AI comparison, answer-check study, and worked-solution study are outside the estimate.

| Stage | Suggested time | Work |
|---|---:|---|
| Recover the random mechanism | 6–8 minutes | Problem 1 |
| Operate on events | 6–8 minutes | Problem 2 |
| Audit probability coherence | 7–9 minutes | Problem 3 |
| Count equally likely outcomes | 6–8 minutes | Problem 4 |
| Build the empirical finite model | 8–10 minutes | Problem 5 |
| Audit simulation and transfer | 9–12 minutes | Problem 6 |

## What you must be able to do independently

After completing this practice, you should be able to:

- identify the random mechanism before assigning probabilities and distinguish random assignment from random sampling;
- define a sample space and events, translate between set notation and words, and compute complements, intersections, unions, and event differences;
- state and use the probability axioms and derived complement and addition rules;
- detect an incoherent probability assignment even when every displayed number lies between zero and one;
- justify equal likelihood from a mechanism, count a finite sample space without double-counting, and calculate event probabilities from counts;
- construct and check a two-event table from event counts, including the intersection, union, neither event, and exactly one event;
- distinguish a finite-model probability from an empirical frequency and from a claim about a broader population;
- explain why simulation approximates an exact model probability but does not repair a poor model or create causal evidence; and
- audit a probability argument by checking the mechanism, event definitions, arithmetic, assumptions, interpretation, and scope.

Programming syntax and software commands are not independent exam targets. The probability model, essential calculations, event reasoning, verification, and interpretation are.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. From a randomized design to possible outcomes](#problem-1) | Spiral from Class 7 design language to a finite sample space and events. | Unaided mechanism audit |
| [2. Translate and combine events](#problem-2) | Use complements, intersections, unions, differences, De Morgan's rule, and a partition. | Unaided set work |
| [3. Find and repair an incoherent assignment](#problem-3) | Apply the axioms and derived rules to probabilities that cannot all be true. | Unaided probability audit |
| [4. Count a finite equally likely model](#problem-4) | Justify equal likelihood and calculate probabilities by counting unordered pairs. | Unaided calculation |
| [5. Construct the `wage1` event table](#problem-5) | Reconstruct exhaustive cells and interpret exact finite-model probabilities. | Unaided table and interpretation |
| [6. Audit simulation, then transfer](#problem-6) | Compare exact and simulated values, audit an argument, and finish with a new unaided calculation. | Non-AI audit; optional AI comparison; final unaided transfer |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. From a randomized design to possible outcomes

**Class-guide connection:** [Class 7 Section 2: What random assignment accomplishes](../../07-randomized-experiments-observational-studies-and-causal-effects/#2-what-random-assignment-accomplishes), [Class 7 Section 3: Completely randomized, block, and matched-pair designs](../../07-randomized-experiments-observational-studies-and-causal-effects/#3-completely-randomized-block-and-matched-pair-designs), and [Class 8 Section 1: From a design to possible outcomes](../#1-from-a-design-to-possible-outcomes)

Five job centers, labeled $A$ through $E$, will evaluate a scheduling tool. Centers $A,B,C$ form one prespecified region block and centers $D,E$ form another. The chance mechanism selects exactly one center from each block, declares the six cross-block treatment pairs equally likely, and assigns all other centers to continue with the existing system. The outcome will be each center's average client waiting time during the next month.

1. Identify the experimental units, treatment, outcome, and random-assignment mechanism. Explain why this is a block-randomized experiment rather than a random sample of job centers.
2. Write the sample space $\Omega$ as two-letter assignments, with the selected center from the first block listed first. Determine its size and explain why its outcomes are equally likely under the stated mechanism.
3. Let $J_A$ be the event that center $A$ receives the tool and let $J_E$ be the event that center $E$ receives it. List $J_A$, $J_E$, $J_A\cap J_E$, and $J_A\cup J_E$.
4. Calculate $\mathbb P(J_A)$, $\mathbb P(J_E)$, $\mathbb P(J_A\cap J_E)$, $\mathbb P(J_A\cup J_E)$, and the probability that neither $A$ nor $E$ receives the tool.
5. State what the random assignment can support about effects for these five centers and what the design alone cannot support about job centers outside the experiment.

<!-- Source lineage: Newly authored two-block job-center experiment and values. It spirals from the current Class 7 guide into the Class 8 probability language and does not adapt a legacy problem or assessment. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Translate and combine events

**Class-guide connection:** [Section 2: Sample spaces and event algebra](../#2-sample-spaces-and-event-algebra)

For a finite teaching model, let

$$
\Omega=\lbrace a,b,c,d,e,f,g,h\rbrace,
$$

with events

$$
A=\lbrace a,c,d,g\rbrace
\qquad\text{and}\qquad
B=\lbrace b,c,g,h\rbrace.
$$

1. List $A^c$, $B^c$, $A\cap B$, $A\cup B$, $A\setminus B$, and $B\setminus A$.
2. Describe in words what $A\setminus B$ and $(A\cup B)^c$ mean. Your description should work for any two substantive events, not only these labels.
3. Verify De Morgan's rule $(A\cup B)^c=A^c\cap B^c$ by calculating both sides.
4. Let $C=\lbrace e,f\rbrace$. Determine whether each pair among $A$, $B$, and $C$ is disjoint.
5. Show that the four events $A\cap B$, $A\setminus B$, $B\setminus A$, and $C$ form a partition of $\Omega$: they must be pairwise disjoint and their union must be the whole sample space.

<!-- Source lineage: Newly authored eight-outcome set system designed to make De Morgan's rule, event differences, disjointness, and a partition visible without importing any inherited exercise. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Find and repair an incoherent assignment

**Class-guide connection:** [Section 3: The probability axioms](../#3-the-probability-axioms) and [Section 4: Rules derived from the axioms](../#4-rules-derived-from-the-axioms)

An analyst reports the following four probabilities for two events $A$ and $B$:

$$
\mathbb P(A)=0.58,
\qquad
\mathbb P(B)=0.47,
\qquad
\mathbb P(A\cap B)=0.19,
\qquad
\mathbb P((A\cup B)^c)=0.16.
$$

1. State the three probability axioms. Then use the addition rule and complement rule to show that these four claims cannot all be true.
2. Using the first three probabilities, calculate the implied probabilities of the four exhaustive cells $A\cap B$, $A\cap B^c$, $A^c\cap B$, and $A^c\cap B^c$. Check nonnegativity and that the cells sum to one.
3. If only the reported probability of neither event may be changed, give the repaired value.
4. If instead only $\mathbb P(A\cap B)$ may be changed while the other three reported values are held fixed, give the repaired intersection probability and verify all four event cells again.
5. Explain why checking only that every reported number lies between zero and one is not enough to establish a coherent probability model. Name the axiom or derived rules doing the additional work here.

<!-- Source lineage: Newly authored incoherent probability assignment. The values and two distinct repairs were selected to emphasize joint coherence rather than to reproduce a legacy or protected question. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Count a finite equally likely model

**Class-guide connection:** [Section 1: From a design to possible outcomes](../#1-from-a-design-to-possible-outcomes) and [Section 4: Rules derived from the axioms](../#4-rules-derived-from-the-axioms)

A procurement team uses a fair random mechanism to select exactly two of five suppliers, labeled $1,2,3,4,5$, for a documentation audit. The mechanism makes every unordered pair equally likely.

1. List all outcomes in $\Omega$, determine its size, and explain why order must not create two copies of the same selected pair.
2. Let $S$ be the event that supplier 1 is selected. Let $G$ be the event that at least one of suppliers 4 and 5 is selected. List the outcomes in $S$, $G$, and $S\cap G$.
3. Calculate $\mathbb P(S)$, $\mathbb P(G)$, and $\mathbb P(S\cap G)$ by counting outcomes.
4. Calculate $\mathbb P(S\cup G)$ in two ways: directly from the sample space and with the addition rule.
5. Calculate the probability of neither $S$ nor $G$ and the probability of exactly one of $S$ and $G$. Use the exhaustive event cells to check that your probabilities sum to one.
6. Explain why the phrase “fair random mechanism” matters. The labels $1$ through $5$ alone do not make the ten pairs equally likely.

<!-- Source lineage: Newly authored supplier-audit mechanism and events. It practices finite equally likely counting with an unordered-pair model that is distinct from the Class 8 guide example and all reviewed legacy wording. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Construct the `wage1` event table

**Class-guide connection:** [Section 5: A finite probability model from real data](../#5-a-finite-probability-model-from-real-data) and [Section 6: Model probabilities, frequencies, and simulation](../#6-model-probabilities-frequencies-and-simulation)

The Class 8 materials use the historical `wage1` data, which contain 526 worker records from a 1976 Current Population Survey extract. For the course-created finite model, one of the 526 rows is selected uniformly at random. Define

$$
E=\lbrace\text{education is at least 12 years}\rbrace
\qquad\text{and}\qquad
H=\lbrace\text{hourly wage is at least 6 dollars}\rbrace.
$$

The verified counts are $n(E)=410$, $n(H)=197$, and $n(E\cap H)=183$.

1. Reconstruct the full two-by-two table of counts for $E\cap H$, $E\cap H^c$, $E^c\cap H$, and $E^c\cap H^c$, including all margins and the total.
2. Calculate $\mathbb P(E)$, $\mathbb P(H)$, and $\mathbb P(E\cap H)$ under uniform row selection.
3. Calculate $\mathbb P(E\cup H)$ from the table and again with the addition rule. Then calculate the probability of neither event with the complement rule.
4. Calculate the probability that exactly one of $E$ and $H$ occurs. Identify its two disjoint cells before adding.
5. Interpret your exactly-one fraction once as an empirical fraction in these records and once as a probability under the course-created row-selection model. Explain why neither interpretation establishes that education causes higher wages or that the same fraction holds for current workers.
6. Explain which calculations would change if rows were selected with unequal probabilities and why the raw cell fractions would no longer be the model probabilities.

You may inspect the verified [Class 8 data provenance](../data/README.md), but no code is needed for this problem.

<!-- Source lineage: Original event-table practice using the current Class 8 wage1 variables, thresholds, and independently verified counts. It adds a new exactly-one target and interpretation contrast without copying an inherited exercise. -->

[Back to the problem map](#problem-map)

<a id="problem-6"></a>

### Problem 6. Audit simulation, then transfer

**Class-guide connection:** [Section 6: Model probabilities, frequencies, and simulation](../#6-model-probabilities-frequencies-and-simulation), [Section 7: Audit a probability argument](../#7-audit-a-probability-argument), and [Section 8: Practice, common mistakes, and recap](../#8-practice-common-mistakes-and-recap)

The reproducible [Class 8 script](../class-08-probability-models.R) makes 20,000 uniform selections with replacement from the same 526-row finite model. With seed `202608`, it reports the following four exhaustive-cell probabilities or relative frequencies. Class 9 will supply the formal language for the relationship among repeated selections.

| Cell | Exact | Simulated |
|---|---:|---:|
| $E\cap H$ | 0.3479087 | 0.3469500 |
| $E\cap H^c$ | 0.4315589 | 0.4356500 |
| $E^c\cap H$ | 0.0266160 | 0.0270000 |
| $E^c\cap H^c$ | 0.1939163 | 0.1904000 |

1. Before doing arithmetic, state what should agree approximately, what the underlying exhaustive cells must satisfy exactly, and why the simulated and exact columns need not match digit for digit.
2. Add the four displayed values in each column. Explain why the rounded exact column totals 0.9999999 even though its underlying exact fractions sum to one, then recover the simulated relative frequencies of $E$, $H$, $E\cap H$, $E\cup H$, and neither event from the four simulated cells.
3. Calculate the simulated union in two ways and compare it with the exact value $424/526$. Report the difference in probability units and percentage points.
4. Inspect the [reproducible Class 8 figure](../figures/wage-event-probability-check.png), then audit this report:

> The simulation gives $\mathbb P(E\cup H)=0.8096$, so the exact value 0.8061 and the addition rule are only approximations. The 20,000 selections are a new sample of 20,000 workers, making the result more representative than the original data. The fixed seed proves that the simulation is valid, and the large education-and-wage overlap shows that education causes higher wages.

5. Rewrite the report in no more than four sentences. Your revision must distinguish an exact finite-model probability from Monte Carlo error, repeated row selections from new observations, reproducibility from model validity, and association from causation.

**Complete non-AI route:** Check the four exhaustive cells first; derive every simulated event frequency by addition or complement; calculate the same simulated union by two formulas; compare like with like; read the script description to identify what was randomly selected; read the data provenance to identify the source and historical scope; and ask whether the exercise contains any treatment assignment or causal identification argument.

**Optional AI comparison outside the recommended time:** Only after completing your audit, you may give an AI system the table, mechanism description, and flawed report above—do not upload the dataset or unrelated files—and use this prompt:

```text
Audit this probability-and-simulation report claim by claim. Recalculate all
event probabilities from the four exhaustive cells. Separate exact finite-model
probabilities from Monte Carlo relative frequencies, repeated row selections
from new observations, reproducibility from model validity, and association
from causation. Do not invent facts about the data source. For every correction,
state a verification that can be completed from the supplied table, mechanism,
or public provenance description.
```

Record one correction the system made accurately and one claim you had to reject, refine, or verify yourself.

**Final unaided transfer:** Close any AI system, script output, figure, answer check, and worked solution. For two new events $C$ and $D$, suppose

$$
\mathbb P(C)=0.57,
\qquad
\mathbb P(D)=0.46,
\qquad
\mathbb P(C\cap D)=0.24.
$$

Calculate $\mathbb P(C\cup D)$, the probability of neither event, and the probability of exactly one event. Reconstruct all four exhaustive-cell probabilities and verify that they are nonnegative and sum to one.

<!-- Source lineage: Original simulation audit built from independently reproduced output of the current Class 8 script and its course-created wage1 finite model. The flawed report, optional prompt, and final event transfer are newly authored and do not reproduce the Class 8 live AI interaction or any inherited exercise. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the recommended route. They confirm targets and main conclusions, not the reasoning that an exam answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

$\Omega=\lbrace AD,AE,BD,BE,CD,CE\rbrace$. The event sizes for $J_A$, $J_E$, their intersection, and their union are 2, 3, 1, and 4, so the corresponding probabilities are $1/3$, $1/2$, $1/6$, and $2/3$; neither has probability $1/3$. Random assignment supports a causal comparison for the experimental units under the design and implementation, but it does not create random sampling from outside job centers.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

$A^c=\lbrace b,e,f,h\rbrace$, $B^c=\lbrace a,d,e,f\rbrace$, $A\cap B=\lbrace c,g\rbrace$, $A\cup B=\lbrace a,b,c,d,g,h\rbrace$, $A\setminus B=\lbrace a,d\rbrace$, and $B\setminus A=\lbrace b,h\rbrace$. Both $(A\cup B)^c$ and $A^c\cap B^c$ equal $\lbrace e,f\rbrace=C$. Events $A$ and $B$ are not disjoint, while each is disjoint from $C$; the four listed cells partition $\Omega$.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

The first three claims imply $\mathbb P(A\cup B)=0.86$ and hence probability 0.14 for neither, not 0.16. Their implied cells are 0.19, 0.39, 0.28, and 0.14. Holding the first three numbers fixes neither at 0.14; holding the two margins and neither at 0.16 fixes the intersection at 0.21.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

There are ten equally likely unordered pairs. The event sizes for $S$, $G$, and $S\cap G$ are 4, 7, and 2, so their probabilities are 0.4, 0.7, and 0.2. The union has probability 0.9, neither has probability 0.1, and exactly one has probability 0.7.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

The four cells $E\cap H$, $E\cap H^c$, $E^c\cap H$, and $E^c\cap H^c$ contain 183, 227, 14, and 102 rows. The union is $424/526\approx0.8061$, neither is $102/526\approx0.1939$, and exactly one is $241/526\approx0.4582$. The probability interpretation depends on uniform row selection; the empirical table alone is neither a current-population claim nor causal evidence.

</details>

<details>
<summary>Reveal the compact check for Problem 6</summary>

The simulated cells sum to one and imply $0.7826$ for $E$, $0.37395$ for $H$, $0.34695$ for their intersection, $0.8096$ for their union, and $0.1904$ for neither. The simulated union exceeds the exact union by about 0.0035163, or 0.35163 percentage points; this is Monte Carlo variation, not failure of an exact rule. For the transfer, union is 0.79, neither is 0.21, exactly one is 0.55, and the four cells are 0.24, 0.33, 0.22, and 0.21.

</details>

## Worked solutions

After making a genuine attempt and using the compact checks, study the [complete worked solutions](solutions/). Each solution includes the setup, calculation, interpretation, verification, limitation, and a nearby transfer to attempt before revealing its check.

## Personal practice record

Record this privately after you finish; nothing is submitted.

- Problems completed before opening checks or solutions:
- One event operation or probability rule I can now explain without notes:
- One calculation or interpretation I still need to redo unaided:
- One distinction I will preserve—assignment versus sampling, exact versus simulated, empirical versus model, or association versus causation:
- If I used AI, one output I verified independently and how:
- My next concrete practice step and date:

[Return to the problem map](#problem-map) · [Class 8 guide](../) · [Practice index](../../PRACTICE.md)
