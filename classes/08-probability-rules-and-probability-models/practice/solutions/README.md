# ECO 202 Practice 8: Probability Rules and Probability Models — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 8: Probability Rules and Probability Models](../)  
**Class guide:** [Class 8: Probability Rules and Probability Models](../../)

[← Return to Practice 8](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt a problem and inspect its compact answer check before reading the corresponding solution. Compare your mechanism, event definitions, setup, arithmetic, interpretation, and scope—not only your final number.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Practice 8 module. All wage1 values and seeded simulation results were independently checked against the current Class 8 script, local CSV, reproducible figure, and provenance record. Inherited materials calibrated scope and difficulty only; no protected exercise, wording, or reserved assessment solution is reproduced. -->

## How to study a solution

For each problem, locate the first step at which your approach differed from the solution. Close the page, reproduce that step without looking, and then attempt the nearby transfer before revealing its check.

## Solution map

1. [From a randomized design to possible outcomes](#solution-1)
2. [Translate and combine events](#solution-2)
3. [Find and repair an incoherent assignment](#solution-3)
4. [Count a finite equally likely model](#solution-4)
5. [Construct the wage1 event table](#solution-5)
6. [Audit simulation, then transfer](#solution-6)

<a id="solution-1"></a>

## Solution 1. From a randomized design to possible outcomes

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [Class 7 random assignment](../../../07-randomized-experiments-observational-studies-and-causal-effects/#2-what-random-assignment-accomplishes), [Class 7 block designs](../../../07-randomized-experiments-observational-studies-and-causal-effects/#3-completely-randomized-block-and-matched-pair-designs), and [Class 8 possible outcomes](../../#1-from-a-design-to-possible-outcomes)

### Question, data, and strategy

The mechanism, not the center labels, creates the probabilities. First identify what is randomized and within which blocks; then list one selected center from each block and translate events into subsets of that list.

### Complete solution

The experimental units are the five job centers. The treatment is access to the scheduling tool rather than the existing system, and the measured outcome is a center's average client waiting time in the next month. The mechanism randomly selects one of $A,B,C$ and separately one of $D,E$, so assignment is randomized within prespecified blocks.

This is not a random sample of job centers from a larger population. All five centers were placed in the experiment before assignment, and the random device decides treatment status rather than which outside centers enter the study.

The sample space is

$$
\Omega=\lbrace AD,AE,BD,BE,CD,CE\rbrace.
$$

The mechanism gives each of the six listed cross-block pairs the same probability,

$$
\frac{1}{6}.
$$

Counting pairs then shows that each first-block center appears in two of the six outcomes and has probability $2/6=1/3$, while each second-block center appears in three and has probability $3/6=1/2$. Class 9 will formalize when product calculations may be justified through statistical independence; none is needed for this explicitly uniform six-outcome model.

The events are

$$
J_A=\lbrace AD,AE\rbrace,
\qquad
J_E=\lbrace AE,BE,CE\rbrace,
$$

$$
J_A\cap J_E=\lbrace AE\rbrace,
\qquad
J_A\cup J_E=\lbrace AD,AE,BE,CE\rbrace.
$$

Counting equally likely outcomes gives

$$
\mathbb P(J_A)=\frac{2}{6}=\frac{1}{3},
\qquad
\mathbb P(J_E)=\frac{3}{6}=\frac{1}{2},
$$

$$
\mathbb P(J_A\cap J_E)=\frac{1}{6},
\qquad
\mathbb P(J_A\cup J_E)=\frac{4}{6}=\frac{2}{3}.
$$

Neither $A$ nor $E$ is selected in outcomes $BD$ and $CD$, so

$$
\mathbb P((J_A\cup J_E)^c)=\frac{2}{6}=\frac{1}{3}.
$$

The same result follows from the complement rule: $1-2/3=1/3$.

Averaging across the possible random assignments makes the treated and untreated centers comparable under this design, supporting a causal comparison for the participating centers if treatment is implemented and outcomes are measured as intended. It does not make these centers representative of outside job centers, so generalization needs substantive or sampling justification beyond the assignment mechanism.

### Verification and limitation

The six outcome probabilities sum to one, the addition rule gives $1/3+1/2-1/6=2/3$, and the union plus its complement sums to one. Blocking changes the assignment probabilities and comparisons; it does not supply random sampling.

### Nearby transfer

Keep the first block $A,B,C$ but let the second block be $D,E,F$. The mechanism declares the nine cross-block pairs equally likely. How many outcomes are in $\Omega$? Find the probabilities that $A$ is selected, that $F$ is selected, that at least one of them is selected, and that neither is selected.

<details>
<summary>Reveal the transfer check</summary>

There are $3\times3=9$ equally likely outcomes. The probabilities are $1/3$, $1/3$, $1/3+1/3-1/9=5/9$, and $1-5/9=4/9$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Translate and combine events

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Sample spaces and event algebra](../../#2-sample-spaces-and-event-algebra)

### Question, data, and strategy

For every operation, ask what an outcome must satisfy. A complement means “not,” an intersection means “both,” a union means “at least one,” and $A\setminus B$ means “$A$ but not $B$.”

### Complete solution

Starting from

$$
\Omega=\lbrace a,b,c,d,e,f,g,h\rbrace,
$$

the complements are

$$
A^c=\lbrace b,e,f,h\rbrace
\qquad\text{and}\qquad
B^c=\lbrace a,d,e,f\rbrace.
$$

The outcomes common to both events and the outcomes in at least one event are

$$
A\cap B=\lbrace c,g\rbrace,
$$

$$
A\cup B=\lbrace a,b,c,d,g,h\rbrace.
$$

The event differences are

$$
A\setminus B=\lbrace a,d\rbrace
\qquad\text{and}\qquad
B\setminus A=\lbrace b,h\rbrace.
$$

In words, $A\setminus B$ is the event that $A$ occurs and $B$ does not. The event $(A\cup B)^c$ means that neither $A$ nor $B$ occurs.

Directly complementing the union gives

$$
(A\cup B)^c=\lbrace e,f\rbrace.
$$

Intersecting the complements gives the same set:

$$
\begin{aligned}
A^c\cap B^c
&=\lbrace b,e,f,h\rbrace\cap\lbrace a,d,e,f\rbrace\\
&=\lbrace e,f\rbrace.
\end{aligned}
$$

This verifies De Morgan's rule in the stated sample space.

Because $A\cap B=\lbrace c,g\rbrace$ is not empty, $A$ and $B$ are not disjoint. Because $C=\lbrace e,f\rbrace$ shares no outcome with either $A$ or $B$, the pairs $(A,C)$ and $(B,C)$ are disjoint.

Finally, the four cells are

$$
A\cap B=\lbrace c,g\rbrace,
\quad
A\setminus B=\lbrace a,d\rbrace,
\quad
B\setminus A=\lbrace b,h\rbrace,
\quad
C=\lbrace e,f\rbrace.
$$

No outcome appears in two of these cells, and together they contain $a,b,c,d,e,f,g,h$. They are therefore pairwise disjoint and exhaustive, so they form a partition of $\Omega$.

### Verification and limitation

Assign each of the eight outcomes to exactly one row labeled “both,” “$A$ only,” “$B$ only,” or “neither.” If an outcome is absent or repeated, the proposed partition is not exhaustive or not disjoint.

### Nearby transfer

Let $\Omega^\star=\lbrace1,2,3,4,5,6\rbrace$, $R=\lbrace1,2,5\rbrace$, and $T=\lbrace2,4,5\rbrace$. List the event that exactly one of $R$ and $T$ occurs and the event that neither occurs.

<details>
<summary>Reveal the transfer check</summary>

$R\cap T=\lbrace2,5\rbrace$, so exactly one is $(R\setminus T)\cup(T\setminus R)=\lbrace1,4\rbrace$. The union is $\lbrace1,2,4,5\rbrace$, so neither is $\lbrace3,6\rbrace$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Find and repair an incoherent assignment

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [The probability axioms](../../#3-the-probability-axioms) and [rules derived from the axioms](../../#4-rules-derived-from-the-axioms)

### Question, data, and strategy

Probabilities for overlapping events must agree with one another, not merely lie in the interval from zero to one. Translate the reports into the four disjoint cells and check that those cells are nonnegative and sum to one.

### Complete solution

The probability axioms are nonnegativity, $\mathbb P(A)\geq0$ for every event $A$; normalization, $\mathbb P(\Omega)=1$; and countable additivity, meaning that for pairwise disjoint events $A_1,A_2,\ldots$,

$$
\mathbb P\left(\bigcup_j A_j\right)=\sum_j\mathbb P(A_j).
$$

The first three reported values imply, by the addition rule,

$$
\begin{aligned}
\mathbb P(A\cup B)
&=\mathbb P(A)+\mathbb P(B)-\mathbb P(A\cap B)\\
&=0.58+0.47-0.19\\
&=0.86.
\end{aligned}
$$

The complement rule then requires

$$
\mathbb P((A\cup B)^c)=1-0.86=0.14.
$$

The reported value 0.16 conflicts with 0.14, so the four claims cannot all describe one probability model.

Using the first three claims, the four exhaustive cells are

$$
\mathbb P(A\cap B)=0.19,
$$

$$
\mathbb P(A\cap B^c)=\mathbb P(A)-\mathbb P(A\cap B)=0.58-0.19=0.39,
$$

$$
\mathbb P(A^c\cap B)=\mathbb P(B)-\mathbb P(A\cap B)=0.47-0.19=0.28,
$$

$$
\mathbb P(A^c\cap B^c)=1-(0.19+0.39+0.28)=0.14.
$$

Every cell is nonnegative, and

$$
0.19+0.39+0.28+0.14=1.
$$

If only the neither-event report may change, its repaired value must therefore be 0.14.

If neither must instead remain 0.16, then the union must be $1-0.16=0.84$. Holding the two marginal probabilities fixed, the addition rule requires

$$
\mathbb P(A\cap B)=0.58+0.47-0.84=0.21.
$$

The repaired four cells are

$$
0.21,\quad 0.58-0.21=0.37,\quad 0.47-0.21=0.26,\quad 0.16.
$$

They are nonnegative and sum to

$$
0.21+0.37+0.26+0.16=1.
$$

Bounds of zero and one are necessary but not sufficient because separate reports must also satisfy normalization and additivity across disjoint cells. Here the complement and addition rules—both consequences of the axioms—expose the conflict.

### Verification and limitation

There is no unique repair until one specifies which reported quantity is allowed to change. Repairing neither gives 0.14, while repairing only the intersection gives 0.21; both coherent models preserve different subsets of the original reports.

### Nearby transfer

Suppose $\mathbb P(R)=0.52$, $\mathbb P(T)=0.44$, $\mathbb P(R\cap T)=0.18$, and an analyst reports probability 0.20 for neither. Is the report coherent? Repair only the probability of neither; then, as a separate repair, hold both margins and neither fixed and change only the intersection.

<details>
<summary>Reveal the transfer check</summary>

The first three values give union $0.52+0.44-0.18=0.78$, so neither must be 0.22. If neither stays 0.20, the union is 0.80 and the repaired intersection is $0.52+0.44-0.80=0.16$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Count a finite equally likely model

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [From a design to possible outcomes](../../#1-from-a-design-to-possible-outcomes) and [rules derived from the axioms](../../#4-rules-derived-from-the-axioms)

### Question, data, and strategy

The outcome is an unordered selected pair. List each pair once, use the stated mechanism to justify probability $1/10$ per pair, and then calculate event probabilities by counting members.

### Complete solution

The sample space is

$$
\Omega=
\lbrace
12,13,14,15,23,24,25,34,35,45
\rbrace.
$$

For example, $12$ and $21$ describe the same selected suppliers and must not be counted twice. The mechanism explicitly makes the ten unordered pairs equally likely, so each has probability $1/10$.

The events are

$$
S=\lbrace12,13,14,15\rbrace,
$$

$$
G=\lbrace14,15,24,25,34,35,45\rbrace,
$$

$$
S\cap G=\lbrace14,15\rbrace.
$$

Therefore

$$
\mathbb P(S)=\frac{4}{10}=0.4,
\qquad
\mathbb P(G)=\frac{7}{10}=0.7,
\qquad
\mathbb P(S\cap G)=\frac{2}{10}=0.2.
$$

Directly, the union contains every outcome except $23$, so

$$
\mathbb P(S\cup G)=\frac{9}{10}=0.9.
$$

The addition rule gives the same result:

$$
\mathbb P(S\cup G)=0.4+0.7-0.2=0.9.
$$

Neither event occurs only for $23$, so its probability is $1/10=0.1$. Exactly one event occurs in the disjoint cells

$$
S\cap G^c=\lbrace12,13\rbrace
$$

and

$$
S^c\cap G=\lbrace24,25,34,35,45\rbrace.
$$

Thus

$$
\mathbb P(\text{exactly one})=\frac{2+5}{10}=\frac{7}{10}=0.7.
$$

The four exhaustive-cell probabilities are 0.2 for both, 0.2 for $S$ only, 0.5 for $G$ only, and 0.1 for neither; they sum to one.

The equal-probability calculation follows from the declared selection mechanism. Merely naming five suppliers would not rule out a process that favors some pairs, and under unequal pair probabilities the event probabilities would require summing the assigned probabilities rather than dividing event counts by ten.

### Verification and limitation

The complement count for $G$ is also useful: the pairs with neither 4 nor 5 are $12,13,23$, so $\mathbb P(G)=1-3/10=7/10$. Two independent routes to 0.7 check the event list.

### Nearby transfer

Suppose exactly two of six suppliers are selected with every unordered pair equally likely. Define $S^\star$ as supplier 1 being selected and $G^\star$ as at least one of suppliers 5 and 6 being selected. Find the probabilities of $S^\star$, $G^\star$, both, their union, neither, and exactly one.

<details>
<summary>Reveal the transfer check</summary>

There are 15 pairs. The event counts for $S^\star$, $G^\star$, and both are 5, 9, and 2. Their probabilities are $1/3$, $3/5$, and $2/15$; the union is $12/15=4/5$, neither is $3/15=1/5$, and exactly one is $(5-2+9-2)/15=10/15=2/3$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Construct the wage1 event table

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [A finite probability model from real data](../../#5-a-finite-probability-model-from-real-data) and [model probabilities, frequencies, and simulation](../../#6-model-probabilities-frequencies-and-simulation)

### Question, data, and strategy

Treat the intersection as the first known cell. Subtract it from each event margin to obtain the two “only” cells, then subtract the resulting union from 526 to obtain neither. Only after the count table is coherent should you divide by 526.

### Complete solution

Because 183 rows are in both events, the education-only count is

$$
n(E\cap H^c)=n(E)-n(E\cap H)=410-183=227.
$$

The high-wage-only count is

$$
n(E^c\cap H)=n(H)-n(E\cap H)=197-183=14.
$$

The union contains

$$
n(E\cup H)=410+197-183=424
$$

rows, so neither contains

$$
n(E^c\cap H^c)=526-424=102
$$

rows. The complete table is

|  | $H$ | $H^c$ | Total |
|---|---:|---:|---:|
| $E$ | 183 | 227 | 410 |
| $E^c$ | 14 | 102 | 116 |
| Total | 197 | 329 | 526 |

Under uniform row selection,

$$
\mathbb P(E)=\frac{410}{526}\approx0.7794677,
$$

$$
\mathbb P(H)=\frac{197}{526}\approx0.3745247,
$$

$$
\mathbb P(E\cap H)=\frac{183}{526}\approx0.3479087.
$$

Reading from the table,

$$
\mathbb P(E\cup H)=\frac{424}{526}\approx0.8060837.
$$

The addition rule verifies the numerator:

$$
\begin{aligned}
\mathbb P(E)+\mathbb P(H)-\mathbb P(E\cap H)
&=\frac{410+197-183}{526}\\
&=\frac{424}{526}.
\end{aligned}
$$

The complement rule gives

$$
\begin{aligned}
\mathbb P((E\cup H)^c)
&=1-\frac{424}{526}\\
&=\frac{102}{526}\\
&\approx0.1939163.
\end{aligned}
$$

Exactly one event consists of the two disjoint cells $E\cap H^c$ and $E^c\cap H$. Therefore

$$
\begin{aligned}
\mathbb P(\text{exactly one})
&=\frac{227+14}{526}\\
&=\frac{241}{526}\\
&\approx0.4581749.
\end{aligned}
$$

As an empirical fraction, $241/526$ says that 241 of the 526 historical worker records meet exactly one of the two thresholds. As a finite-model probability, it says that a row selected uniformly from these 526 rows has probability $241/526$ of meeting exactly one threshold.

Neither statement shows that education causes wages: the table is observational and contains no treatment assignment or identification argument. Nor does it establish the same fraction for current workers; the records come from a historical 1976 CPS extract, and the course-created uniform row selection is not the original survey design.

With unequal row-selection probabilities, event probabilities would be sums of the row probabilities in each event. The raw fractions $n(E)/526$, $n(H)/526$, and so on would remain descriptions of this file, but they would not generally equal probabilities under the unequal-selection model.

### Verification and limitation

Both row margins, both column margins, and the total agree. The four cells sum to 526, and dividing them by 526 yields nonnegative probabilities that sum to one. These checks establish internal arithmetic coherence, not population representativeness or causality.

### Nearby transfer

In another finite file with 500 equally likely rows, suppose $n(E)=300$, $n(H)=240$, and $n(E\cap H)=150$. Construct the four cells and calculate the probabilities of the union, neither, and exactly one.

<details>
<summary>Reveal the transfer check</summary>

The four cells are 150 for both, 150 for $E$ only, 90 for $H$ only, and 110 for neither. The union probability is $390/500=0.78$, neither is $110/500=0.22$, and exactly one is $240/500=0.48$.

</details>

[Return to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Audit simulation, then transfer

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connection:** [Model probabilities, frequencies, and simulation](../../#6-model-probabilities-frequencies-and-simulation), [audit a probability argument](../../#7-audit-a-probability-argument), and [practice, common mistakes, and recap](../../#8-practice-common-mistakes-and-recap)

### Question, data, and strategy

Keep three layers separate: the exact probabilities defined by uniform selection from 526 rows, the relative frequencies generated by 20,000 repeated selections from that model, and claims about workers beyond the file. Exhaustive cells provide the quickest arithmetic audit because every derived event is a sum of cells.

### Complete solution

Within each column, the four exhaustive cells must sum to one apart from displayed rounding. Across columns, simulated relative frequencies should be near the corresponding exact probabilities when the number of repetitions is large, but chance variation means exact digit-for-digit agreement is not required.

The exact column sums to

$$
0.3479087+0.4315589+0.0266160+0.1939163=0.9999999,
$$

where the one-unit difference in the seventh decimal place is display rounding. The unrounded exact cell fractions sum to one. The simulated column sums exactly at the displayed precision:

$$
0.34695+0.43565+0.02700+0.19040=1.
$$

The simulated event frequencies are

$$
\widehat p_{\mathrm{sim}}(E)=0.34695+0.43565=0.78260,
$$

$$
\widehat p_{\mathrm{sim}}(H)=0.34695+0.02700=0.37395,
$$

$$
\widehat p_{\mathrm{sim}}(E\cap H)=0.34695,
$$

$$
\widehat p_{\mathrm{sim}}((E\cup H)^c)=0.19040.
$$

Using the complement,

$$
\widehat p_{\mathrm{sim}}(E\cup H)=1-0.19040=0.80960.
$$

Using the addition rule gives the identical simulated result:

$$
0.78260+0.37395-0.34695=0.80960.
$$

The exact union probability is

$$
\frac{424}{526}=0.8060836502\ldots.
$$

The simulated-minus-exact difference is therefore

$$
0.80960-\frac{424}{526}=0.0035163498\ldots,
$$

or about 0.351635 percentage points. This small difference is Monte Carlo variation from a finite number of simulated selections. It does not make the addition rule approximate: that rule holds exactly within both the exact model and the realized simulation table.

The report fails at four boundaries. First, 0.8061 is the exact value under the declared finite model, while 0.8096 is an estimate obtained from repeated simulated draws. Second, the simulation resamples row numbers from the existing file with replacement; it does not observe 20,000 new workers or improve representativeness. Third, fixing a seed makes the computation reproducible but cannot establish that the row-selection model is substantively appropriate. Fourth, overlap between education and wage events is descriptive association, not evidence that education causes wages.

A four-sentence revision is:

> Under uniform selection from the 526 historical rows, the exact union probability is $424/526\approx0.8061$, while the seeded 20,000-draw simulation produced a relative frequency of 0.8096; the difference is Monte Carlo variation, and the addition rule remains exact. The simulation repeatedly selects from the existing rows with replacement and therefore creates no new worker observations or additional population representativeness. The seed makes the numerical result reproducible, but validity depends on whether the declared finite model is appropriate for the question. The education-and-wage overlap describes these variables in the historical file and does not identify a causal effect.

For the final transfer,

$$
\begin{aligned}
\mathbb P(C\cup D)
&=0.57+0.46-0.24\\
&=0.79.
\end{aligned}
$$

Neither event has probability

$$
1-0.79=0.21.
$$

The two “only” cells are

$$
\mathbb P(C\cap D^c)=0.57-0.24=0.33
$$

and

$$
\mathbb P(C^c\cap D)=0.46-0.24=0.22.
$$

Thus exactly one has probability

$$
0.33+0.22=0.55.
$$

The four exhaustive cells are 0.24, 0.33, 0.22, and 0.21. They are all nonnegative and sum to

$$
0.24+0.33+0.22+0.21=1.
$$

### Verification and limitation

The figure's cumulative paths fluctuate and settle near the exact horizontal references, while the cell bars remain close but not identical. This visually supports the Monte Carlo interpretation. It does not verify the historical data source, the original CPS design, generalization to current workers, or a causal effect.

### Nearby transfer

For events $R$ and $T$, suppose $\mathbb P(R)=0.63$, $\mathbb P(T)=0.41$, and $\mathbb P(R\cap T)=0.29$. Without looking back at the formulas, reconstruct all four exhaustive cells and calculate the union, neither, and exactly one.

<details>
<summary>Reveal the transfer check</summary>

The four cells are 0.29 for both, $0.63-0.29=0.34$ for $R$ only, $0.41-0.29=0.12$ for $T$ only, and $1-(0.29+0.34+0.12)=0.25$ for neither. The union is 0.75 and exactly one is $0.34+0.12=0.46$.

</details>

[Return to the solution map](#solution-map)

## Final study check

Close this page and explain, without notes, why each distinction matters: random assignment versus random sampling; an outcome versus an event; disjoint events versus events that may still affect one another's chances; exact model probability versus simulated relative frequency; empirical fraction versus population claim; association versus causation. Class 9 supplies the formal definition of independence. Then redo the final transfer in [Problem 6](../#problem-6) from a blank page.

[Return to Practice 8](../) · [Class 8 guide](../../) · [Practice index](../../../PRACTICE.md)
