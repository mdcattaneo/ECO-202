# Class 9: Conditional Probability, Independence, and Bayes' Rule

**Date:** Wednesday, October 7, 2026  
**Status:** Complete first version  
**Last updated:** August 30, 2026

[← Class 8](../08-probability-rules-and-probability-models/) · [Practice 9](practice/) · [Course syllabus](../../ECO202-Fall2026-Syllabus.pdf) · **Next meeting:** In-Class Exam 2

**Class-folder workflow:** Use this guide for preparation, class, and review; run adjacent files when directed; then complete [ungraded practice](practice/) before studying the [worked solutions](practice/solutions/).

<!-- Source lineage: Scope is calibrated against Econ202-UlrichMueller/LectureNotes.tex, lines 1200--1336; Spring 2026 PS3; selected private first-midterm calibration material; and Moore, McCabe, and Craig, Chapter 4. The birth-weight table is newly organized from the documented course-distributed bwght CSV. The quality-alert example, explanations, prompts, and practice are newly authored; no protected exercise or reserved exam question is reproduced. -->

## Central question

How should probabilities change after new information—and why does reversing the direction of conditioning so often produce a wrong conclusion?

## Learning goals

By the end of class, you should be able to:

1. construct and interpret a joint table with joint and marginal probabilities;
2. calculate conditional probabilities with the conditioning population visible;
3. distinguish $\mathbb P(A\mid B)$ from $\mathbb P(B\mid A)$;
4. determine whether two events are independent and distinguish independence from disjointness;
5. use multiplication, total probability, a probability tree, and Bayes' rule; and
6. audit a base-rate calculation without turning an empirical association into a causal claim.

<a id="lecture-map"></a>

## In-class route

