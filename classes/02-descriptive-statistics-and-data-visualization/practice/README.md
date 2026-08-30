# ECO 202 Practice 2: Descriptive Statistics and Data Visualization

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 2: Descriptive Statistics and Data Visualization](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 2 and before Class 3

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Use it to identify what you can already do independently and what needs more practice before the closed-book exams.

<!-- Source lineage: Scope calibrated against Econ202-UlrichMueller/LectureNotes.tex, lines 145--338, and Spring 2026 PS1. All settings, values, wording, and task organization below are newly authored for the Fall 2026 Class 2 guide. -->

## Purpose and recommended route

This module practices the full descriptive workflow: identify what the data represent, select useful displays, calculate numerical summaries, investigate unusual observations, and write a conclusion whose scope matches the evidence.

The recommended route is Problems 1–5 and should take about 37–50 minutes. Begin Problems 1, 2, and 5 without AI or answer checks. Problem 4 contains an optional AI comparison and a complete non-AI route. The optional AI comparison, worked-solution study, and Problem 6 take additional time beyond the recommended route.

| Stage | Suggested time | Work |
|---|---:|---|
| Retrieve and choose | 5–7 minutes | Problem 1 |
| Calculate and interpret | 12–15 minutes | Problem 2 |
| Transfer to real data | 8–10 minutes | Problem 3 |
| Audit a report | 7–10 minutes | Problem 4 |
| Finish unaided | 5–8 minutes | Problem 5 |

## What you must be able to do independently

After completing this practice, you should be able to:

- identify the observational unit, variables, variable types, measurement units, sample, and population relevant to a data description;
- choose among a bar chart, histogram, and boxplot for a stated descriptive question and audit axes, bins, group sizes, and missingness;
- describe a quantitative distribution using shape, center, spread, modes, and unusual observations;
- calculate and interpret the mean, median, quartiles, interquartile range, range, sample variance, and sample standard deviation;
- explain why variance has squared units and standard deviation has the original units;
- compare resistant and nonresistant summaries and use the $1.5\mathrm{IQR}$ rule as an investigation flag rather than a deletion rule;
- interpret the mean's least-squares property; and
- write a concise descriptive report without making unsupported population, time-period, distributional, or causal claims.

## Problem map

| Problem | Bank | Main task | Suggested mode |
|---|---|---|---|
| [1. Begin with the data structure](#problem-1) | Core | Identify units and variables, then choose displays. | Unaided retrieval |
| [2. Calculate a complete numerical description](#problem-2) | Core | Compute center, position, spread, and outlier fences. | Unaided calculation |
| [3. Describe the historical wage data](#problem-3) | Core | Turn real-data output into a defensible report. | Empirical transfer |
| [4. Audit a polished but unreliable report](#problem-4) | Core | Separate arithmetic, description, and unsupported claims. | Non-AI route or AI comparison |
| [5. Transfer without assistance](#problem-5) | Core | Compare two nearby distributions and explain what summaries conceal. | Final unaided transfer |
| [6. Why the mean and variance form a pair](#problem-6) | Further | Derive two least-squares and variance identities. | Optional theory |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Begin with the data structure

**Class-guide connection:** [Section 1: From an economic question to a data table](../#1-from-an-economic-question-to-a-data-table) and [Section 2: From a variable to its distribution](../#2-from-a-variable-to-its-distribution)

A city housing survey has one row for each responding renter household. Its columns include `monthly_rent` in dollars per month, `bedrooms`, `neighborhood`, `rent_burdened` coded 1 when rent exceeds 30 percent of household income and 0 otherwise, `response_mode` coded web or telephone, and `survey_weight`.

1. State the observational unit.
2. Classify each listed variable as categorical or quantitative. Explain why the values 0 and 1 do not make `rent_burdened` a quantitative variable.
3. Choose a display for each question: How common is each response mode? What is the shape of monthly rent? How does monthly rent differ between households coded as rent-burdened and not rent-burdened?
4. The analyst wants to describe all renter households in the city this year. Name three pieces of information you would need before deciding whether the responding households adequately represent that population.
5. Explain why a difference in rent between the two `rent_burdened` groups would be descriptive rather than evidence that the coding itself caused rent to change.

<!-- Source lineage: New housing-survey setting designed to practice the data-jargon, graph-choice, and interpretation scope in Mueller LectureNotes.tex, lines 147--210, without adapting a legacy exercise. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Calculate a complete numerical description

**Class-guide connection:** [Section 3: Center, position, and spread](../#3-center-position-and-spread) and [Section 4: Robustness, outliers, and what summaries conceal](../#4-robustness-outliers-and-what-summaries-conceal)

The ordered hourly wages, measured in dollars per hour, for six workers are

$$
4,\ 6,\ 7,\ 8,\ 9,\ 20.
$$

Use the median-of-halves convention for quartiles.

1. Before calculating, predict whether the mean will be below, equal to, or above the median. Explain your prediction from the distribution's shape.
2. Calculate the mean, median, $Q_1$, $Q_3$, $\mathrm{IQR}$, range, sample variance, and sample standard deviation.
3. State the units of the mean, $\mathrm{IQR}$, variance, and standard deviation.
4. Calculate the lower and upper $1.5\mathrm{IQR}$ fences. Which observation, if any, is flagged? What does the flag establish, and what does it not establish?
5. Replace 20 by 50. Calculate the new mean, median, and $\mathrm{IQR}$; determine whether the sample standard deviation increases or decreases; and use the result to explain resistance.
6. Name two features of the original six observations that would be lost if someone reported only the mean and standard deviation.

<!-- Source lineage: Newly authored numerical setting aligned with Mueller LectureNotes.tex, lines 212--294, and the Class 2 board work; no legacy values or wording copied. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Describe the historical wage data

**Class-guide connection:** [Section 5: A reproducible wage-distribution walkthrough](../#5-a-reproducible-wage-distribution-walkthrough)

The Class 2 materials use 526 workers from a 1976 Current Population Survey extract distributed with the `wage1` data. Inspect the [Class 2 histogram and boxplot](../figures/wage-distribution.png) and use the following verified output.

| Quantity | Hourly wage |
|---|---:|
| Workers | 526 |
| Missing hourly wages | 0 |
| Minimum | 0.53 |
| First quartile | 3.33 |
| Median | 4.65 |
| Mean | 5.90 |
| Third quartile | 6.88 |
| Maximum | 24.98 |
| Sample standard deviation | 3.69 |
| $\mathrm{IQR}$ | 3.55 |
| Upper fence ($1.5\mathrm{IQR}$) | 12.205 |
| Wages above the upper fence | 36 |

1. Identify the observational unit, focal variable, time period, and measurement units.
2. Calculate the percentage of recorded wages above the upper fence. Interpret the numerator and denominator.
3. Give three distinct pieces of evidence that the wage distribution is right-skewed.
4. Write a three-sentence descriptive report that includes the source and sample size, appropriate numerical and graphical evidence, and one important limitation.
5. Explain why neither the graph nor the table establishes what caused wage differences among these workers.

You may complete the problem entirely from the supplied output. For a computational check, open the [Class 2 folder](../), run [`class-02-wage-distributions.R`](../class-02-wage-distributions.R), and verify at least two reported quantities against the data. Running R or memorizing its syntax is not part of the independent exam target.

<!-- Source lineage: Original empirical transfer using the course-distributed Wooldridge wage1 CSV and the verified Fall 2026 Class 2 script; no protected data or legacy exercise wording introduced. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Audit a polished but unreliable report

**Class-guide connection:** [Section 6: From output to a defensible description](../#6-from-output-to-a-defensible-description)

In a newly constructed teaching example, an online retailer summarizes delivery times for 240 orders placed during one promotional week. Delivery time has mean 4.8 days, median 3.2 days, sample standard deviation 5.6 days, $Q_1=2.4$ days, $Q_3=4.1$ days, and maximum 40 days. A boxplot flags 18 orders above the upper $1.5\mathrm{IQR}$ fence of 6.65 days.

> The typical customer waited 4.8 days, and the standard deviation of 5.6 squared days proves that nearly all deliveries took between $-0.8$ and 10.4 days. The 18 outliers are data-entry errors and should be deleted. The promotion caused slow delivery, and this one week describes the retailer's normal delivery performance.

First audit the report without assistance. Mark every statement as supported, imprecise, or unsupported; check the arithmetic separately from the interpretation; and rewrite the report in no more than four sentences.

Then choose one of the following routes.

**AI comparison route:** Copy the prompt below into any AI system, compare its audit with yours, and identify one point it handled well and one claim or omission that still needs correction.

```text
I am auditing a hypothetical teaching example about delivery times for 240
online orders placed during one promotional week. Delivery time has mean 4.8
days, median 3.2
days, sample standard deviation 5.6 days, Q1 2.4 days, Q3 4.1 days, and
maximum 40 days. A boxplot flags 18 orders above the upper 1.5-IQR fence
of 6.65 days.

Audit this report: "The typical customer waited 4.8 days, and the standard
deviation of 5.6 squared days proves that nearly all deliveries took between
-0.8 and 10.4 days. The 18 outliers are data-entry errors and should be
deleted. The promotion caused slow delivery, and this one week describes
the retailer's normal delivery performance."

Classify each claim as supported, imprecise, or unsupported. Separate
arithmetic checks from interpretation, do not invent facts, and provide a
four-sentence revision. Explain how each major correction can be verified
from the supplied output or from information that would still be needed.
```

**Complete non-AI route:** Use these questions to audit your rewrite: Does it identify the 240 orders and promotional week rather than all customers or normal operations? Does it give standard deviation the original units rather than squared units? Does it distinguish a one-standard-deviation interval from a statement about nearly all observations? Does it treat an outlier fence as a diagnostic rather than an error detector? Does it recognize that “typical” needs a stated summary? Does it reject the unsupported causal claim about the promotion?

<!-- Source lineage: Newly authored delivery-time setting, flawed report, and audit prompt, aligned with the interpretation standard in the Class 2 guide without adapting a legacy exercise. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Transfer without assistance

**Class-guide connection:** [Section 4: Robustness, outliers, and what summaries conceal](../#4-robustness-outliers-and-what-summaries-conceal)

Do not use AI, software, or the answer checks until you have completed this problem. Two clinics record the following patient waiting times, in minutes:

$$
A: 4,\ 5,\ 6,\ 7,\ 8,\ 9,\ 18,
$$

$$
B: 4,\ 5,\ 6,\ 7,\ 8,\ 9,\ 48.
$$

1. Calculate the mean, median, $Q_1$, $Q_3$, and $\mathrm{IQR}$ for each clinic using the median-of-halves convention.
2. Without calculating both standard deviations exactly, determine which clinic has the larger standard deviation and justify your answer.
3. Apply the $1.5\mathrm{IQR}$ rule to each distribution. Explain why receiving the same flag does not make the two largest waiting times equally unusual in magnitude.
4. Write two sentences comparing the centers, spreads, and tails. Do not propose a cause for the difference.

<!-- Source lineage: New transfer setting and values; conceptually calibrated against the robustness and distribution-construction exercises in Mueller LectureNotes.tex, lines 278--336. -->

[Back to the problem map](#problem-map)

## Further practice

<a id="problem-6"></a>

### Problem 6. Why the mean and variance form a pair

**Class-guide connection:** [Section 3: Center, position, and spread](../#3-center-position-and-spread) and [Section 4: Robustness, outliers, and what summaries conceal](../#4-robustness-outliers-and-what-summaries-conceal)

Let $x_1,\ldots,x_n$ have mean $\bar x$.

1. Show that, for every constant $a$,

$$
\sum_{i=1}^n(x_i-a)^2=\sum_{i=1}^n(x_i-\bar x)^2+n(a-\bar x)^2.
$$

2. Use the identity to explain why $\bar x$ uniquely minimizes the sum of squared deviations from a constant.
3. Derive the computational identity

$$
s^2=\frac{1}{n-1}\sum_{i=1}^n x_i^2-\frac{n}{n-1}\bar x^2.
$$

4. Verify both identities using the six wages in Problem 2. Explain why these algebraic identities do not make the mean or standard deviation resistant to an extreme observation.

<!-- Source lineage: Reauthored synthesis of the mean-as-least-squares discussion in Mueller LectureNotes.tex, lines 296--318, and the variance-identity goal in Spring 2026 PS1 Problem 2; wording and numerical verification are new. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the recommended route. They confirm targets and main conclusions, not the reasoning that an exam answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

One row is one responding renter household. `neighborhood`, `rent_burdened`, and `response_mode` are categorical; `monthly_rent`, `bedrooms`, and `survey_weight` are quantitative, although the substantive role of a survey weight differs from that of a measured household characteristic. Suitable displays are a bar chart, a histogram, and side-by-side boxplots or aligned histograms. Coverage, response or selection, missingness, timing, and weighting information matter before population generalization. A comparison between groups defined partly by their recorded rent does not establish a causal effect of the group label.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

$\bar x=9$, $M=7.5$, $Q_1=6$, $Q_3=9$, $\mathrm{IQR}=3$, range $=16$, $s^2=32$, and $s\approx5.66$. The fences are 1.5 and 13.5, so 20 is flagged. Replacing 20 by 50 gives $\bar x=14$, $M=7.5$, and $\mathrm{IQR}=3$; the standard deviation increases.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

$36/526\approx0.0684$, so about 6.84 percent of recorded wages exceed the upper fence. Right-skew evidence includes mean above median, a long right tail in the histogram or boxplot, and a maximum far above $Q_3$ with 36 upper-fence flags. Conclusions must remain about this historical extract.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

The endpoints $4.8-5.6=-0.8$ and $4.8+5.6=10.4$ are arithmetically correct, but “nearly all” is unsupported. Standard deviation has units of days, not squared days. The observational unit is one order, not necessarily one unique customer. The 18 flags do not diagnose errors, the one promotional week does not establish normal performance, “typical” requires a stated summary, and no comparison identifies a causal effect of the promotion.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

Both distributions have $M=7$, $Q_1=5$, $Q_3=9$, and $\mathrm{IQR}=4$. Their means are $57/7\approx8.14$ and $87/7\approx12.43$. Clinic B has the larger standard deviation. Both upper fences equal 15, so both maxima are flagged even though 48 lies much farther beyond the fence than 18.

</details>

<details>
<summary>Reveal the optional Problem 6 target identities</summary>

The cross term vanishes because $\sum_{i=1}^n(x_i-\bar x)=0$. The remaining term $n(a-\bar x)^2$ is nonnegative and equals zero only at $a=\bar x$. For Problem 2, $\sum x_i^2=646$, so $s^2=(646-6\cdot9^2)/5=32$.

</details>

## Worked solutions

Attempt each problem and inspect its compact check before opening the [complete worked solutions](solutions/). The solution guide develops the reasoning, interpretation, verification, limitations, and a nearby transfer question for every problem; use it to study the method rather than merely copy the final result.

## Personal learning record

Keep this record in your own notes; do not submit it or add it to the course repository.

- **Independent:** Which problems or parts did you complete without hints, answer checks, or generated output?
- **Prompted:** Which parts did you complete after a cue, checklist, or partial hint?
- **Supplied:** Which calculations, interpretations, or wording came from software, AI, or an answer check?
- **Remaining:** Which concept or step could you not yet reproduce on a blank page?
- **Transfer:** Did you complete Problem 5 unaided, and what did it reveal about your independent command?
- **Next attempt:** Choose one remaining item and redo it unaided within the next two days.
