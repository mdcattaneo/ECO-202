# Class 6: Populations, Samples, Surveys, and Selection Bias

**Date:** Monday, September 28, 2026  
**Status:** Complete first version  
**Last updated:** August 30, 2026

**Previous meeting:** In-Class Exam 1 · [Practice 6](practice/) · [Course syllabus](../../ECO202-Fall2026-Syllabus.pdf) · [Class 7 →](../07-randomized-experiments-observational-studies-and-causal-effects/)

**Class-folder workflow:** Use this guide for preparation, class, and review; run adjacent files when directed; then complete [ungraded practice](practice/) before studying the [worked solutions](practice/solutions/).

<!-- Source lineage: Econ202-UlrichMueller/LectureNotes.tex, Data Collection, Sample Designs, Experimental Designs; the sampling exercises in those notes; Spring 2017, 2018, 2024, and 2025 Midterm I calibration material; Moore, McCabe, and Craig, Chapter 3. The examples and prose are newly authored. The empirical audit uses the documented wage1 CSV distributed with the course. -->

## Central question

Which population, if any, can a sample credibly describe, and what in its selection process determines that scope?

## Learning goals

By the end of class, you should be able to:

1. distinguish a target population, sampling frame, selected sample, responding sample, parameter, and statistic;
2. compare a simple random sample, a stratified random sample, and a general probability sample;
3. explain why equal inclusion probabilities do not by themselves make a design an SRS;
4. diagnose undercoverage, nonresponse, response bias, convenience selection, voluntary response, and survivorship bias;
5. distinguish sample-to-sample variability from systematic bias; and
6. state and defend the population scope of a statistical conclusion.

<a id="lecture-map"></a>

## In-class route

