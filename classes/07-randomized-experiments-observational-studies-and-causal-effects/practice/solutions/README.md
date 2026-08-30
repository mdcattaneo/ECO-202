# ECO 202 Practice 7: Randomized Experiments, Observational Studies, and Causal Effects — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice:** [Return to Practice 7](../)  
**Class guide:** [Class 7: Randomized Experiments, Observational Studies, and Causal Effects](../../)

[← Return to Practice 7](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!IMPORTANT]
> These solutions are for study after a serious attempt. For each problem, identify the first point at which your reasoning differed from the solution, close this file, reconstruct that step without looking, and then attempt the nearby transfer before revealing its check.

<!-- Source lineage: These independently verified solutions correspond to the newly authored Fall 2026 Practice 7 problems. Numerical results come from the newly authored four-zone outreach example and documented jtrain2 output. The inherited Spring 2026 materials were used only to calibrate scope and difficulty; no protected solution or reserved assessment wording is reproduced. -->

## Solution map

| Solution | Main idea |
|---|---|
| [1. Two different random mechanisms](#solution-1) | Sampling, assignment, causal scope, and population scope |
| [2. One causal target, two realized assignments](#solution-2) | Fixed potential outcomes and assignment-varying estimates |
| [3. Complete, blocked, or matched-pair assignment?](#solution-3) | Assignment counts, restrictions, and pre-treatment design information |
| [4. What the `jtrain2` assignment supports](#solution-4) | Intention-to-treat contrasts, units, balance, and generalization |
| [5. Audit an overconfident experimental memo](#solution-5) | Claim-by-claim causal and computational audit |
| [6. Repair a self-selected workshop comparison](#solution-6) | Design repair, target, sampling, and remaining limitations |

<a id="solution-1"></a>

## Solution 1. Two different random mechanisms

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [Class 6: Population, sample, parameter, and statistic](../../../06-populations-samples-surveys-and-selection-bias/#c6-stop-1), [Class 6: Probability samples](../../../06-populations-samples-surveys-and-selection-bias/#c6-stop-3), and [Class 7: Random assignment is not random sampling](../../#c7-stop-4)

### Question and strategy

Ask two separate mechanism questions for every study: how did units enter the dataset, and how did study units enter treatment groups? Then attach the population and causal scope to the relevant mechanism.

### Complete solution

| Study | Entry into dataset | Entry into treatment groups | Strongest design-based conclusion |
|---|---|---|---|
| 1. Clinic reminder experiment | First 120 eligible arrivals; not random sampling | Lottery between text and phone reminders | An average causal effect of assigned reminder for the 120 enrolled patients under the implemented design; broader generalization requires an additional argument. |
| 2. Small-business software study | Stratified random sample from registered small businesses | Self-chosen software; no random assignment | A descriptive software–filing association with a probability-sampling route to the registered-business population; the causal effect of software choice remains unresolved. |
| 3. Water-report experiment | Simple random sample from residential utility accounts | Random assignment between graphical and text-only reports | An assignment-based average causal effect for the sampled accounts and, subject to sampling, implementation, and account-level analysis, a sampling-based route toward the utility's residential-account population. |
| 4. Renovation-rebate records | Selected voluntary rebate applicants; no probability sample is stated | Self-chosen installation method; no random assignment | A descriptive association for the recorded applicants. Neither a causal installation effect nor population generalization follows from the stated design. |

The units of assignment also matter. In Study 3, utility accounts receive report formats, so the causal comparison concerns the assigned account-level intervention and the outcome recorded at that level.

The phrase “the study was randomized” is incomplete because it does not reveal whether randomness selected study units, assigned treatments, or both. Random sampling addresses representation of a population; random assignment addresses comparability of treatment groups for a causal contrast.

### Verification and limitations

The classifications follow directly from the stated mechanisms. They do not promise perfect implementation, absence of missing outcomes, a sharply identical treatment version, or applicability to an unstated target population.

### Nearby transfer

A county draws a simple random sample of apartment buildings, then compares recycling rates between sampled buildings whose managers separately chose two different waste-collection contracts. What is randomized, and what claim remains unresolved?

<details>
<summary>Reveal the transfer check</summary>

Sampling is randomized, but contract choice is not. Under the sampling assumptions, the design can support a population-level descriptive association for county apartment buildings. The causal effect of contract choice remains unresolved because managers selected contracts rather than receiving random assignments.

</details>

[Back to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. One causal target, two realized assignments

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [From a causal question to an experiment](../../#c7-stop-1) and [What random assignment accomplishes](../../#c7-stop-2)

### Question and strategy

First calculate causal effects from the complete potential-outcome table without using an assignment. Then let each assignment reveal one potential outcome per unit and compare the resulting treated and control means.

### Complete solution

The experimental units are outreach zones A–D. The factor is assigned outreach protocol, with levels standard and enhanced. The standard treatment is the usual mailed notice, and the enhanced treatment is that notice plus a follow-up phone call; standard outreach is the control. The outcome is the number of eligible households, out of five contacted in each zone, that schedule an enrollment appointment within one week. Thus every outcome and effect is measured in scheduled appointments per zone. Let $D_i=1$ denote enhanced outreach and $D_i=0$ standard outreach.

The individual effects are:

| Unit | Calculation | Effect |
|---|---:|---:|
| A | $5-2$ | 3 |
| B | $5-4$ | 1 |
| C | $3-1$ | 2 |
| D | $5-5$ | 0 |

Therefore,

$$
\mathrm{ATE}=\frac{3+1+2+0}{4}=\frac{6}{4}=1.5
$$

appointments per zone.

Under Assignment I, A and B receive enhanced outreach. The observed outcomes are

$$
(Y_A,Y_B,Y_C,Y_D)=(5,5,1,5).
$$

The treated and control means are

$$
\overline Y_{D=1}=\frac{5+5}{2}=5,
\qquad
\overline Y_{D=0}=\frac{1+5}{2}=3,
$$

so

$$
\widehat\tau=5-3=2
$$

appointments per zone.

Under Assignment II, C and D receive enhanced outreach. The observed outcomes are

$$
(Y_A,Y_B,Y_C,Y_D)=(2,4,3,5).
$$

The treated and control means are

$$
\overline Y_{D=1}=\frac{3+5}{2}=4,
\qquad
\overline Y_{D=0}=\frac{2+4}{2}=3,
$$

so

$$
\widehat\tau=4-3=1
$$

appointment per zone.

The table of $Y_i(0)$ and $Y_i(1)$ defines the four unit effects and their ATE, so changing assignment does not change those quantities. Assignment changes which potential outcome becomes observed and which fixed zones enter each group mean.

The exact randomization enumeration is:

| Enhanced-outreach pair | $\widehat\tau$ |
|---|---:|
| AB | 2 |
| AC | $-0.5$ |
| AD | 2.5 |
| BC | 0.5 |
| BD | 3.5 |
| CD | 1 |

Their mean is

$$
\frac{2-0.5+2.5+0.5+3.5+1}{6}=1.5,
$$

which equals the ATE. Averaging over the assignment mechanism therefore recovers the causal target; Class 13 will name this an unbiasedness property. The range $[-0.5,3.5]$ shows randomization variability: one realized estimate need not equal the target and can even have the opposite sign from every nonnegative individual effect.

### Verification and limitations

Selecting one potential outcome per row reproduces both observed vectors. Independently calculating all six enhanced-outreach pairs reproduces the displayed estimates, mean, and range. The existing Class 7 script concerns a different six-unit example and does not verify this four-zone enumeration. The fictional complete table illustrates assignment logic; real studies do not reveal both potential outcomes for the same unit.

### Nearby transfer

Using the same table, suppose B and D receive enhanced outreach. Calculate the observed treated-minus-control mean difference. Does the ATE change?

<details>
<summary>Reveal the transfer check</summary>

The observed outcomes are $(2,5,1,5)$. The enhanced-outreach mean is $(5+5)/2=5$, the standard-outreach mean is $(2+1)/2=1.5$, and the difference is $5-1.5=3.5$ appointments per zone. The ATE remains 1.5 because the potential outcomes have not changed.

</details>

[Back to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Complete, blocked, or matched-pair assignment?

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [Completely randomized, block, and matched-pair designs](../../#c7-stop-3)

### Question and strategy

Count the treated sets permitted by each assignment rule. Then inspect which pre-treatment composition each rule fixes before outcomes are observed.

### Complete solution

Complete randomization chooses four of eight applicants, so it permits

$$
\binom{8}{4}=70
$$

treatment assignments.

Blocked randomization chooses two of four applicants in each record group, so it permits

$$
\binom{4}{2}\binom{4}{2}=6(6)=36
$$

assignments.

All three designs replicate both conditions across multiple experimental units. Complete and blocked randomization assign four applicants to treatment and four to control. The matched-pair design creates one treatment-control comparison inside each pair and replicates that comparison across four pairs. This experimental replication is distinct from enumerating many possible assignments for the same eight fixed units.

Matched-pair assignment uses a separate fair binary choice within each of four pairs and declares all resulting joint assignments equally likely, so it permits

$$
2^4=16
$$

assignments.

The treated set $\lbrace\mathrm{L1},\mathrm{L3},\mathrm{H1},\mathrm{H3}\rbrace$ contains two lower-record and two higher-record applicants and one member of every specified pair. It is allowed by all three designs.

The treated set $\lbrace\mathrm{L1},\mathrm{L2},\mathrm{H1},\mathrm{H2}\rbrace$ contains two applicants from each record group, so complete and blocked randomization permit it. It assigns both members of the L1–L2 pair and both members of the H1–H2 pair to treatment while assigning neither member of two other pairs, so the specified matched-pair design does not permit it.

Complete randomization fixes only the total treated count. Blocking additionally fixes the treated count within each broad pre-treatment record group. Matched pairs additionally force treatment-control representation within each specified pair, limiting realized imbalance in the variables used to form close pairs.

Blocks and pairs must be formed from pre-treatment information because using outcomes or post-treatment variables would make the assignment rule depend on consequences of treatment and compromise the intended design. The later analysis must respect which assignments were possible and which units were grouped by the mechanism; otherwise its comparison is calibrated to the wrong randomization.

A restriction helps when the blocking or matching information predicts the outcome or captures a meaningful source of heterogeneity. Poor groupings can provide little precision gain, and no restricted design guarantees a smaller realized error in every dataset.

### Verification and limitations

The counts can be verified by listing combinations within each design. The comparison describes allowed assignments and likely balance protection; it does not calculate later inferential quantities or claim that one design is universally superior.

### Nearby transfer

An analyst forms the pairs only after viewing the final outcomes, pairing treated and control units with similar observed outcomes. Is this the original matched-pair randomized design? Why or why not?

<details>
<summary>Reveal the transfer check</summary>

No. A matched-pair randomized design forms pairs from pre-treatment information and randomizes within them before outcomes are observed. Outcome-based pairing is a post-treatment analysis choice, not the mechanism that generated assignment, and it cannot retroactively create paired randomization.

</details>

[Back to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. What the `jtrain2` assignment supports

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [The `jtrain2` randomized assignment](../../#c7-stop-5)

### Question and strategy

Keep assignment, outcome, units, averaging, study population, and later target population separate. Use the randomized mechanism for the causal contrast and the documentation for the meaning and scale of every variable.

### Complete solution

One unit is one of the 445 participants. The treatment contrast is assignment to the training offer versus assignment to control. The experiment directly describes the finite group of randomized participants under the implemented historical demonstration; it does not automatically describe all unemployed people or a contemporary national population.

The earnings contrast is

$$
6.349145-4.554802=1.794343
$$

thousand 1982 dollars, or approximately $1{,}794$ in 1982 dollars. The unemployment-indicator contrast is

$$
0.243243-0.353846=-0.110603,
$$

which is approximately $-11.06$ percentage points. Thus the mean indicator for being unemployed throughout 1978 was lower in the assigned-training group.

Because the offer was randomly assigned, the strongest causal interpretation is an average effect of assignment to the training offer for the randomized participants, subject to faithful implementation and outcome observation. This is an intention-to-treat contrast: treatment status records the assigned offer. It is not automatically the effect of receiving or completing training, the effect per month in training, or an effect shared by every participant.

The pre-treatment differences are

$$
1.532056-1.266909=0.265147
$$

in thousands of 1982 dollars for 1975 earnings, up to the rounding shown in the table, and

$$
0.708108-0.834615=-0.126507
$$

for the no-degree indicator. Random assignment balances fixed pre-treatment characteristics over its possible assignments, not exactly in every realized assignment. A realized difference can therefore arise by chance without invalidating the mechanism. Dropping controls because their baseline values differ would alter the assigned comparison after observing its realization and can destroy the original design's comparability.

Random assignment does not by itself resolve noncompliance, missing outcomes or attrition, spillovers between participants, outcome measurement error, or multiple versions of training. External validity is separate: the participant recruitment, historical program, labor market, eligibility rules, and 1982-dollar outcomes may differ from a 2026 target. The number 445 affects neither the identity of the target population nor the substantive comparability of a later population.

Successful script execution verifies that the specified commands completed for that run. Reproducing arithmetic requires checking the intended documented data, group definitions, variable units, and calculations. The causal interpretation additionally depends on the historical random-assignment design, treatment definition, implementation, and preservation of the assigned comparison.

### Verification and limitations

The arithmetic agrees with the existing Class 7 script at the displayed precision. The assignment and variable meanings come from the local provenance documentation. No later inferential procedure is needed for this design-and-interpretation exercise.

### Nearby transfer

Suppose all recorded pre-treatment means were exactly equal across the assigned groups. Which two claims would still not follow: a receipt effect and broad generalization? Explain.

<details>
<summary>Reveal the transfer check</summary>

Exact recorded baseline balance would not turn assignment into receipt or completion, so the direct target would remain the effect of assignment to the offer. It would also not make a selected historical participant group representative of a different contemporary population; external validity still requires a separate argument.

</details>

[Back to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Audit an overconfident experimental memo

**Practice problem:** [Return to Problem 5](../#problem-5)  
**Class-guide connection:** [Audit the design before the estimate](../../#c7-stop-6)

### Question and strategy

Separate what the assignment mechanism supports from changes in treatment target, averaging level, units, population, sample composition, and computational verification.

### Complete solution

The claim that `train` was randomized is supported by the documented design. The claim about **completing** training is unsupported because `train` records assignment, not completion. The statement about **every participant** is unsupported because a difference in group means is an average contrast and does not reveal every individual effect.

The earnings magnitude is numerically close after translating 1.794343 thousand 1982 dollars to approximately 1,794 dollars in 1982 prices, but the memo omits the historical price units and turns an average assignment contrast into an exact individual completion effect. The unemployment difference is approximately $-11.06$ percentage points in a group mean indicator; it does not say that a fixed 11.06 percent of every possible population is individually prevented from being unemployed.

The `nodegree` difference is a realized pre-treatment imbalance compatible with random assignment. It does not by itself establish that randomization failed. Dropping controls without a degree after inspecting the realized groups would break the intended assigned comparison rather than repair it. Any design-preserving adjustment would have to be planned and justified using pre-treatment information while retaining the randomization logic.

Random assignment supports internal causal comparability for the assigned groups under implementation, but it does not make the selected historical participants representative of unemployed workers today. Compliance, attrition, spillovers, treatment versions, and outcome measurement can also matter after assignment.

A successful script and generated figure show that specified computational instructions completed and produced outputs. Reproducing the displayed values additionally requires the intended data, variables, group definitions, and arithmetic. Neither execution nor a figure verifies recruitment, treatment meaning, assignment integrity, implementation, causal scope, or external validity.

A defensible three-sentence rewrite is:

> In this historical randomized demonstration, participants assigned to the training offer had mean 1978 earnings approximately 1,794 dollars higher in 1982 prices and a mean unemployment-throughout-1978 indicator approximately 11.06 percentage points lower than participants assigned to control. Under the documented assignment and implemented study, these are average intention-to-treat contrasts for the randomized participants, not effects of completion or effects for every individual. Chance baseline imbalance does not by itself invalidate random assignment, while compliance, missing outcomes, spillovers, measurement, treatment versions, and applicability beyond the study group remain separate questions.

An external AI audit is evidence only after its arithmetic, variable meanings, design claims, and limits have been checked against the supplied information. Agreement between two fluent memos is not independent verification.

### Verification and limitations

Every corrected number can be reproduced from the table. The design conclusion depends on the documented random assignment and the continued use of assigned groups; the audit does not independently establish every historical implementation detail.

### Nearby transfer

Suppose outcome records are much more likely to be missing in the assigned-training group than in control. Does random assignment alone make the comparison among observed outcomes causal? What must be audited?

<details>
<summary>Reveal the transfer check</summary>

No. Differential attrition can make the observed-outcome groups differ even when original assignment was random. The analyst must report missingness by assignment, preserve the original assignment groups, investigate why outcomes are missing, and state what assumptions or design features would be needed to interpret the observed comparison.

</details>

[Back to the solution map](#solution-map)

<a id="solution-6"></a>

## Solution 6. Repair a self-selected workshop comparison

**Practice problem:** [Return to Problem 6](../#problem-6)  
**Class-guide connection:** [Completely randomized, block, and matched-pair designs](../../#c7-stop-3), [Random assignment is not random sampling](../../#c7-stop-4), and [Audit the design before the estimate](../../#c7-stop-6)

### Question and strategy

Define a treatment that can be assigned, identify the finite causal target, replace self-selection with a known assignment mechanism, and keep population recruitment and post-assignment limitations separate.

### Complete solution

One unit is one eligible applicant in the study pool. Define treatment as an offer of access to a specified résumé workshop at a stated time and format, with control receiving no such offer during the study period. Let $D_i=1$ denote assignment to the offer, $Y_i(1)$ denote applicant $i$'s six-month earnings under assignment to the offer, and $Y_i(0)$ denote the same applicant's earnings under assignment to control. For the $N$ eligible study applicants, the finite-sample target is

$$
\mathrm{ATE}=\frac{1}{N}\sum_{i=1}^{N}\bigl[Y_i(1)-Y_i(0)\bigr].
$$

The original attendance groups are self-selected. Motivation, prior earnings, work experience, education, job-search intensity, or access to other services could affect both workshop choice and later earnings. Their observed mean difference therefore combines any workshop-related effect with pre-existing group differences and does not by itself recover the missing potential outcomes.

One complete-randomization repair is to determine the eligible study pool before assignment, choose in advance how many offers are available while retaining multiple applicants in both assigned conditions, and select the offer group uniformly at random. The multiple separately randomized units provide replication of the treatment-control comparison. The primary comparison remains mean earnings by assigned offer, including applicants according to original assignment whether or not they attend. This supports an average intention-to-treat effect for the randomized study pool under the implemented design.

A block-randomized alternative would define pre-treatment earnings categories before assignment and randomly allocate replicated offer and control units within each category. A matched-pair alternative would form several pairs from pre-treatment variables before assignment and randomly offer the workshop to one applicant in each pair. Either restricted design can reduce meaningful realized baseline imbalance when its pre-treatment information predicts the outcome; the analysis must preserve the replicated blocks or pairs generated by the assignment mechanism.

No probability-sampling mechanism is stated for the eligible applicant pool. Random assignment addresses the causal comparison within that pool, not whether the pool represents all career-center clients, all job seekers, or another population.

Remaining limitations include noncompliance with an offer, missing six-month outcomes, spillovers between applicants, varying workshop delivery, earnings measurement, and applicability beyond the study pool. A two-sentence conclusion template is:

> Among the eligible applicants randomized in this study, mean six-month earnings were [amount and units] [higher/lower] for applicants assigned an offer of the specified workshop than for applicants assigned to control. Under the implemented random assignment, this is an average effect of the offer for the study group; it is not automatically an effect of attendance for every applicant or a result for a broader population.

### Verification and limitations

The repair makes the assignment mechanism explicit before outcomes are observed and preserves analysis by assignment. Its causal interpretation still requires the implemented offer, observed outcomes, and absence or treatment of important interference and attrition problems.

### Nearby transfer

Suppose applicants frequently share workshop materials with control-group friends. What part of the design needs repair or reinterpretation?

<details>
<summary>Reveal the transfer check</summary>

The individual-level comparison may be contaminated by spillovers because one applicant's assignment can affect another applicant's outcome. The design could randomize groups that share information, limit or measure spillovers, or redefine the causal target to include the implemented exposure network. The unit of assignment and analysis would then need to match the chosen design.

</details>

[Back to the solution map](#solution-map)

## Personal solution-study record

- **Independent:** Solution steps or transfers I reconstructed before looking: `____________________________`
- **Prompted:** Steps I could complete only after a strategy cue or partial check: `____________________________`
- **Supplied:** Reasoning, calculations, or wording I learned directly from these solutions or AI: `____________________________`
- **Remaining:** One distinction or calculation I still cannot reproduce from a blank page: `____________________________`
- **Transfer:** Nearby transfers completed before revealing their checks: `___ / 6`
