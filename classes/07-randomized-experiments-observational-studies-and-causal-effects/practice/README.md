# ECO 202 Practice 7: Randomized Experiments, Observational Studies, and Causal Effects

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 7: Randomized Experiments, Observational Studies, and Causal Effects](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 7

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** Complete each unaided stage before opening its check or the worked solutions. The purpose is to make your design reasoning, calculations, and limits of interpretation visible to you.

<!-- Source lineage: Scope and difficulty were calibrated against Econ202-UlrichMueller/LectureNotes.tex, especially lines 748--833 and 929--963, and Spring 2026 Problem Set 2. All problem wording, organization, audit tasks, transfers, and the four-unit outreach example are newly authored for the Fall 2026 Class 7 guide. The jtrain2 results come from the current course-created Class 7 package; no protected exercise or reserved assessment question is reproduced. -->

## Purpose and workload

The six-problem core route should take about 60–75 minutes. It begins by separating random sampling from random assignment, builds experimental logic in a complete four-unit table, compares three assignment mechanisms, interprets the historical `jtrain2` randomized assignment, audits a flawed design memo, and ends with an unaided design repair. This is a deliberately longer practice because students must construct two complete potential-outcome calculations and two design audits rather than only read their conclusions.

| Stage | Suggested time | Work |
|---|---:|---|
| Separate sampling from assignment | 8–10 minutes | Problem 1 |
| Calculate causal quantities under two assignments | 12–15 minutes | Problem 2 |
| Compare assignment mechanisms | 9–11 minutes | Problem 3 |
| Interpret the `jtrain2` experiment | 11–13 minutes | Problem 4 |
| Audit an experimental claim | 11–14 minutes | Problem 5 |
| Repair a design without assistance | 9–12 minutes | Problem 6 |

Running the existing Class 7 R script, using an external AI system, and studying worked solutions take additional time. Neither software nor AI is required for any core problem.

## What you must be able to do independently

After completing this practice, you should be able to:

- distinguish random sampling from random assignment and state what each mechanism can support;
- identify the units, factor and levels, treatments, assignment mechanism, outcomes, target population, and causal target in an experiment;
- define $D_i$, $Y_i(1)$, $Y_i(0)$, individual effects, the finite-sample ATE, observed outcomes, and a treated-minus-control estimate;
- explain why the ATE remains fixed while an estimate varies across random assignments;
- explain comparison, randomization, and replication, then compare completely randomized, block-randomized, and matched-pair designs and identify which assignments each permits;
- interpret assignment-based `jtrain2` comparisons as intention-to-treat effects for the randomized study participants while preserving units and direction;
- distinguish chance baseline imbalance from a failed randomization and distinguish internal causal credibility from broad generalization; and
- audit and repair a design without treating successful code execution, sample size, or baseline balance as a complete causal argument.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Two different random mechanisms](#problem-1) | Spiral back to Class 6 and separate sampling from assignment. | Unaided retrieval |
| [2. One causal target, two realized assignments](#problem-2) | Calculate potential-outcome quantities and two randomization estimates. | Unaided calculation |
| [3. Complete, blocked, or matched-pair assignment?](#problem-3) | Compare the assignments and protections built into three designs. | Design calculation |
| [4. What the `jtrain2` assignment supports](#problem-4) | Interpret assignment-based outcome and balance comparisons. | Empirical design audit |
| [5. Audit an overconfident experimental memo](#problem-5) | Check causal, computational, and generalization claims. | Non-AI route or AI comparison |
| [6. Repair a self-selected workshop comparison](#problem-6) | Build a credible design and state what remains unresolved. | Final unaided transfer |

## Core route

<a id="problem-1"></a>

### Problem 1. Two different random mechanisms

**Class-guide connection:** [Class 6: Population, sample, parameter, and statistic](../../06-populations-samples-surveys-and-selection-bias/#c6-stop-1), [Class 6: Probability samples](../../06-populations-samples-surveys-and-selection-bias/#c6-stop-3), and [Class 7: Random assignment is not random sampling](../#c7-stop-4)

For each study, record whether it uses random sampling, random assignment, both, or neither. Then state the strongest conclusion the stated design can support and name the population to which that conclusion directly applies.

1. A clinic enrolls the first 120 eligible patients arriving during one week, then uses a lottery to assign each enrolled patient to a text reminder or a phone reminder before the next appointment.
2. A state tax agency draws a stratified random sample of registered small businesses, records each business's self-chosen payroll software, and compares late-filing rates across software groups.
3. A water utility draws a simple random sample of residential accounts from its service list, then randomly assigns each sampled account to receive either a graphical or a text-only conservation report.
4. A housing analyst studies only households that applied for a voluntary renovation rebate and compares later energy use between applicants who chose contractor installation and applicants who chose do-it-yourself installation.

For each study, identify separately:

- the mechanism that places units in the dataset;
- the mechanism, if any, that places units in treatment groups;
- whether the evidence supports a causal comparison; and
- whether a design-based argument supports generalization to a broader population.

Finish with one sentence explaining why the phrase “the study was randomized” is incomplete.

<!-- Source lineage: Newly authored four-study classification using the sampling-versus-assignment distinction in the current Classes 6 and 7 guides. -->

[Back to the problem map](#problem-map)

<details>
<summary>Compact check for Problem 1</summary>

1. Random assignment only: an assignment-based causal comparison for the 120 enrolled patients, with broader generalization requiring an additional argument.
2. Random sampling only: a population-level descriptive association for registered small businesses under the stratified sampling design, not an assignment-based causal effect of software choice.
3. Both: an assignment-based causal comparison for the sampled accounts and a sampling-based route toward the utility's residential-account population, subject to implementation and account-level assignment.
4. Neither: a descriptive association for the selected rebate applicants; neither a causal installation effect nor broader population generalization follows from the stated design.

The two questions are different: sampling asks who enters the study; assignment asks which treatment a study unit receives.

</details>

<a id="problem-2"></a>

### Problem 2. One causal target, two realized assignments

**Class-guide connection:** [From a causal question to an experiment](../#c7-stop-1) and [What random assignment accomplishes](../#c7-stop-2)

An outreach organization divides an eligible service area into four outreach zones, A–D. One experimental unit is one zone. The factor is the assigned outreach protocol, with levels **standard** and **enhanced**. The standard treatment uses the usual mailed notice; the enhanced treatment adds a follow-up phone call to the same notice. The outcome is the number of eligible households, out of five contacted in each zone, that schedule an enrollment appointment within one week. The following complete fictional table displays both potential outcomes only so that every causal quantity can be checked.

| Unit | $Y_i(0)$ | $Y_i(1)$ |
|---|---:|---:|
| A | 2 | 5 |
| B | 4 | 5 |
| C | 1 | 3 |
| D | 5 | 5 |

1. Identify the units, factor, its two levels, the two complete treatments, the control, and the outcome with its units. Let $D_i=1$ denote enhanced outreach and $D_i=0$ denote standard outreach.
2. Calculate every individual effect $Y_i(1)-Y_i(0)$ and the finite-sample average treatment effect

$$
\mathrm{ATE}=\frac{1}{4}\sum_{i=1}^{4}\bigl[Y_i(1)-Y_i(0)\bigr].
$$

3. Under Assignment I, zones A and B receive enhanced outreach. Construct all four observed outcomes and calculate

$$
\widehat\tau=\overline Y_{D=1}-\overline Y_{D=0}.
$$

4. Under Assignment II, zones C and D receive enhanced outreach. Repeat the observed-outcome construction and calculate $\widehat\tau$.
5. Explain why the potential outcomes and ATE are fixed across the two assignments while the observed outcomes and $\widehat\tau$ change.
6. There are $\binom{4}{2}=6$ equally likely assignments when exactly two of the four zones receive enhanced outreach. Enumerate the six possible enhanced-outreach pairs and calculate $\widehat\tau$ for each. Verify that the estimates have mean 1.5 and range from $-0.5$ to 3.5, then explain what each fact teaches about random assignment.

<!-- Source lineage: Newly authored four-zone outreach example and exact randomization enumeration; it does not reuse the Class 7 six-unit table or a protected exercise. -->

[Back to the problem map](#problem-map)

<details>
<summary>Compact check for Problem 2</summary>

The individual effects are $(3,1,2,0)$ appointments and the ATE is 1.5 appointments per zone. Assignment I produces observed outcomes $(5,5,1,5)$ and $\widehat\tau=2$. Assignment II produces $(2,4,3,5)$ and $\widehat\tau=1$. For enhanced-outreach pairs AB, AC, AD, BC, BD, and CD, the estimates are $2,-0.5,2.5,0.5,3.5,$ and $1$; their mean is 1.5 and their range is $[-0.5,3.5]$.

</details>

<a id="problem-3"></a>

### Problem 3. Complete, blocked, or matched-pair assignment?

**Class-guide connection:** [Completely randomized, block, and matched-pair designs](../#c7-stop-3)

Eight eligible applicants are grouped by a pre-treatment record into four lower-record applicants L1–L4 and four higher-record applicants H1–H4. A program can offer treatment to four applicants. Compare these designs:

- **Completely randomized:** choose any four of the eight applicants for treatment.
- **Blocked:** choose exactly two of L1–L4 and exactly two of H1–H4 for treatment.
- **Matched pairs:** form the pre-treatment pairs $(\mathrm{L1},\mathrm{L2})$, $(\mathrm{L3},\mathrm{L4})$, $(\mathrm{H1},\mathrm{H2})$, and $(\mathrm{H3},\mathrm{H4})$, then treat one applicant in each pair.

1. Calculate the number of possible treatment assignments under each design.
2. Decide whether the treated set $\lbrace\mathrm{L1},\mathrm{L3},\mathrm{H1},\mathrm{H3}\rbrace$ is possible under each design.
3. Decide whether the treated set $\lbrace\mathrm{L1},\mathrm{L2},\mathrm{H1},\mathrm{H2}\rbrace$ is possible under each design.
4. State how each design provides replication and which type of realized pre-treatment imbalance it directly limits.
5. Explain why blocks and pairs must be formed using pre-treatment information and why the analysis must respect the assignment mechanism.
6. Does a blocked or matched-pair design guarantee a more precise estimate than complete randomization in every setting? Explain what must be true for the restriction to help.

<!-- Source lineage: Newly authored eight-applicant design comparison aligned with the current Class 7 design taxonomy and the inherited course's block/pair scope. -->

[Back to the problem map](#problem-map)

<details>
<summary>Compact check for Problem 3</summary>

The designs allow $\binom{8}{4}=70$, $\binom{4}{2}^2=36$, and $2^4=16$ assignments. All three apply each condition to multiple units. The blocked design replicates treatment and control within each block. The matched-pair design creates one treatment-control comparison inside each pair and replicates that comparison across four pairs. The first treated set is possible under all three designs. The second is possible under complete and blocked randomization but violates the specified pairs. Restrictions help when the pre-treatment grouping predicts the outcome or otherwise removes meaningful imbalance without compromising the design.

</details>

<a id="problem-4"></a>

### Problem 4. What the `jtrain2` assignment supports

**Class-guide connection:** [The `jtrain2` randomized assignment](../#c7-stop-5)

The historical [`jtrain2` data documentation](../data/README.md) describes 445 participants in a randomized job-training demonstration. One observational unit is one participant. The variable `train` records assignment to the training offer, not training receipt or months completed. Earnings variables are measured in thousands of 1982 dollars, and `unem78` indicates unemployment throughout 1978.

The existing [Class 7 script](../class-07-randomized-experiments.R) reproduces the following comparisons without conducting later inference:

| Quantity | Assigned training | Assigned control | Training-minus-control difference |
|---|---:|---:|---:|
| Participants | 185 | 260 | — |
| Mean 1978 earnings (`re78`) | 6.349145 | 4.554802 | 1.794343 |
| Mean 1978 unemployment indicator (`unem78`) | 0.243243 | 0.353846 | $-0.110603$ |
| Mean pre-treatment 1975 earnings (`re75`) | 1.532056 | 1.266909 | 0.265146 |
| Proportion without a degree (`nodegree`) | 0.708108 | 0.834615 | $-0.126507$ |

1. State the treatment contrast, the outcome units, and the finite group of participants directly described by the experiment.
2. Interpret the `re78` difference in dollars and the `unem78` difference in percentage points. Keep the signs and assignment-based wording visible.
3. State the strongest causal interpretation supported by random assignment. Explain why it is an intention-to-treat interpretation and why it does not claim the effect of completing training or of each additional month of training.
4. The two pre-treatment means are not exactly equal. Explain why this is compatible with valid random assignment and why dropping units until the baseline means match would not automatically improve the design.
5. Identify two threats that random assignment does not remove from this implemented study and explain why a sample of 445 participants does not by itself justify a claim about all unemployed workers in 2026.
6. Separate three claims: the script ran, the displayed arithmetic is reproducible, and the causal interpretation follows from the design. What evidence verifies each claim?

You can complete the problem from the supplied table. Running the linked script is an optional reproducibility check; memorizing R syntax is not part of the task.

<!-- Source lineage: Uses only the documented Wooldridge jtrain2 CSV and verified output already distributed with the Class 7 package. Treatment is assignment, not receipt; no later inferential procedure is introduced. -->

[Back to the problem map](#problem-map)

<details>
<summary>Compact check for Problem 4</summary>

Assignment to the training offer is associated by design with about $1{,}794$ higher mean 1978 earnings and an 11.06-percentage-point lower mean 1978 unemployment indicator among the randomized participants. These are assignment-based average contrasts for the study group, not individual effects, receipt effects, or automatic claims about a later national population. Baseline differences can arise by chance under random assignment.

</details>

<a id="problem-5"></a>

### Problem 5. Audit an overconfident experimental memo

**Class-guide connection:** [Audit the design before the estimate](../#c7-stop-6)

An AI system receives the Class 7 table and writes:

> Because `train` was randomized, the group means prove that completing training raises every participant's 1978 earnings by exactly 1,794 dollars and prevents unemployment for 11.06 percent of every population. The baseline `nodegree` difference invalidates the experiment, so dropping controls without a degree repairs it. With 445 observations, the result automatically generalizes to unemployed workers today. The R script and randomization figure ran successfully, so every claim is verified.

First work without assistance.

1. Break the memo into checkable claims and label each as supported, partly supported but overstated, or unsupported.
2. Correct the treatment target, outcome units, averaging language, and population scope.
3. Explain why the baseline difference neither proves failed randomization nor licenses outcome-driven deletion or redefinition of the assigned groups.
4. Separate internal causal credibility from external validity and list two implementation or measurement limitations that random assignment does not erase.
5. Explain exactly what successful script and figure generation verify and what they cannot verify.
6. Rewrite the memo in no more than three sentences as the strongest defensible conclusion from the supplied design and output.

Then choose one route.

**AI comparison route:** Copy the prompt below into any AI system only after writing your own audit. Compare its response with yours and record one claim it handled well and one assumption, unit, or design issue you still had to resolve yourself.

```text
I am auditing a memo about a historical randomized job-training demonstration
with 445 participants. The recorded treatment is assignment to a training
offer, not receipt. Training-minus-control mean differences are 1.794343 in
thousands of 1982 dollars for 1978 earnings, -0.110603 for an indicator of
being unemployed throughout 1978, 0.265146 for pre-treatment 1975 earnings,
and -0.126507 for a pre-treatment no-degree indicator.

Audit this memo claim by claim: "Because train was randomized, the group means
prove that completing training raises every participant's 1978 earnings by
exactly 1,794 dollars and prevents unemployment for 11.06 percent of every
population.
The baseline nodegree difference invalidates the experiment, so dropping
controls without a degree repairs it. With 445 observations, the result
automatically generalizes to unemployed workers today. The R script and
randomization figure ran successfully, so every claim is verified."

Separate assignment from receipt, averages from individual effects, dollars
from thousands of 1982 dollars, proportion differences from individual
outcomes, random assignment from exact baseline balance, internal validity
from external validity, and execution from statistical justification. Do not
introduce later inferential procedures. Give an independent arithmetic or design
check for every claim that can be checked, and provide a three-sentence
revision limited to the supplied evidence.
```

**Complete non-AI route:** Recalculate the two outcome differences; label `train` as assignment; translate the earnings and indicator units; replace individual language with average language; retain all randomized groups as assigned; explain chance baseline imbalance; identify compliance, attrition, interference, measurement, and treatment-version questions; define the study population separately from any later target population; and keep software execution separate from design justification.

<!-- Source lineage: Newly authored flawed memo and generic audit prompt using only the verified Class 7 output and data documentation. No generated inference, protected wording, or reserved assessment material is reproduced. -->

[Back to the problem map](#problem-map)

<details>
<summary>Compact check for Problem 5</summary>

The supported core is an average assignment-based contrast for the historical randomized participants. Receipt, individual certainty, universal population coverage, deliberate deletion, automatic generalization, and proof by successful execution are unsupported. A defensible audit preserves assignment, units, group averages, study scope, and unresolved implementation and external-validity limits.

</details>

<a id="problem-6"></a>

### Problem 6. Repair a self-selected workshop comparison

**Class-guide connection:** [Completely randomized, block, and matched-pair designs](../#c7-stop-3), [Random assignment is not random sampling](../#c7-stop-4), and [Audit the design before the estimate](../#c7-stop-6)

Do not use AI, software, compact checks, or worked solutions until you have completed this problem.

A career center lets eligible applicants choose whether to attend a résumé workshop, then compares their earnings six months later. The attendees have higher mean earnings, and the center calls the difference the causal effect of the workshop.

1. Define the units, a sharply stated treatment or offer, $D_i$, $Y_i(1)$, $Y_i(0)$, and a finite-sample ATE.
2. Explain why the self-selected comparison does not by itself estimate that ATE. Name two pre-treatment variables that could affect both workshop choice and later earnings.
3. Repair the design using one of the following assignment mechanisms: complete randomization of a workshop offer, blocking by pre-treatment earnings, or matched pairs based on pre-treatment information. State the mechanism precisely, explain how the design provides replicated treated and control comparisons, and identify the causal contrast it supports.
4. State separately whether the applicant pool was obtained through probability sampling and what population the design directly describes.
5. Name two important limitations that could remain after valid random assignment.
6. Write a two-sentence conclusion template that an analyst could complete after observing the assignment-based mean difference, without claiming a receipt effect, an effect for every applicant, or automatic generalization.

<!-- Source lineage: Newly authored design-repair transfer using the assignment, sampling, and implementation distinctions developed in the current Class 7 guide. -->

[Back to the problem map](#problem-map)

<details>
<summary>Compact check for Problem 6</summary>

A credible repair randomly assigns a defined workshop offer among the eligible study applicants, applies each condition to multiple units—within prespecified blocks or pairs when used—and compares outcomes by assigned offer. It supports an average assignment effect for that study group under the implemented design. Sampling, noncompliance, attrition, spillovers, measurement, treatment versions, and applicability beyond the applicants remain separate questions.

</details>

## Personal practice record

Record this privately for yourself; nothing is submitted.

- **Independent:** Problems or parts I completed before hints, checks, AI, or solutions: `____________________________`
- **Prompted:** Steps I completed after a cue, question, or compact check: `____________________________`
- **Supplied:** Calculations, wording, or reasoning I received from AI or a worked solution: `____________________________`
- **Remaining:** Distinctions, calculations, or limitations I still cannot reconstruct unaided: `____________________________`
- **Transfer:** One nearby design question I will attempt without help: `____________________________`

After studying a worked solution, close it and reproduce the central calculation or design argument from a blank page. Fluency while reading is not the same as independent command.

## Source and asset record

This practice uses the current [Class 7 guide](../), its [documented `jtrain2` data](../data/README.md), and its [reproducible R script](../class-07-randomized-experiments.R). The four-zone outreach example is self-contained and was verified by exact enumeration rather than by the Class 7 script. The public data copy is derived from Jeffrey M. Wooldridge's `wooldridge` R package and documented in the linked provenance file.

The scope was cross-checked against the inherited Spring 2026 lecture notes and Problem Set 2. Those private and copyrighted references informed continuity and difficulty only; no protected problem, solution, or reserved assessment wording is reproduced here.