| Stop | Live focus | Mode |
|---|---|---|
| **C6.1** | [From a question to population and sample](#c6-stop-1) | Terminology + Board work 1 |
| **C6.2** | [Target populations and sampling frames](#c6-stop-2) | Coverage audit + Checkpoint 1 |
| **C6.3** | [Probability samples, SRS, and stratification](#c6-stop-3) | Board work 2 + design comparison |
| **C6.4** | [How surveys and samples become biased](#c6-stop-4) | Mechanism audit + Checkpoint 2 |
| **C6.5** | [Random variability is not bias](#c6-stop-5) | Data demonstration + Checkpoint 3 |
| **C6.6** | [From a sample result to a defensible claim](#c6-stop-6) | AI interaction + claim repair |

## How to use this guide

**Prepare:** Find one reported survey percentage. Write down who answered, who could have been contacted, and whom the headline appears to describe. If one of those groups is not reported, mark it as unknown rather than guessing.

**In class:** Keep the selection mechanism separate from the numerical calculation. A statistic may be computed correctly while the population claim remains unsupported.

**Review:** For each failure mechanism in Section 4, construct one setting in which it would push a statistic upward, one in which it would push it downward, and one in which its direction would remain unknown.

**Practice:** Complete the short retrieval questions in Section 7, then use [Practice 6](practice/) for sustained design classification, calculation, interpretation, and transfer. The R script is a reproducible demonstration, not a programming-syntax requirement.

**Prerequisites:** Descriptive statistics from Class 2 and the distinction among descriptive, predictive, and causal claims from Class 5.

## Full guide map

1. [From a question to population and sample](#1-from-a-question-to-population-and-sample)
2. [Target populations and sampling frames](#2-target-populations-and-sampling-frames)
3. [Probability samples, SRS, and stratification](#3-probability-samples-srs-and-stratification)
4. [How surveys and samples become biased](#4-how-surveys-and-samples-become-biased)
5. [Random variability is not bias](#5-random-variability-is-not-bias)
6. [From a sample result to a defensible claim](#6-from-a-sample-result-to-a-defensible-claim)
7. [Practice and answer checks](#7-practice-and-answer-checks)
8. [Common core, optional paths, and recap](#8-common-core-optional-paths-and-recap)

<a id="c6-stop-1"></a>

## 1. From a question to population and sample

Statistical work begins with a question about units, not with a spreadsheet. The **target population** is the collection of units the question is intended to describe. The **sample** is the set of units actually observed. A **parameter** is a numerical feature of the target population, while a **statistic** is a numerical function of the observed sample.

For example, $p$ may denote the unknown proportion of a target population with a characteristic, while $\hat p$ is the observed sample proportion. Likewise, $\mu$ may denote a population mean and $\bar x$ a sample mean. A statistic used to learn about a parameter is an **estimator**; Class 13 will distinguish the estimator as a repeated-sampling rule from the numerical estimate produced in one realized sample.

Selected and observed samples can differ. A survey may select 600 units, contact 480, receive 360 responses, and obtain a usable answer from 350. Each stage can change which units enter the final statistic.

> [!IMPORTANT]
> **Board work 1 — Reconstruct the evidence chain**
>
> A fictional city wants to estimate the proportion of all working-age residents who worked from home at least one day last week. A contractor obtains email addresses from participating employers, randomly selects 600 addresses from that list, receives 360 completed surveys, and finds that 198 respondents report working from home.
>
> 1. identify the observational unit, target population, sampling frame, selected sample, and responding sample;
> 2. identify the population parameter and calculate the available statistic;
> 3. name at least one unit that belongs to the target population but cannot enter the frame;
> 4. explain why random selection from the employer list does not make the 360 responses an SRS from all working-age residents; and
> 5. write the strongest descriptive sentence justified without additional design information.

The target parameter is the proportion $p$ among all working-age city residents. The available statistic is

$$
\hat p=\frac{198}{360}=0.55.
$$

The calculation establishes that 55% of respondents reported working from home. It does not establish that 55% of all working-age residents did so. Residents outside participating employer lists are absent from the frame, and response may depend on work arrangements even among selected addresses.

<a id="c6-stop-2"></a>

## 2. Target populations and sampling frames

The **sampling frame** is the operational list or mechanism from which units can be selected. It is not automatically the target population. A voter file, customer list, school roster, address register, online panel, or employer directory may omit eligible target units or include ineligible ones.

**Undercoverage** occurs when part of the target population has no adequate path into the frame. Coverage is a property of the relationship between the frame and a stated target: the same frame can be adequate for one question and inadequate for another.

The observational unit, unit of selection, and unit of analysis may also differ. A survey might select households, interview one adult, and report conclusions about individuals. That design is not necessarily invalid, but the connection among units and any unequal probabilities must be explicit.

Sampling can be cheaper, faster, and sometimes more accurate than attempting a census. A well-designed sample can support a credible population conclusion; millions of observations from the wrong frame cannot.

### Checkpoint 1

A website asks visitors whether housing costs are their most important financial concern and reports that 72% said yes. Identify the target population implied by the broadest possible headline, the actual participation mechanism, and the population that the responses describe without further assumptions. Which additional information would be needed before generalizing?

<a id="c6-stop-3"></a>

## 3. Probability samples, SRS, and stratification

A **probability sample** is generated by a specified chance mechanism whose possible samples and selection probabilities are known. Calling a sample “random” is incomplete unless the procedure that generates it is stated.

In a **simple random sample** of size $n$ from a finite population of size $N$, every subset of $n$ distinct population units has the same probability of selection. Each unit therefore has inclusion probability $n/N$, but equal inclusion probabilities are only a consequence of SRS, not a sufficient definition of it.

A **stratified random sample** divides the population into predefined groups called strata and takes a probability sample within each stratum. Stratification guarantees a planned amount of representation across strata and can reduce variability when units within strata are relatively similar. It changes the set and probabilities of possible full samples, so a stratified design is generally not an SRS from the entire population.

For the finite counts below, $\binom{N}{n}$ denotes the number of unordered subsets of size $n$ that can be selected from $N$ units. The board work uses this counting notation only to make the sample-selection mechanism visible; Class 8 develops finite probability models more systematically.

> [!IMPORTANT]
> **Board work 2 — Equal inclusion does not imply SRS**
>
> A finite population contains eight fictional firms: four manufacturing firms $M_1,\ldots,M_4$ and four service firms $S_1,\ldots,S_4$. Compare these two designs for selecting four firms.
>
> - **Design A:** Select an SRS of four from all eight firms.
> - **Design B:** Make one fair SRS selection of two manufacturing firms and a separate fair SRS selection of two service firms, with all $6\times6=36$ cross-sector combinations equally likely.
>
> 1. show that Design A has $\binom{8}{4}=70$ possible samples, each with probability $1/70$;
> 2. show that Design B has $\binom{4}{2}\binom{4}{2}=36$ possible samples, each with probability $1/36$;
> 3. verify that every firm has inclusion probability $4/8=1/2$ under either design;
> 4. give one sample that Design A can produce but Design B cannot; and
> 5. explain precisely why Design B is a probability sample and a stratified random sample but not an SRS from all eight firms.

For example, $\lbrace M_1,M_2,M_3,S_1\rbrace$ is possible under Design A but impossible under Design B. The two designs give every individual firm the same inclusion probability, yet they produce different collections of possible samples. Design labels therefore describe the full chance mechanism rather than the appearance of one realized sample.

More complex probability samples may use unequal selection probabilities, clusters, or several stages. Those designs can remain valid, but their analysis may require weights and dependence information that are not visible in a plain CSV file.

<a id="c6-stop-4"></a>

## 4. How surveys and samples become biased

Sampling bias is a systematic tendency of a selection or measurement process to favor some results over others. Naming a possible bias is only the beginning; a useful audit explains where it enters, which units are affected, how selection relates to the measured variable, and whether the direction can be defended.

| Mechanism | Where it enters | Diagnostic question |
|---|---|---|
| Undercoverage | Before selection | Which target units cannot enter the frame? |
| Nonresponse | After selection | Who does not respond, and how might response relate to the variable? |
| Response bias | During measurement | Could wording, memory, incentives, interviewer presence, or social pressure shift reports? |
| Convenience selection | When the sample is assembled | Were units included mainly because they were easy to reach? |
| Voluntary response | When participation is self-initiated | Are people with stronger views more likely to participate? |
| Survivorship bias | When inclusion requires passing an earlier stage | Which failed or missing units are invisible? |

A low response rate is a warning, not a mathematical direction of bias. If high earners and low earners respond at different rates, the sign depends on which group responds more. Even a high response rate does not repair severe undercoverage or systematic measurement error.

Design weights can account for known unequal inclusion probabilities when used with a design-appropriate estimator, and adjustment weights can address some modeled forms of nonresponse. Neither can automatically reconstruct units absent from the frame or eliminate an unknown relationship between response and the outcome.

### Checkpoint 2

A firm surveys current employees about the health effects of a production process and excludes former employees from its contact list. Identify the selection mechanism. Under what substantive story would the responding sample understate harm? Why is the direction not determined by the word *survivorship* alone?

### Common mistakes

- **“The sample is large, so it must be representative.”** Size controls some random fluctuation; it does not repair systematic exclusion.
- **“The sample demographics match the population, so it must be representative.”** Balance on recorded characteristics does not establish balance on the outcome or unrecorded causes of participation.
- **“Random selection removes every problem.”** Random selection from a frame does not repair a frame–target mismatch, later nonresponse, or response bias.
- **“Any sample imperfection has an obvious sign.”** Direction requires a defensible mechanism linking inclusion or measurement to the target variable.

<a id="c6-stop-5"></a>

## 5. Random variability is not bias

Even a correct probability-sampling procedure produces different statistics in different realized samples. This **sampling variability** is the chance fluctuation created by the design. Increasing the sample size generally reduces its scale.

Bias is different: it is a systematic mismatch between the procedure and the target. A large selected sample may be tightly concentrated around the wrong quantity. Precision cannot substitute for a credible frame, selection mechanism, and measurement process.

The historical [`wage1` file](data/wage1.csv) contains 526 worker records and 24 variables from a 1976 Current Population Survey extract. The adjacent [data notes](data/README.md) record its provenance and limitations. The CSV identifies the included records and variables, but it does not by itself provide all fieldwork, sampling-frame, selection-probability, weighting, and nonresponse information needed to justify a new population claim.

The linear, line-by-line commented script [`class-06-sampling-and-selection.R`](class-06-sampling-and-selection.R) makes two teaching comparisons. First, it draws row-level SRSs of sizes 30 and 200 from the fixed file. Second, it constructs a deliberately restricted frame containing only the 380 records coded as living in a Standard Metropolitan Statistical Area and excludes the other 146 records.

Open this class folder as the working folder, then run:

```sh
Rscript class-06-sampling-and-selection.R
```

| Quantity | Verified result |
|---|---:|
| Mean wage across all 526 file records | $5.8961$&nbsp;dollars per hour |
| Realized row-SRS mean ($n=30$) | $5.3987$&nbsp;dollars per hour |
| Realized row-SRS mean ($n=200$) | $6.0320$&nbsp;dollars per hour |
| Mean wage in the constructed metropolitan-only frame | $6.3029$&nbsp;dollars per hour |
| Mean wage among the 146 excluded file records | $4.8373$&nbsp;dollars per hour |
| Constructed-frame mean minus complete-file mean | $0.4068$&nbsp;dollars per hour |

Treating the 526 rows as a fixed collection is a computational demonstration, not a claim that they are the actual population of interest. The SRS means fluctuate because different rows are selected. The metropolitan-only difference is systematic within this constructed file exercise because 146 records have no chance of entering that frame. It is not a claim that the original CPS used this restricted frame.

### Checkpoint 3

The sample of 200 happens to be closer to the complete-file mean than the sample of 30. Which part of that observation reflects a general sample-size principle, and which part is only one realization? Would increasing the constructed metropolitan-only sample from 200 to 380 repair its coverage difference?

<a id="c6-stop-6"></a>

## 6. From a sample result to a defensible claim

A defensible conclusion moves through three increasingly demanding levels:

1. **Observed-sample description:** State what was found among the units actually observed.
2. **Design-based population claim:** Use a probability-sampling and response process to connect the statistic to a defined target population.
3. **External-validity argument:** Explain why evidence from one time, place, frame, or set of participants may transfer beyond the design's direct target.

Do not jump from level 1 to level 3 because a number is precise or because software supplied a small uncertainty measure. Every broader claim needs a stated bridge.

Before using AI, audit the fictional remote-work survey from Board work 1 independently. Write the strongest observed-sample statement, list the missing design facts, and identify the first unsupported population claim.

> [!TIP]
> **AI interaction 1 — Audit and repair a survey claim**
>
> Copy the prompt below into an AI interface only after completing the independent audit. Evaluate whether the response keeps the target, frame, selected sample, responding sample, parameter, and statistic distinct; demands mechanisms before assigning a direction to bias; and refuses to invent missing design details.

```text
A fictional city wants the proportion of all working-age residents who worked
from home at least one day last week. A contractor randomly selected 600 email
addresses from participating employers' HR lists. Of the 360 people who
responded, 198 reported working from home. A report concludes: "The random
sample proves that 55% of all working-age city residents worked from home, and
the large sample eliminates bias."

Audit the report. Identify the observational unit, target population, sampling
frame, selected sample, responding sample, parameter, statistic, and selection
stages. Separate sampling variability from undercoverage, nonresponse, and
response bias. Do not assign a direction to a bias without a stated mechanism,
and do not invent response rates or weighting. End with the strongest
two-sentence conclusion justified by the information supplied and list the
additional design facts needed for a broader population claim.
```

**Non-AI route:** Use the quoted report and the prompt's checklist as a written audit. Exchange audits with a classmate, underline every claim that goes beyond the 360 respondents, and revise the final two sentences without consulting generated output.

**Verification question:** Does the repaired conclusion say that 55% of respondents—not necessarily 55% of the target population—reported working from home? Does it explain that larger samples address chance fluctuation but not the frame and response mechanisms?

## 7. Practice and answer checks

The short checks below support immediate retrieval. The separate [Practice 6 module](practice/) provides sustained calculation, design diagnosis, an AI/non-AI audit, compact answer checks, and complete public worked solutions after an attempt.

### Practice A — Name every population and sample object

A university draws 250 addresses from an alumni email list, receives 100 responses, and reports the mean donation among respondents. Name the target population implied by a claim about all alumni, the frame, selected sample, responding sample, parameter, and statistic. State the strongest description supported without an additional generalization argument.

### Practice B — Compare two designs

Six stores belong to two regions, with three stores per region. Compare an SRS of two from all six with a stratified design selecting one store per region. Count the possible samples under each design and decide whether equal inclusion probabilities make the stratified design an SRS.

**Answer check:** The SRS has $\binom62=15$ equally likely samples. The stratified design has $3\times3=9$ equally likely samples. Each store has inclusion probability $1/3$ under either design, but the stratified design cannot select two stores from the same region and is therefore not an SRS from all six.

### Practice C — Diagnose before predicting direction

An online salary survey is advertised primarily on a job-search website. Identify possible undercoverage, voluntary response, and measurement mechanisms. For each, state what additional evidence would be needed before predicting whether the reported mean salary is too high or too low.

## 8. Common core, optional paths, and recap

**Common core:** Target population; sampling frame; selected, contacted, responding, and analyzed samples; parameter and statistic; SRS; stratified and general probability samples; inclusion probabilities; undercoverage; nonresponse; response bias; convenience and voluntary response; survivorship; sampling variability; bias; external validity; and the population scope of a conclusion.

**Explore further:** Cluster and multistage sampling; unequal-probability designs; survey weights; design effects; finite-population corrections; capture–recapture methods; formal selection indicators; and sensitivity analysis for nonresponse.

### Notation

| Symbol | Meaning in this class |
|---|---|
| $N$ | Number of units in a finite population or frame |
| $n$ | Number of sampled units |
| $\mu$ | Population mean parameter |
| $p$ | Population proportion parameter |
| $\bar x$ | Mean calculated from one observed sample |
| $\hat p$ | Proportion calculated from one observed sample |

The durable chain is:

> Question → target population → sampling frame → chance mechanism → response and measurement → observed statistic → justified population scope

A sample does not carry its own license to generalize. That license comes from the design, its execution, and a transparent argument about who could and did enter the data.

## References

- Moore, McCabe, and Craig, *Introduction to the Practice of Statistics*, 10th ed., Chapter 3.
- OpenIntro, *Introduction to Modern Statistics*, sections on study design and sampling.
- Wooldridge, *Introductory Econometrics: A Modern Approach*, 7th ed.; [`wage1` data and provenance notes](data/README.md).
- U.S. Census Bureau, [*Current Population Survey Design and Methodology*, Technical Paper 77](https://www2.census.gov/programs-surveys/cps/methodology/CPS-Tech-Paper-77.pdf), for the broader survey-design context; the course CSV does not reproduce that documentation.
