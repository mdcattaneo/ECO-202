# ECO 202 Practice 3: Density Curves, Normal Distributions, and Standardization

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 3: Density Curves, Normal Distributions, and Standardization](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 3 and before Class 4

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Use it to identify which transformations, areas, Normal calculations, and model judgments you can complete and explain independently.

<!-- Source lineage: Scope calibrated against Econ202-UlrichMueller/LectureNotes.tex, lines 339--523, Spring 2026 PS1--PS2, selected private first-midterm material, and the official textbook's early distribution-model coverage. All settings, values, wording, and task organization below are newly authored for the Fall 2026 Class 3 guide; no legacy exercise or protected text is reproduced. -->

## Purpose and recommended route

This module moves from the descriptive summaries of Class 2 to probability models. You will track units through linear transformations, use standardization to compare relative positions, calculate probabilities as areas, work in both directions with a Normal model, and decide whether a model is adequate for the question being asked.

The recommended route is Problems 1–6 and should take about 40–55 minutes. Begin Problems 1–4 and 6 without AI, statistical software, answer checks, or worked solutions. You may use an ordinary calculator for arithmetic in this ungraded practice; this does not change the syllabus rules for fully unaided exams. Problem 5 includes a complete non-AI audit; its optional external AI comparison and any optional execution of the existing Class 3 script take additional time beyond the estimate.

| Stage | Suggested time | Work |
|---|---:|---|
| Retrieve and transform | 8–10 minutes | Problem 1 |
| Standardize and compare | 5–7 minutes | Problem 2 |
| Calculate areas | 5–7 minutes | Problem 3 |
| Use the Normal model | 8–11 minutes | Problem 4 |
| Audit the empirical approximation | 7–9 minutes | Problem 5 |
| Finish unaided | 7–11 minutes | Problem 6 |

## What you must be able to do independently

After completing this practice, you should be able to:

- calculate how a linear transformation changes center, spread, units, order, and shape;
- calculate and interpret a sample or model z-score, reverse a z-score to the original scale, and explain why positive unit changes leave standardized position unchanged;
- recognize a valid density curve and compute probabilities as areas, including interval probabilities and the zero probability of a single point under a continuous model;
- interpret the parameters in $X\sim\mathsf{N}(\mu,\sigma^2)$ and distinguish standard deviation from variance;
- standardize Normal cutoffs, calculate lower-tail, upper-tail, and interval probabilities, and reverse a probability to obtain a quantile;
- compare empirical frequencies with model probabilities and use histograms and Normal quantile plots to diagnose an approximation;
- explain why agreement at one cutoff does not validate a model everywhere and why an unusual record requires investigation rather than automatic deletion; and
- write a model-based conclusion whose units, source, historical scope, approximation status, and causal limitations are clear.

Memorized Normal-table entries, programming syntax, and software commands are not independent exam targets. The statistical setup, essential calculations, interpretation, and model diagnosis are.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Transform a distribution and preserve its units](#problem-1) | Spiral back to Class 2 summaries, then transform center, spread, order, and shape. | Unaided calculation |
| [2. Compare standardized positions](#problem-2) | Calculate, interpret, and reverse sample z-scores. | Unaided calculation |
| [3. Read probability from a density](#problem-3) | Validate a density and calculate probabilities as areas. | Sketch and area |
| [4. Work in both directions with a Normal model](#problem-4) | Calculate tail and interval probabilities and a quantile. | Unaided model calculation |
| [5. Audit the birth-weight approximation](#problem-5) | Compare empirical and fitted results and diagnose a model claim. | Non-AI audit; optional AI comparison |
| [6. Transfer without assistance](#problem-6) | Carry a fitted model through a new unit and interpret its quantile. | Final unaided transfer |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Transform a distribution and preserve its units

**Class-guide connection:** [Section 1: Linear transformations and units](../#1-linear-transformations-and-units) and [Class 2 Section 3: Center, position, and spread](../../02-descriptive-statistics-and-data-visualization/#3-center-position-and-spread)

Five households in a newly constructed teaching example have weekly grocery spending, in dollars,

$$
40,\ 50,\ 60,\ 70,\ 130.
$$

Use the median-of-halves convention for quartiles.

1. Calculate the mean, median, $Q_1$, $Q_3$, $\mathrm{IQR}$, and sample standard deviation of $X$.
2. Define $Y=X/10$, so spending is measured in tens of dollars. Calculate the same summaries for $Y$, state their units, and describe what happens to the distribution's shape.
3. Define $R=150-X$, the number of dollars remaining from a hypothetical 150-dollar budget. Calculate the mean, median, $Q_1$, $Q_3$, $\mathrm{IQR}$, and sample standard deviation of $R$.
4. Explain why the negative multiplier in $R=150-X$ reverses order and left/right shape while leaving the numerical values of the $\mathrm{IQR}$ and standard deviation unchanged.

<!-- Source lineage: Newly authored five-household setting and values. The problem deliberately spirals back to Class 2 summaries before applying the Class 3 transformation rules; it does not adapt a legacy exercise. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Compare standardized positions

**Class-guide connection:** [Section 2: Standardization and comparable position](../#2-standardization-and-comparable-position)

Two historical occupational groups have the following sample summaries for annual earnings, measured in thousands of dollars:

| Group | Sample mean | Sample standard deviation | One worker's earnings |
|---|---:|---:|---:|
| A | 60 | 8 | 72 |
| B | 75 | 10 | 90 |

1. Calculate the sample z-score of the listed worker in each group.
2. One worker earns more in raw dollars. Who has the higher standardized position within the corresponding group? Explain the difference between the two comparisons.
3. In Group A, what earnings correspond to $z=-0.75$? Reverse the standardization and state the answer in thousands of dollars and in dollars.
4. Show that expressing every Group A amount in dollars rather than thousands of dollars leaves the z-score unchanged.
5. Does $z=1.5$ by itself establish an exact percentile or a causal explanation for earnings? State what additional model or design information would be needed for either claim.

<!-- Source lineage: Newly authored occupational-group comparison and values. It practices comparable position without importing a protected textbook or exam setting. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Read probability from a density

**Class-guide connection:** [Section 3: Density curves as probability models](../#3-density-curves-as-probability-models)

A continuous model for $X$ has density

$$
f(x)=\frac{3-x}{2}\quad\text{for }1\leq x\leq3,
$$

and $f(x)=0$ otherwise.

1. Sketch the density with labeled axes. Use geometry to verify nonnegativity and total area one.
2. Calculate $\mathbb P(X\leq2)$ as an area.
3. Calculate $\mathbb P(1.5<X<2.5)$ as an area.
4. State both $f(2)$ and $\mathbb P(X=2)$, and explain why they are different quantities.
5. Without calculating a formula for the mean, decide whether the median lies below, at, or above 2. Justify your answer from area.

<!-- Source lineage: Newly authored decreasing triangular density with a support and values different from the inherited notes, PS1, and the Class 3 guide example. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Work in both directions with a Normal model

**Class-guide connection:** [Section 4: The Normal family](../#4-the-normal-family) and [Section 5: Normal probabilities and quantiles](../#5-normal-probabilities-and-quantiles)

In a newly constructed teaching example, weekly hours for a group of full-time workers are approximated by

$$
X\sim\mathsf{N}(40,4^2).
$$

You may use the following standard Normal values:

| Standard Normal quantity | Value |
|---|---:|
| $\Phi(-1.5)$ | 0.0668 |
| $\Phi(-1)$ | 0.1587 |
| $\Phi(1)$ | 0.8413 |
| $\Phi(2)$ | 0.9772 |
| 90th-percentile z-value | 1.2816 |

1. Identify the model mean, standard deviation, and variance, with units.
2. Calculate and interpret $\mathbb P(X<34)$.
3. Calculate and interpret $\mathbb P(36<X<44)$.
4. Calculate and interpret $\mathbb P(X>48)$ using a complement.
5. Find and interpret the model's 90th percentile in hours.
6. Actual weekly work hours can be heaped at round numbers and may not be symmetric. Explain why the answers above are model-based approximations and name a graphical check relevant to this question.

<!-- Source lineage: Newly authored weekly-hours model and cutoffs. Normal tail, interval, complement, and inverse calculations preserve inherited skill coverage without reusing legacy gemstones, shells, exam values, or wording. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Audit the birth-weight approximation

**Class-guide connection:** [Section 6: Does the model fit the question?](../#6-does-the-model-fit-the-question) and [Section 7: Practice and answer checks](../#7-practice-and-answer-checks)

The Class 3 materials use 1,388 birth records from a 1988 National Health Interview Survey extract distributed with `bwght`. Inspect the [Class 3 histogram, fitted curve, and Normal quantile plot](../figures/birthweight-normal-diagnostics.png) and use the following verified output.

| Quantity | Verified result |
|---|---:|
| Births | 1,388 |
| Missing birth weights | 0 |
| Mean birth weight | 118.6996 ounces |
| Sample standard deviation | 20.35396 ounces |
| Sample z-score for 88 ounces | -1.508284 |
| Observed fraction below 88 ounces | 0.05979827 |
| Fitted Normal probability below 88 ounces | 0.06574087 |
| Minimum and maximum | 23 and 271 ounces |

1. Identify the observational unit, focal variable, units, source, and historical period. Explain why these records do not automatically describe present-day births.
2. Reconstruct the z-score for 88 ounces and interpret it as a standardized position rather than a percentage.
3. Recover the number of recorded births below 88 ounces and calculate the fitted-minus-observed difference in percentage points.
4. Use both panels of the diagnostic figure to describe where the Normal approximation appears useful and where it shows visible strain. Explain why agreement at the 88-ounce cutoff cannot settle every probability or quantile question.
5. Audit and rewrite the following report in no more than four sentences:

> The standardized value is $-1.51$, so exactly 1.51 percent of births are below 88 ounces. Because the empirical fraction 5.98 percent and fitted Normal probability 6.57 percent are close, birth weight is Normal and the model is accurate at every cutoff. The 271-ounce value must be a data-entry error and should be deleted. These distributional results also prove which maternal behaviors cause low birth weight.

**Complete non-AI route:** Recompute the z-score from the displayed mean and standard deviation; convert each displayed fraction to a percentage; compare them at the same cutoff; inspect the histogram's shape and the quantile plot's center and tails; distinguish a diagnostic flag from source evidence; and ask whether any assignment mechanism or causal design appears in the distributional calculation.

**Optional AI comparison outside the recommended time:** After completing your audit, you may give an AI system only the public summary values and flawed report above—do not upload a folder or unrelated files—and use this prompt:

```text
Audit this teaching report claim by claim. Separate arithmetic, interpretation,
model adequacy at one cutoff versus across the distribution, treatment of an
unusual record, historical scope, and causal language. Recompute every
checkable number from the supplied summary, do not invent source facts, and
give a four-sentence revision. For each correction, state how a student could
verify it without relying on your authority.
```

Record one correction the system handled well and one assumption, omission, or verification step you still had to resolve yourself.

For an optional computational check, open the [Class 3 folder](../), run the existing [`class-03-normal-models.R`](../class-03-normal-models.R), and compare its output with the table. Running R or memorizing its syntax is not part of the independent exam target.

<!-- Source lineage: Original empirical audit using only the course-distributed Wooldridge bwght CSV, current Class 3 script, and reproducible diagnostic figure. The flawed report and prompt are newly authored and do not reproduce the Class 3 live AI interaction. -->

[Back to the problem map](#problem-map)

<a id="problem-6"></a>

### Problem 6. Transfer without assistance

**Class-guide connection:** [Section 1: Linear transformations and units](../#1-linear-transformations-and-units), [Section 5: Normal probabilities and quantiles](../#5-normal-probabilities-and-quantiles), and [Section 8: Common core, optional paths, and recap](../#8-common-core-optional-paths-and-recap)

Do not use AI, statistical software, the answer checks, or the worked solutions until you have completed this problem. You may use an ordinary calculator for the arithmetic.

Let $X$ denote birth weight in ounces in the same historical sample, with $\bar x=118.6996$ and $s=20.35396$. An analyst uses the fitted model $\mathsf{N}(118.6996,20.35396^2)$ and converts ounces to grams by $G=28.35X$. For the 10th percentile, use $z_{0.10}=-1.2816$.

1. Calculate the fitted mean and standard deviation in grams and convert the 88-ounce cutoff to grams.
2. Calculate the z-score of the cutoff on both scales and show numerically that it is unchanged.
3. Calculate the fitted 10th percentile first in ounces and then in grams. Verify it a second way by transforming the fitted mean and standard deviation before applying $z_{0.10}$.
4. A classmate says, “Changing to grams improves the Normal fit, and the 10th percentile means there is a 10 percent chance that the true sample mean lies below this value.” Correct both errors.
5. Write one sentence interpreting the fitted 10th percentile for the historical birth-weight distribution and one sentence stating a model or scope limitation.

<!-- Source lineage: Newly authored final transfer using only the verified Class 3 bwght summaries and a standard unit conversion. It introduces no new dataset or code and is not a legacy exercise. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the recommended route. They confirm targets and main conclusions, not the reasoning that an exam answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

For $X$, $\bar x=70$, $M=60$, $Q_1=45$, $Q_3=100$, $\mathrm{IQR}=55$, and $s=\sqrt{1250}\approx35.36$ dollars. Dividing by 10 divides every center and spread by 10 and preserves shape. For $R=150-X$, the ordered values are $20,80,90,100,110$, so the mean is 80, median 90, quartiles 50 and 105, $\mathrm{IQR}=55$, and $s\approx35.36$ dollars; the right-skewed shape is reflected into a left-skewed shape.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

Both listed workers have $z=1.5$, so their within-group standardized positions are equal even though Group B's raw earnings are higher. In Group A, $z=-0.75$ corresponds to 54 thousand dollars, or 54,000 dollars. A positive change from thousands to dollars leaves z unchanged. A sample z-score alone is neither an exact percentile nor a causal explanation.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

The graph is a line from $(1,1)$ to $(3,0)$, forming a triangle of area one. $\mathbb P(X\leq2)=0.75$, $\mathbb P(1.5<X<2.5)=0.50$, $f(2)=0.5$, and $\mathbb P(X=2)=0$. Because 75 percent of the area is already left of 2, the median lies below 2.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

The model mean is 40 hours, standard deviation 4 hours, and variance 16 hours squared. The requested probabilities are 0.0668, $0.8413-0.1587=0.6826$, and $1-0.9772=0.0228$. The 90th percentile is $40+1.2816(4)=45.1264$ hours. These are model-based values whose adequacy should be checked against a histogram and Normal quantile plot.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

The z-score is $(88-118.6996)/20.35396\approx-1.5083$. The observed count is 83 births, and the fitted probability exceeds the observed fraction by about 0.5943 percentage points. A z-score is not a percentage, one-cutoff agreement is not global validation, an unusual record requires source investigation, and a distributional fit does not identify causes.

</details>

<details>
<summary>Reveal the compact check for Problem 6</summary>

The fitted mean and standard deviation are about 3,365.13 grams and 577.03 grams; 88 ounces is 2,494.8 grams. The z-score remains about $-1.5083$. The fitted 10th percentile is about 92.614 ounces or 2,625.61 grams. A positive unit change neither improves nor worsens model fit, and a distributional percentile is not a probability statement about the true sample mean.

</details>

## Worked solutions

Attempt every problem and inspect its compact check before opening the [complete worked solutions](solutions/). The solution guide develops the calculation, interpretation, verification, limitation, and a nearby transfer for each problem; use it to reconstruct the method rather than copy a final number.

## Personal learning record

Keep this record in your own notes; do not submit it or add it to the course repository.

- **Independent:** Which problems or parts did you complete without hints, answer checks, statistical software, or generated output? An ordinary calculator used only for arithmetic need not be counted as assistance.
- **Prompted:** Which parts did you complete after a cue, checklist, or partial hint?
- **Supplied:** Which values, calculations, interpretations, or wording came from a table, software, AI, an answer check, or the worked solutions?
- **Remaining:** Which transformation, standardization, area, probability, quantile, or model-diagnosis step could you not reproduce on a blank page?
- **Transfer:** Did you complete Problem 6 unaided, and which unit, probability, or percentile interpretation still caused difficulty?
- **Next attempt:** Choose one remaining item and redo it unaided within the next two days.
