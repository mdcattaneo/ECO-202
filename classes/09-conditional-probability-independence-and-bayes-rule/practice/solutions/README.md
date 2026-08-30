# ECO 202 Practice 9: Conditional Probability, Independence, and Bayes' Rule — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 9: Conditional Probability, Independence, and Bayes' Rule](../)  
**Class guide:** [Class 9](../../)

[← Return to Practice 9](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Read a solution only after a genuine attempt and its compact check. Then close the file and reconstruct the table, denominator, and interpretation before attempting the nearby transfer.

<!-- Source lineage: Complete solutions for the newly authored Fall 2026 Practice 9 package. All calculations were independently reconstructed from the public problem inputs and current Classes 6--9 examples. No protected solution or reserved exam answer is reproduced. -->

## Solution map

| Solution | Main idea |
|---|---|
| [1. From events to a complete table](#solution-1) | Event algebra, exact fixed-file probabilities, and scope |
| [2. Forward and reverse conditionals in `bwght`](#solution-2) | Visible denominators, total probability, and independence |
| [3. Independence and complements](#solution-3) | Product calculations and a short derivation |
| [4. Audit a base-rate claim](#solution-4) | Natural frequencies, Bayes, and changing priors |
| [5. Transfer without assistance](#solution-5) | Complete screening workflow |
| [6. Cumulative checkpoint for In-Class Exam 2](#solution-6) | Design and probability synthesis across Classes 6–9 |

<a id="solution-1"></a>

## Solution 1. From events to a complete table

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connections:** [Class 8: Sample spaces and event algebra](../../../08-probability-rules-and-probability-models/#2-sample-spaces-and-event-algebra), [Class 8: Rules derived from the axioms](../../../08-probability-rules-and-probability-models/#4-rules-derived-from-the-axioms), and [Class 9: One table, several probability questions](../../#1-one-table-several-probability-questions)

### Question and strategy

The random mechanism selects one of the 200 fixed-file rows uniformly. Therefore each row is an elementary outcome with probability $1/200$, and any event probability is its row count divided by 200.

### Complete solution

The required probabilities are

$$
\mathbb P(R)=\frac{80}{200}=0.40,
\qquad
\mathbb P(D)=\frac{120}{200}=0.60,
$$

$$
\mathbb P(R\cap D)=\frac{54}{200}=0.27,
$$

and

$$
\mathbb P(R\cup D)
=\mathbb P(R)+\mathbb P(D)-\mathbb P(R\cap D)
=0.40+0.60-0.27
=0.73.
$$

The event $R^c\cap D^c$ is the onsite, no-degree cell, so

$$
\mathbb P(R^c\cap D^c)=\frac{54}{200}=0.27.
$$

The complement rule checks because $\mathbb P(R^c)=120/200=0.60=1-\mathbb P(R)$. The union calculation can also be checked by adding the three disjoint cells inside the union: $54+26+66=146$, and $146/200=0.73$.

Remote and onsite are complements, hence disjoint. Remote and degree overlap in 54 records, so they are not disjoint.

These values are exact probabilities for uniform selection from this fixed file. They do not establish the corresponding proportions for the firm's current or future workforce, because no population sampling or update mechanism was supplied.

### Verification and limitations

The four interior counts sum to 200, and $\mathbb P(R\cup D)+\mathbb P(R^c\cap D^c)=1$. The file experiment is a probability model; external generalization remains a separate design question.

### Nearby transfer

Before opening the check, calculate $\mathbb P(D\mid R)$ and $\mathbb P(R\mid D)$. Explain why they use the same joint count but different denominators.

<details>
<summary>Reveal the transfer check</summary>

$\mathbb P(D\mid R)=54/80=0.675$, while $\mathbb P(R\mid D)=54/120=0.45$. The first conditions on the 80 remote records; the second conditions on the 120 degree records.

</details>

[Back to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Forward and reverse conditionals in `bwght`

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connections:** [Conditioning changes the denominator](../../#2-conditioning-changes-the-denominator) and [Independence is a testable model property](../../#3-independence-is-a-testable-model-property)

### Question and strategy

First identify marginals from totals and the joint event from its cell. Then restrict the denominator to the event after the conditioning bar. Check independence by comparing either a conditional with its marginal or the joint with the product of marginals.

### Complete solution

The marginal and joint probabilities are

$$
\mathbb P(S)=\frac{212}{1388}\approx0.1527,
\qquad
\mathbb P(L)=\frac{83}{1388}\approx0.0598,
$$

and

$$
\mathbb P(S\cap L)=\frac{20}{1388}\approx0.0144.
$$

Conditioning on positive reported cigarettes gives denominator 212:

$$
\mathbb P(L\mid S)=\frac{20}{212}\approx0.0943.
$$

Conditioning on low birth weight gives denominator 83:

$$
\mathbb P(S\mid L)=\frac{20}{83}\approx0.2410.
$$

Thus approximately 9.43% of positive-reported-cigarette records have low recorded birth weight, while approximately 24.10% of low-birth-weight records report positive cigarettes. Both statements concern this historical file under uniform row selection.

The zero-reported-cigarette conditional is

$$
\mathbb P(L\mid S^c)=\frac{63}{1176}\approx0.0536.
$$

Total probability reconstructs the marginal:

$$
\mathbb P(L)=\frac{20}{212}\frac{212}{1388}+\frac{63}{1176}\frac{1176}{1388}=\frac{83}{1388}.
$$

The conditional check rejects independence because

$$
\mathbb P(L\mid S)\approx0.0943\ne0.0598\approx \mathbb P(L).
$$

The product check gives the same conclusion:

$$
\mathbb P(S\cap L)\approx0.0144
\ne
\mathbb P(S)\mathbb P(L)\approx0.0091.
$$

This is an association between recorded events. It does not compare the same birth under two smoking interventions and therefore does not identify a causal effect.

### Verification and limitations

The two total-probability branches correspond exactly to the 20 and 63 low-birth-weight records. The [Class 9 script](../../class-09-conditional-probability.R) reproduces the counts and probabilities, but execution does not create population or causal validity.

### Nearby transfer

Before opening the check, calculate $\mathbb P(S^c\mid L)$ and $\mathbb P(L^c\mid S)$ and verify each by a complement rule.

<details>
<summary>Reveal the transfer check</summary>

$\mathbb P(S^c\mid L)=63/83\approx0.7590=1-20/83$, and $\mathbb P(L^c\mid S)=192/212\approx0.9057=1-20/212$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Independence and complements

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Independence is a testable model property](../../#3-independence-is-a-testable-model-property)

### Question and strategy

Independence supplies the intersection. The remaining cells follow from disjoint partitions of $A$, $A^c$, $B$, and $B^c$.

### Complete solution

Because $A$ and $B$ are independent,

$$
\mathbb P(A\cap B)=\mathbb P(A)\mathbb P(B)=0.40(0.30)=0.12.
$$

Since $B=(A\cap B)\cup(A^c\cap B)$ is a disjoint union,

$$
\mathbb P(A^c\cap B)
=\mathbb P(B)-\mathbb P(A\cap B)
=0.30-0.12
=0.18.
$$

Algebraically,

$$
\mathbb P(B)-\mathbb P(A)\mathbb P(B)
=[1-\mathbb P(A)]\mathbb P(B)
=\mathbb P(A^c)\mathbb P(B),
$$

so $A^c$ and $B$ are independent.

The complete joint table is

| | $B$ | $B^c$ | Total |
|---|---:|---:|---:|
| $A$ | 0.12 | 0.28 | 0.40 |
| $A^c$ | 0.18 | 0.42 | 0.60 |
| **Total** | **0.30** | **0.70** | **1.00** |

Therefore,

$$
\mathbb P(A\cup B)=0.40+0.30-0.12=0.58,
$$

$$
\mathbb P(A^c\mid B)=\frac{0.18}{0.30}=0.60,
\qquad
\mathbb P(B\mid A^c)=\frac{0.18}{0.60}=0.30.
$$

Disjoint positive-probability events have intersection zero, while the product of their marginals is positive. They therefore fail, rather than satisfy, the product definition of independence.

### Verification and limitations

All four cells are nonnegative and sum to one; row and column totals match the supplied marginals. The derivation uses independence as an assumption rather than inferring it from labels.

### Nearby transfer

Before opening the check, suppose $\mathbb P(C)=0.25$, $\mathbb P(D)=0.60$, and $C$ and $D$ are independent. Find $\mathbb P(C^c\cap D)$ and $\mathbb P(C\cup D)$.

<details>
<summary>Reveal the transfer check</summary>

$\mathbb P(C^c\cap D)=0.75(0.60)=0.45$, and $\mathbb P(C\cup D)=0.25+0.60-0.25(0.60)=0.70$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Audit a base-rate claim

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connections:** [Multiplication and total probability](../../#4-multiplication-and-total-probability), [Bayes' rule keeps the base rate](../../#5-bayes-rule-keeps-the-base-rate), and [Audit the inverse fallacy](../../#6-audit-the-inverse-fallacy)

### Question and strategy

Sensitivity and the false-positive rate are conditional probabilities. Changing the base rate changes the branch sizes and therefore the composition of the alert column.

### Complete solution

Five percent of 10,000 gives 500 defective and 9,500 nondefective items. Ninety percent sensitivity gives 450 true alerts, while a 4% false-positive rate gives 380 false alerts.

| Item state | No alert | Alert | Total |
|---|---:|---:|---:|
| Nondefective | 9,120 | 380 | 9,500 |
| Defective | 50 | 450 | 500 |
| **Total** | **9,170** | **830** | **10,000** |

Thus

$$
\mathbb P(\mathrm{alert})=\frac{830}{10000}=0.083
$$

and

$$
\mathbb P(\mathrm{defective}\mid\mathrm{alert})=\frac{450}{830}\approx0.5422.
$$

The total-probability calculation is

$$
\mathbb P(\mathrm{alert})=0.90(0.05)+0.04(0.95)=0.083.
$$

Bayes' rule then gives

$$
\mathbb P(\mathrm{defective}\mid\mathrm{alert})
=\frac{0.90(0.05)}{0.90(0.05)+0.04(0.95)}
=\frac{0.045}{0.083}
\approx0.5422.
$$

The first unsupported step is assuming that unchanged sensitivity and false-positive rates imply an unchanged posterior. The posterior also depends on the base rate, which determines how many items enter each branch.

Alert and defect are not independent because $\mathbb P(\mathrm{alert}\mid\mathrm{defective})=0.90$, while $\mathbb P(\mathrm{alert})=0.083$ and $\mathbb P(\mathrm{alert}\mid\mathrm{nondefective})=0.04$.

### Verification and limitations

Every row and column total checks, and the count and formula routes agree. The teaching mechanism assesses conditional reasoning; it does not validate a real quality-control system.

### Nearby transfer

Before opening the check, raise the defect base rate to 10% while keeping sensitivity at 90% and the false-positive rate at 4%. Calculate the posterior after an alert.

<details>
<summary>Reveal the transfer check</summary>

Out of 10,000, there are 900 true alerts and 360 false alerts. The posterior is $900/(900+360)=900/1260\approx0.7143$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Transfer without assistance

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Bayes' rule keeps the base rate](../../#5-bayes-rule-keeps-the-base-rate)

### Question and strategy

Let $R$ be benchmark readiness and $G$ a positive signal. Convert every percentage to a count before reversing the conditional direction.

### Complete solution

Ten percent of 2,000 gives 200 ready and 1,800 not-ready applications. The signal is positive for $0.80(200)=160$ ready applications and $0.20(1800)=360$ not-ready applications.

| Readiness | Negative signal ($G^c$) | Positive signal ($G$) | Total |
|---|---:|---:|---:|
| Not ready ($R^c$) | 1,440 | 360 | 1,800 |
| Ready ($R$) | 40 | 160 | 200 |
| **Total** | **1,480** | **520** | **2,000** |

Total probability gives

$$
\mathbb P(G)=\mathbb P(G\mid R)\mathbb P(R)+\mathbb P(G\mid R^c)\mathbb P(R^c)
=0.80(0.10)+0.20(0.90)
=0.26.
$$

From the table,

$$
\mathbb P(R\mid G)=\frac{160}{520}\approx0.3077.
$$

Bayes' rule agrees:

$$
\mathbb P(R\mid G)=\frac{0.80(0.10)}{0.80(0.10)+0.20(0.90)}=\frac{0.08}{0.26}\approx0.3077.
$$

Readiness and the signal are not independent because $\mathbb P(G\mid R)=0.80\ne0.26=\mathbb P(G)$. Sensitivity describes the positive-signal rate among ready applications; the posterior describes readiness among positive signals.

The arithmetic does not establish that the benchmark measures a substantively appropriate construct, that the signal is fair or useful, or that scholarship decisions should follow it. Those questions require evidence and policy judgment beyond the probability model.

If the false-positive rate falls while sensitivity and the base rate stay fixed, fewer not-ready applications enter the positive-signal column, so $\mathbb P(R\mid G)$ rises.

### Verification and limitations

All counts sum correctly, and both calculation routes give the same posterior. The setup is a teaching model, not an empirical finding about actual scholarship applications.

### Nearby transfer

Before opening the check, reduce the false-positive rate to 5% while keeping the other inputs fixed. Calculate the new posterior.

<details>
<summary>Reveal the transfer check</summary>

There are still 160 true positives, but false positives fall to $0.05(1800)=90$. The posterior becomes $160/(160+90)=0.64$.

</details>

[Back to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Cumulative checkpoint for In-Class Exam 2

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connections:** [Class 6](../../../06-populations-samples-surveys-and-selection-bias/), [Class 7](../../../07-randomized-experiments-observational-studies-and-causal-effects/), [Class 8](../../../08-probability-rules-and-probability-models/), and [Class 9](../../)

### A. Class 6 — Population scope and selection

The 2,400 voluntary respondents are the sample. The headline claims all university students as the target population. The observed sample proportion 0.62 is the statistic; the population support proportion is the parameter.

Voluntary response can overrepresent students with unusually strong opinions. Undercoverage can arise if some students do not encounter or cannot access the poll. Wording, repeated participation, or differential willingness to answer can also distort the measurement. A direction requires a mechanism: for example, if opponents are more motivated to respond, 0.62 could underestimate support.

Increasing the number of observations can reduce random fluctuation within the responding mechanism. It does not convert self-selection into probability sampling or eliminate systematic response bias.

### B. Class 7 — Assignment, sampling, and causal scope

Random assignment supports a causal comparison of assignment to the implemented study-support condition among the recruited volunteers, subject to correct execution and measurement. It does not make the volunteers a random sample of a larger target population.

Remaining threats can include attrition, noncompliance, spillovers, treatment-version differences, outcome measurement, or limited external validity. Random assignment addresses treatment-group comparability at baseline on average; it does not solve every study problem.

### C. Class 8 — Event rules

The general addition rule gives

$$
\mathbb P(A\cup B)=0.55+0.35-0.20=0.70.
$$

Therefore,

$$
\mathbb P(A^c\cap B^c)=1-\mathbb P(A\cup B)=0.30.
$$

The events are not disjoint because $\mathbb P(A\cap B)=0.20>0$. They are not independent because

$$
\mathbb P(A)\mathbb P(B)=0.55(0.35)=0.1925\ne0.20.
$$

Disjointness asks whether events can occur together; independence asks whether learning one changes the probability of the other.

### D. Class 9 — Conditioning and Bayes

The 2% base rate gives 20 condition and 980 noncondition cases. Sensitivity 85% produces 17 true signals. A 10% false-positive rate produces 98 false signals.

| Condition status | No signal | Signal | Total |
|---|---:|---:|---:|
| No condition | 882 | 98 | 980 |
| Condition | 3 | 17 | 20 |
| **Total** | **885** | **115** | **1,000** |

Thus

$$
\mathbb P(\mathrm{condition}\mid\mathrm{signal})=\frac{17}{115}\approx0.1478.
$$

The 85% sensitivity is $\mathbb P(\mathrm{signal}\mid\mathrm{condition})$, the reverse direction. The low 2% base rate leaves many more noncondition cases in which false signals can occur.

### Verification and limitations

Every numerical result follows from the supplied mechanism, and every table sums to its stated total. Complete Exam 2 reasoning also requires the population or sample scope, design, assumptions, and noncausal boundaries attached to those numbers.

### Nearby transfer

Close this file and explain the following chain using one sentence per link: sample selection → treatment assignment → sample space → event rules → conditioning → interpretation.

<details>
<summary>Reveal the transfer criteria</summary>

A complete chain distinguishes who enters a study from what treatment they receive; defines the random mechanism and its possible outcomes; represents substantive questions as events; uses coherent probability rules; updates within the correct conditioning population; and limits the final claim to the population, design, and evidence actually supplied.

</details>

[Back to the solution map](#solution-map)