| Stop | Live focus | Mode |
|---|---|---|
| **C9.1** | [One table, several probability questions](#c9-stop-1) | Board work 1 + data demonstration |
| **C9.2** | [Conditioning changes the denominator](#c9-stop-2) | Calculation + Checkpoint 1 |
| **C9.3** | [Independence is a testable model property](#c9-stop-3) | Board work 2 + distinction audit |
| **C9.4** | [Multiplication and total probability](#c9-stop-4) | Tree reasoning + verification |
| **C9.5** | [Bayes' rule keeps the base rate](#c9-stop-5) | Board work 3 + Checkpoint 2 |
| **C9.6** | [Audit the inverse fallacy](#c9-stop-6) | AI interaction 1 + Exam 2 synthesis |

## How to use this guide

**Prepare:** Review intersections, complements, unions, and the general addition rule from Class 8. Explain in words why “the fraction of low-birth-weight records that report smoking” and “the fraction of smoking records that have low birth weight” use different denominators.

**In class:** Begin every problem with a table, tree, or explicit conditioning population. Predict the rough answer before using a formula or software.

**Review:** Reconstruct the birth-weight table and the quality-alert example from blank counts. Then explain independence using both a product and a conditional-probability statement.

**Practice:** Complete the short checks near the end, then use [Practice 9](practice/) for the 42–55 minute sustained core and separate 25–35 minute Exam 2 checkpoint.

**Prerequisites:** Class 8 event notation and probability rules; fractions, proportions, and two-way tables.

## Full guide map

1. [One table, several probability questions](#1-one-table-several-probability-questions)
2. [Conditioning changes the denominator](#2-conditioning-changes-the-denominator)
3. [Independence is a testable model property](#3-independence-is-a-testable-model-property)
4. [Multiplication and total probability](#4-multiplication-and-total-probability)
5. [Bayes' rule keeps the base rate](#5-bayes-rule-keeps-the-base-rate)
6. [Audit the inverse fallacy](#6-audit-the-inverse-fallacy)
7. [Practice and answer checks](#7-practice-and-answer-checks)
8. [Common core, optional paths, and recap](#8-common-core-optional-paths-and-recap)

<a id="c9-stop-1"></a>

## 1. One table, several probability questions

The probability experiment in this section is: select one of the 1,388 rows in the historical `bwght` course file uniformly at random. This creates exact probabilities for the fixed file. It does not turn the extract into the current U.S. population or supply a causal design.

Let $S$ be the event that the selected record has positive reported cigarettes per day, and let $L$ be the event that recorded birth weight is below 88 ounces. The threshold deliberately reuses the empirical cutoff examined in Class 3; the dataset does not contain a separate low-birth-weight indicator.

> [!IMPORTANT]
> **Board work 1 — Build the joint table before calculating**
>
> Use the four joint counts below to complete row totals, column totals, and the grand total. Then identify the count for each of $S\cap L$, $S^c\cap L$, $S$, $L$, and $S\cup L$.

| Reported cigarettes | Not low ($L^c$) | Low ($L$) | Total |
|---|---:|---:|---:|
| Zero ($S^c$) | 1,113 | 63 | 1,176 |
| Positive ($S$) | 192 | 20 | 212 |
| **Total** | **1,305** | **83** | **1,388** |

A **joint probability** concerns an intersection such as $\mathbb P(S\cap L)=20/1388$. A **marginal probability** is found from a row or column total, such as

$$
\mathbb P(S)=\frac{212}{1388}\approx0.1527,
\qquad
\mathbb P(L)=\frac{83}{1388}\approx0.0598.
$$

All four interior cells are disjoint and exhaustive, so their counts sum to 1,388 and their probabilities sum to one. This is a structural check before any interpretation.

The simple, line-by-line commented script [`class-09-conditional-probability.R`](class-09-conditional-probability.R) reconstructs the table from [`data/bwght.csv`](data/bwght.csv). The [data notes](data/README.md) document the historical source and license.

<a id="c9-stop-2"></a>

## 2. Conditioning changes the denominator

For events $A$ and $B$ with $\mathbb P(B)>0$,

$$
\mathbb P(A\mid B)=\frac{\mathbb P(A\cap B)}{\mathbb P(B)}.
$$

Conditioning on $B$ changes the relevant universe from the full sample space to the outcomes inside $B$. The event after the vertical bar determines the denominator.

For the birth records,

$$
\mathbb P(L\mid S)=\frac{20}{212}\approx0.0943,
$$

whereas

$$
\mathbb P(S\mid L)=\frac{20}{83}\approx0.2410.
$$

The numerator is 20 in both calculations, but the conditioning populations differ. About 9.43% of positive-reported-cigarette records have low recorded birth weight, while about 24.10% of low-birth-weight records have positive reported cigarettes. Neither statement is a causal effect.

### Checkpoint 1

Without calculating again, name the denominator for each expression: $\mathbb P(S^c\mid L)$, $\mathbb P(L^c\mid S)$, and $\mathbb P(S\mid L^c)$. Which table cell supplies each numerator?

Within any conditioning event $B$ with positive probability, the ordinary probability rules still apply. In particular,

$$
\mathbb P(A^c\mid B)=1-\mathbb P(A\mid B).
$$

Here $\mathbb P(L^c\mid S)=192/212=1-20/212\approx0.9057$.

<a id="c9-stop-3"></a>

## 3. Independence is a testable model property

Events $A$ and $B$ are independent when

$$
\mathbb P(A\cap B)=\mathbb P(A)\mathbb P(B).
$$

When the relevant marginal probabilities are positive, equivalent statements include $\mathbb P(A\mid B)=\mathbb P(A)$ and $\mathbb P(B\mid A)=\mathbb P(B)$. Independence means that learning one event does not change the modeled probability of the other.

> [!IMPORTANT]
> **Board work 2 — Check independence two ways**
>
> 1. Compare $\mathbb P(L\mid S)=20/212$ with $\mathbb P(L)=83/1388$.
> 2. Compare $\mathbb P(S\cap L)=20/1388$ with $\mathbb P(S)\mathbb P(L)=(212/1388)(83/1388)$.
> 3. State the same conclusion in words without using causal language.
> 4. Explain why $S$ and $S^c$ are disjoint but not independent.

The conditional low-birth-weight proportion among positive-reported-cigarette records is approximately 0.0943, which differs from the full-file proportion 0.0598. Equivalently,

$$
\mathbb P(S\cap L)\approx0.0144
\ne
\mathbb P(S)\mathbb P(L)\approx0.0091.
$$

Thus $S$ and $L$ are not independent under the uniform-row probability model. The file contains an association between the recorded events; it does not establish how birth weight would change under a smoking intervention.

Independence and disjointness answer different questions. Disjoint positive-probability events cannot occur together, so their intersection has probability zero while the product of their probabilities is positive; they are therefore not independent.

If $A$ and $B$ are independent, then $A^c$ and $B$ are independent because

$$
\mathbb P(A^c\cap B)
=\mathbb P(B)-\mathbb P(A\cap B)
=\mathbb P(B)-\mathbb P(A)\mathbb P(B)
=\mathbb P(A^c)\mathbb P(B).
$$

This short derivation is part of understanding the probability rules; longer formal proofs remain optional depth.

<a id="c9-stop-4"></a>

## 4. Multiplication and total probability

Rearranging the conditional-probability definition gives the multiplication rule

$$
\mathbb P(A\cap B)=\mathbb P(A\mid B)\mathbb P(B).
$$

If $B$ and $B^c$ partition the sample space, then the total-probability rule is

$$
\mathbb P(A)=\mathbb P(A\mid B)\mathbb P(B)+\mathbb P(A\mid B^c)\mathbb P(B^c).
$$

A probability tree makes the branch probabilities visible: multiply along one path to obtain a joint probability, then add across disjoint paths leading to the same event.

For low birth weight, partitioning on reported cigarette consumption gives

$$
\mathbb P(L)
=\mathbb P(L\mid S)\mathbb P(S)+\mathbb P(L\mid S^c)\mathbb P(S^c)
=\frac{20}{212}\frac{212}{1388}
+\frac{63}{1176}\frac{1176}{1388}
=\frac{83}{1388}.
$$

The cancellations reveal the table counts: the two low-birth-weight paths contribute 20 and 63 records. Total probability does not require $S$ and $L$ to be independent; it uses the correct conditional probability on each branch.

**Verify:** Branch probabilities leaving one node must sum to one, joint probabilities at terminal nodes must be nonnegative, and all terminal probabilities must sum to one.

<a id="c9-stop-5"></a>

## 5. Bayes' rule keeps the base rate

Bayes' rule reverses the direction of conditioning while retaining the prevalence of the underlying groups:

$$
\mathbb P(B\mid A)
=\frac{\mathbb P(A\mid B)\mathbb P(B)}
{\mathbb P(A\mid B)\mathbb P(B)+\mathbb P(A\mid B^c)\mathbb P(B^c)}.
$$

Consider a newly authored quality-control setting. Among 10,000 items, 1% are defective. An automated alert appears for 90% of defective items and 4% of nondefective items.

> [!IMPORTANT]
> **Board work 3 — Update with natural frequencies**
>
> 1. Convert the 1% base rate into defective and nondefective counts out of 10,000.
> 2. Calculate true alerts and false alerts.
> 3. Find the probability that an alerted item is defective.
> 4. Verify the result with Bayes' rule.
> 5. Explain why 90% is not the requested answer.

The natural-frequency table is

| Item state | No alert | Alert | Total |
|---|---:|---:|---:|
| Nondefective | 9,504 | 396 | 9,900 |
| Defective | 10 | 90 | 100 |
| **Total** | **9,514** | **486** | **10,000** |

Therefore,

$$
\mathbb P(\mathrm{defective}\mid\mathrm{alert})
=\frac{90}{486}
\approx0.1852.
$$

The sensitivity 0.90 describes $\mathbb P(\mathrm{alert}\mid\mathrm{defective})$. It is not the posterior probability $\mathbb P(\mathrm{defective}\mid\mathrm{alert})$. Because nondefective items are much more common, even a 4% false-positive rate generates 396 false alerts.

### Checkpoint 2

Before calculating, predict what happens to $\mathbb P(\mathrm{defective}\mid\mathrm{alert})$ if sensitivity and the false-positive rate stay fixed but the defect base rate rises. Which cells in the natural-frequency table change?

<a id="c9-stop-6"></a>

## 6. Audit the inverse fallacy

An AI system or analyst can execute correct arithmetic while answering the wrong conditional question. The durable audit is to label the base rate, conditioning event, numerator, denominator, and requested direction before trusting a decimal.

First assess this proposed solution yourself:

> “The alert detects 90% of defects, so an alerted item has a 90% probability of being defective. The 1% base rate can be ignored because we already observed an alert. Since 0.90 is greater than 0.04, the events alert and defect are independent enough for the conclusion.”

> [!TIP]
> **AI interaction 1 — Find the first unsupported probability step**
>
> After your own audit, ask an AI system to reconstruct the calculation. Check whether it uses the correct denominator, preserves the base rate, separates sensitivity from the posterior, and rejects the independence claim.

```text
A quality-control system evaluates 10,000 items. One percent are defective.
The system alerts on 90 percent of defective items and 4 percent of
nondefective items. An analyst writes: "An alerted item is defective with
90 percent probability. The base rate is irrelevant after an alert, and the
events are independent enough because 90 percent exceeds 4 percent."

Audit the proposed solution. Start with a complete natural-frequency table,
then verify the result with Bayes' rule. Label the base rate, sensitivity,
false-positive rate, requested conditional probability, numerator, and
denominator. Identify the first unsupported step and do not invent new data.
```

**Complete non-AI route:** Use the same proposed solution. Write the four cells of the 10,000-item table, total the alert column, calculate $90/486$, compare it with 0.90, and test independence by comparing $\mathbb P(\mathrm{alert}\mid\mathrm{defective})$ with $\mathbb P(\mathrm{alert})$. Then rewrite the conclusion in one sentence.

The first unsupported step is the reversal of conditioning: the sensitivity is substituted for the posterior. The later independence language is also wrong because the alert probability changes sharply between defective and nondefective items.

For Exam 2 preparation, connect the complete module:

> Population and selection → assignment and causal design → sample space and events → probability rules → conditioning and updating → interpretation and limitations

## 7. Practice and answer checks

The short checks below support immediate review. The separate [Practice 9 module](practice/) provides a staged Class 9 core, an additional cumulative Exam 2 checkpoint across Classes 6–9, compact checks, and complete worked solutions for study after an attempt.

### Practice A — Reverse the conditioning direction

Using the birth-weight table, calculate $\mathbb P(S^c\mid L)$ and $\mathbb P(L\mid S^c)$. Explain why the two probabilities answer different questions.

**Answer check:** $\mathbb P(S^c\mid L)=63/83\approx0.7590$ and $\mathbb P(L\mid S^c)=63/1176\approx0.0536$.

### Practice B — Complete a tree

Suppose $\mathbb P(B)=0.30$, $\mathbb P(A\mid B)=0.60$, and $\mathbb P(A\mid B^c)=0.20$. Calculate $\mathbb P(A)$ and $\mathbb P(B\mid A)$.

**Answer check:** $\mathbb P(A)=0.60(0.30)+0.20(0.70)=0.32$, and $\mathbb P(B\mid A)=0.18/0.32=0.5625$.

### Practice C — Check a consequence of independence

Assume $\mathbb P(A)=0.40$, $\mathbb P(B)=0.25$, and $A$ and $B$ are independent. Find $\mathbb P(A\cap B)$, $\mathbb P(A^c\cap B)$, and $\mathbb P(A\cup B)$.

**Answer check:** The probabilities are 0.10, 0.15, and $0.40+0.25-0.10=0.55$.

## 8. Common core, optional paths, and recap

**Common core:** Joint and marginal probabilities; conditional probability and visible denominators; forward versus reverse conditionals; independence and its conditional equivalents when defined; disjointness versus independence; multiplication and total probability; trees; Bayes' rule; base rates; natural frequencies; short consequences of the probability rules; and noncausal interpretation of empirical event relationships.

**Explore further:** Odds and likelihood ratios; pairwise versus mutual independence; longer axiom-based proofs; conditional probability over larger partitions; exact diagnostic-test design; and links from conditioning to the conditional expectations in Class 17.

Common mistakes to avoid:

- reversing $\mathbb P(A\mid B)$ and $\mathbb P(B\mid A)$;
- dividing by the full sample when the question conditions on a subgroup;
- treating disjoint events as independent;
- using marginal rather than conditional branch probabilities;
- omitting the base rate from Bayes' rule;
- confusing specificity with the false-positive rate; and
- turning a conditional association into a causal effect.

The durable workflow is:

> Define the experiment → name the events → display the table or tree → expose the conditioning denominator → calculate → verify totals and direction → interpret within scope

## References

- Moore, McCabe, and Craig, *Introduction to the Practice of Statistics*, 10th ed., Chapter 4.
- Diez, Çetinkaya-Rundel, and Barr, *OpenIntro Statistics*, 4th ed., sections on conditional probability, independence, and Bayes' rule.
- Wooldridge, *Introductory Econometrics: A Modern Approach*, 7th ed.; [`bwght` data and provenance notes](data/README.md).
