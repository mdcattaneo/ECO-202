# ECO 202 Practice 6: Populations, Samples, Surveys, and Selection Bias

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 6: Populations, Samples, Surveys, and Selection Bias](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 6 and before Class 7

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Use it to test whether you can reconstruct a selection process, calculate what a probability-sampling design implies, diagnose bias through a mechanism, and limit a conclusion to the population and causal scope supported by the evidence.

<!-- Source lineage: Scope calibrated against Econ202-UlrichMueller/LectureNotes.tex, Data Collection, Sample Designs, and Experimental Designs; the sampling exercises in those notes; Spring 2017, 2018, 2024, and 2025 Midterm I material used privately only for level and misconception calibration; Moore, McCabe, and Craig, Chapter 3; and the current Fall 2026 Class 6 guide. All public problem wording, fictional settings, audit tasks, prompts, and transfers are newly authored. The empirical problem uses only the existing documented Class 6 wage1 data notes, script, and verified output; no protected exercise or reserved exam question is reproduced. -->

## Purpose and workload

The recommended route is Problems 1–5 and has a suggested total of **50 minutes**. The stage times below are exact planning targets rather than deadlines. Begin Problems 1, 2, 3, and 5 without AI, software, answer checks, or worked solutions. Problem 4 offers an AI comparison and an equivalent complete non-AI route; choose one route within the listed time. Optional script execution, a second Problem 4 route, nearby transfers, and worked-solution study take additional time.

| Stage | Suggested time | Work |
|---|---:|---|
| Reconstruct the evidence chain | 7 minutes | Problem 1 |
| Compare two probability samples | 10 minutes | Problem 2 |
| Diagnose mechanism and direction | 8 minutes | Problem 3 |
| Audit the historical data claim | 13 minutes | Problem 4 |
| Transfer population and causal scope | 12 minutes | Problem 5 |

## What you must be able to do independently

After completing this practice, you should be able to:

- identify an observational unit, target population, sampling frame, selected sample, responding sample, parameter, statistic, and the strongest group each observed summary directly describes;
- define an SRS through its possible samples rather than through the appearance of one realized sample;
- enumerate the possible samples and calculate individual inclusion probabilities for an eight-firm SRS and a stratified design;
- explain why equal individual inclusion probabilities do not make every probability sample an SRS;
- locate undercoverage, nonresponse, response bias, voluntary or convenience selection, and survivorship in an evidence chain;
- defend a direction of bias only through a stated relationship between inclusion or measurement and the target variable, and recognize when competing mechanisms leave the net direction unknown;
- distinguish sampling variability from systematic selection or measurement bias and explain why a larger sample does not repair the latter;
- audit the provenance and population scope of the historical `wage1` extract without inventing a frame, selection probability, response process, or survey weight; and
- separate the population question answered by random sampling from the causal question answered only by a credible counterfactual design or assumptions.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Reconstruct a survey evidence chain](#problem-1) | Classify the population, frame, samples, parameter, and statistic. | 7-minute unaided classification |
| [2. Eight firms, equal inclusion, different designs](#problem-2) | Enumerate SRS and stratified samples and calculate inclusion probabilities. | 10-minute unaided calculation |
| [3. Name the mechanism before its direction](#problem-3) | Trace undercoverage, nonresponse, and response bias through one survey. | 8-minute mechanism audit |
| [4. What can the historical `wage1` file represent?](#problem-4) | Audit provenance, row sampling, generalization, and causal overreach. | 13-minute non-AI route or AI comparison |
| [5. Random sampling does not create a causal effect](#problem-5) | Separate population scope from the Class 5 counterfactual boundary. | 12-minute final unaided transfer |

## Recommended route

<a id="problem-1"></a>

### Problem 1. Reconstruct a survey evidence chain

**Class-guide connection:** [From a question to population and sample](../#c6-stop-1) and [Target populations and sampling frames](../#c6-stop-2)

A fictional county transportation office wants to estimate the mean number of one-way public-transit trips taken last week by all employed county residents age 18 or older. It obtains employee email lists from participating employers with at least 50 employees, randomly selects 400 records from the combined lists, receives 248 completed surveys, and calculates a mean of 3.25 reported trips among respondents.

1. Identify the observational unit, target population, sampling frame, selected sample, and responding sample.
2. Define the target parameter $\mu$ and the available statistic $\bar x$. State the numerical value and units of $\bar x$.
3. Give one employed county resident who can belong to the target population but cannot enter this frame, and explain the resulting frame–target mismatch.
4. Explain why random selection of 400 records from the frame does not make the 248 respondents an SRS from the target population.
5. Write the strongest one-sentence conclusion supported without additional design information, then list two specific facts needed before using 3.25 as an estimate for all employed adult county residents.

<!-- Source lineage: Newly authored evidence-chain problem aligned with the current Class 6 city-survey board work but using a distinct transportation target, frame, sample sizes, variable, and statistic. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Eight firms, equal inclusion, different designs

**Class-guide connection:** [Probability samples, SRS, and stratification](../#c6-stop-3)

A finite population contains four manufacturing firms $M_1,\ldots,M_4$ and four service firms $S_1,\ldots,S_4$. Compare two designs that select four firms.

- **Design A:** Select an SRS of four firms from all eight.
- **Design B:** Make one fair SRS selection of two manufacturing firms and a separate fair SRS selection of two service firms, with all $6\times6=36$ cross-sector combinations equally likely.

1. Calculate the number of possible samples under Design A and the probability of each possible sample.
2. Calculate the number of possible samples under Design B and the probability of each allowed sample.
3. Calculate the inclusion probability of $M_1$ under each design. Explain why the same calculation applies to every firm.
4. Find the probability of selecting the sample $\lbrace M_1,M_2,S_1,S_2\rbrace$ under each design.
5. Find the probability of selecting $\lbrace M_1,M_2,M_3,S_1\rbrace$ under each design.
6. Explain precisely why Design B is a probability sample and a stratified random sample but is not an SRS from the full eight-firm population, even though every firm has inclusion probability $1/2$.

You may optionally verify the two sample counts and the common inclusion probability with the final lines of the existing [Class 6 script](../class-06-sampling-and-selection.R). Software execution and memorized syntax are not required.

<!-- Source lineage: Extends the existing course-created eight-firm Class 6 board example by requiring probabilities for one allowed and one forbidden realized sample. The values and design remain those in the current guide so students can reconstruct rather than learn a new setting. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Name the mechanism before its direction

**Class-guide connection:** [How surveys and samples become biased](../#c6-stop-4) and [Random variability is not bias](../#c6-stop-5)

A fictional firm wants the mean weekly overtime hours during 2025 among everyone who worked for it at any point that year. The firm uses its December 31 current-employee roster as the frame. Former employees, many of whom report leaving because of long hours, averaged 12 overtime hours per week, while current employees averaged 5. Among current employees, people who worked more than 8 overtime hours were twice as likely to complete the survey as other selected employees. Supervisors collected the answers directly, and follow-up evidence suggests that respondents tended to underreport overtime in those conversations.

1. For each stage—frame construction, response, and measurement—name the relevant bias mechanism and identify which units or values are disproportionately omitted or altered.
2. Under the stated facts, determine the direction in which the frame mismatch moves the current-frame mean relative to the target-population mean.
3. Determine the direction in which differential response moves the respondent mean relative to the current-frame mean.
4. Determine the direction in which the stated response bias moves recorded reports relative to respondents' true overtime.
5. Can the direction of the final reported mean relative to the target-population mean be determined from these facts alone? Explain why the signs of individual mechanisms do not supply their relative magnitudes.
6. Explain why surveying every person on the current roster would remove one source of sampling variability but would not repair the target-population coverage or measurement problems.

<!-- Source lineage: Newly authored single-survey mechanism audit. Its staged directions operationalize the Class 6 distinction among undercoverage, nonresponse, response bias, sampling variability, and net bias without adapting a legacy exercise. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. What can the historical `wage1` file represent?

**Class-guide connection:** [Random variability is not bias](../#c6-stop-5) and [From a sample result to a defensible claim](../#c6-stop-6)

The Class 6 [`wage1` data](../data/wage1.csv) and [provenance notes](../data/README.md) describe 526 worker records and 24 variables from a historical 1976 Current Population Survey extract. The CSV alone does not supply all original frame, selection-probability, weighting, nonresponse, or fieldwork information needed for a new population claim. The current [Class 6 script](../class-06-sampling-and-selection.R) reports:

| Quantity | Verified result |
|---|---:|
| Mean wage across all 526 file records | 5.8961 dollars per hour |
| Realized mean from an SRS of 30 rows | 5.3987 dollars per hour |
| Realized mean from a separate SRS of 200 rows | 6.0320 dollars per hour |
| Mean in a constructed frame containing 380 metropolitan-coded records | 6.3029 dollars per hour |
| Mean among the other 146 file records | 4.8373 dollars per hour |
| Constructed-frame mean minus complete-file mean | 0.4068 dollars per hour |

An analyst writes:

> Because these records came from the CPS, the 526 rows form an SRS of every U.S. worker in 1976, so 5.8961 must represent the national mean wage. The sample of 200 is closer to the file mean than the sample of 30, proving that larger samples eliminate sampling error. The metropolitan-only difference proves that metropolitan residence raises hourly wage by 0.4068 dollars.

First work without assistance.

1. Separate what is documented about the file from what the analyst invented about the target population, frame, selection probabilities, weights, and response process.
2. Explain what the two row-level SRS results demonstrate when the 526 rows are treated as a fixed teaching population, and why one realized pair does not prove that every larger SRS is closer.
3. Explain what the constructed metropolitan-only frame demonstrates and why it is not a claim about the original CPS sampling design.
4. Identify the first unsupported population generalization and the first unsupported causal claim.
5. Rewrite the memo in no more than three sentences, preserving the historical units, observed-record scope, teaching purpose, and limitations.

Then choose one of the following equivalent routes.

**AI comparison route:** Copy the prompt below into any AI system, compare its audit with yours, and record one correction it handled well and one population, design, or causal issue that still required your judgment.

```text
I am auditing a teaching analysis of the historical wage1 CSV. It contains
526 worker records and 24 variables from a 1976 Current Population Survey
extract. The CSV alone does not provide all original sampling-frame,
selection-probability, weighting, nonresponse, or fieldwork information.

The mean wage across all file rows is 5.8961 dollars per hour. Fixed-seed
simple random samples of 30 and 200 rows have means 5.3987 and 6.0320. A
deliberately constructed frame retains 380 metropolitan-coded rows, whose
mean is 6.3029; the other 146 rows have mean 4.8373, and the constructed-frame
minus complete-file difference is 0.4068.

Audit this claim: "The 526 rows are an SRS of every U.S. worker in 1976, so
5.8961 must represent the national mean. The sample of 200 proves that larger
samples eliminate sampling error. The metropolitan-only difference proves
that metropolitan residence raises wages by 0.4068 dollars."

Separate documented provenance from invented design details; observed-file
description from population generalization; one realized sample comparison
from a general sample-size principle; the constructed teaching frame from the
original survey design; and association from causation. Do not invent weights,
response rates, a target population, or a causal design. End with a defensible
three-sentence revision and list how each numerical claim can be checked.
```

**Complete non-AI route:** Make a two-column table labeled “documented” and “not supplied”; verify the six reported quantities from the displayed table or by running the linked script; state the finite-row meaning of each SRS; compare a general reduction in sampling variability with the chance ordering of two realized samples; identify the 146 rows excluded by the teaching construction; replace the national claim with an observed-file statement; replace “raises” with a descriptive difference; and end with the requested three-sentence revision.

<!-- Source lineage: Newly authored provenance and generalization audit using only the existing documented Class 6 wage1 notes, script, and verified output. The flawed memo and both audit routes are new; no new data, code, or empirical claim is introduced. -->

[Back to the problem map](#problem-map)

<a id="problem-5"></a>

### Problem 5. Random sampling does not create a causal effect

**Class-guide connection:** [Class 6: From a sample result to a defensible claim](../#c6-stop-6) and [Class 5: Auditing a causal claim](../../05-association-causation-and-confounding/#c5-stop-6)

Do not use AI, software, answer checks, or worked solutions until you have completed this problem.

A fictional state labor agency has a complete register of workers eligible for a training program. It draws an SRS of 500 workers, every selected worker supplies an outcome, and 120 of the sampled workers voluntarily enroll in training. One year later, mean earnings are 2,400 dollars higher among enrollees than among non-enrollees.

1. Identify the target population, sampling frame, sample, exposure, outcome, parameter represented by the observed 2,400-dollar difference, and statistic used to estimate it.
2. State the strongest population-level descriptive conclusion that the SRS and complete response can support, keeping “enrollee versus non-enrollee association” distinct from “effect of training.”
3. Let $D_i=1$ denote voluntary enrollment. Define $Y_i(1)$, $Y_i(0)$, and an average causal effect for the registered eligible workers. Identify the missing counterfactual and explain why random sampling does not make voluntary enrollees and non-enrollees comparable in their potential outcomes.
4. Give one mechanism that could make the observed enrollee gap larger than the causal effect and one that could make it smaller. Explain why the sign of selection is an empirical causal question rather than a consequence of SRS.
5. Suppose the agency instead randomly offers training to workers in the SRS and compares outcomes by assigned offer. State what the sampling mechanism and assignment mechanism each contribute to the resulting claim.
6. Suppose volunteers from outside the register are randomly assigned to an offer or control group. State what random assignment could support for those volunteers and why a broader population claim would still need an external-validity argument.

<!-- Source lineage: Newly authored final transfer connecting the Class 6 population-scope boundary to the current Class 5 potential-outcome and causal-design boundary. It previews the two-mechanism distinction developed in Class 7 without relying on later inference. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing all five problems. They confirm targets and main conclusions, not the reasoning a complete answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

The target is all employed county residents age 18 or older; the frame is the combined participating-employer lists; 400 records were selected; 248 people responded; $\mu$ is the target-population mean and $\bar x=3.25$ reported one-way trips among respondents. Workers at small, nonparticipating, or no listed employers can be uncovered. Random selection within the frame does not repair undercoverage or later nonresponse.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

Design A has $\binom84=70$ possible samples, each with probability $1/70$. Design B has $\binom42^2=36$ allowed samples, each with probability $1/36$. Every firm has inclusion probability $1/2$ under both. The balanced sample has probabilities $1/70$ and $1/36$; the three-manufacturing sample has probabilities $1/70$ and zero. Design B is therefore not an SRS from all eight.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

The current roster undercovers former employees and moves the frame mean downward under the stated overtime difference. Higher response among high-overtime current employees moves the respondent mean upward relative to the frame; supervisor-linked underreporting moves recorded values downward. The final net direction is unknown without magnitudes, and a census of the current roster does not restore former workers or truthful measurement.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

The file supports an observed-row mean of 5.8961 dollars per hour. The row SRSs demonstrate sampling variability around that fixed-file mean, not the original CPS design or guaranteed closeness in every larger sample. The metropolitan-only frame is a teaching construction. Neither national representativeness nor a causal metropolitan effect follows from the supplied CSV and summaries.

</details>

<details>
<summary>Reveal the compact check for Problem 5</summary>

An executed SRS with complete response can support a population description of the enrollee–non-enrollee association, but voluntary enrollment leaves the causal comparison unresolved. Random assignment of an offer supports comparing outcomes by assigned offer; random sampling separately supports population generalization. Random assignment among volunteers does not itself make them representative of all eligible workers.

</details>

## Worked solutions

Attempt every problem and inspect its compact check before opening the [complete worked solutions](solutions/). Each solution develops the target, calculation or design argument, interpretation, verification, limitation, and a visible nearby transfer; use it to reconstruct the method rather than copy a sentence.

## Personal learning record

Keep this record in your own notes; do not submit it or add it to the course repository.

- **Independent:** Which classifications, calculations, mechanisms, and scope statements did you complete without hints, AI, software, checks, or solutions?
- **Prompted:** Which parts did you complete after a cue, checklist, or partial hint?
- **Supplied:** Which calculations, design labels, bias directions, or revisions came from software, AI, a compact check, or a worked solution?
- **Remaining:** Which target, inclusion-probability calculation, mechanism, or population-versus-causal distinction could you not reconstruct on a blank page?
- **Transfer:** Did you complete Problem 5 unaided and keep random sampling separate from random assignment?
- **Next attempt:** Choose one remaining calculation and one scope statement and redo both unaided within the next two days.
