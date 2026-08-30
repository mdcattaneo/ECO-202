# ECO 202 Practice 6: Populations, Samples, Surveys, and Selection Bias — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 6: Populations, Samples, Surveys, and Selection Bias](../)  
**Class guide:** [Class 6: Populations, Samples, Surveys, and Selection Bias](../../)

[← Return to Practice 6](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded study resource.** Attempt each problem and inspect its compact check before reading the corresponding solution. Compare the target, selection process, calculation, mechanism, interpretation, and limitation—not only the final label or number—then attempt the nearby transfer before revealing its check.

<!-- Source lineage: Student-facing solutions for the newly authored Fall 2026 Practice 6 module. Every classification, probability, direction, empirical statement, revision, and transfer was independently reconstructed from the current Class 5--6 guides and the existing documented Class 6 wage1 output. Inherited Spring materials were used only to calibrate scope and expected fluency; no protected solution or reserved exam answer is reproduced. -->

## How to study these solutions

For each problem, identify the first point at which your reasoning differs from the solution. Close the file, reconstruct that step without looking, and attempt the nearby transfer. Reading a correct population or causal-scope statement is not evidence that you can produce it independently.

## Solution map

| Solution | Durable target |
|---|---|
| [1. Reconstruct a survey evidence chain](#solution-1) | Keep the target, frame, selected sample, responding sample, parameter, and statistic distinct. |
| [2. Eight firms, equal inclusion, different designs](#solution-2) | Define a design through all possible samples and their probabilities. |
| [3. Name the mechanism before its direction](#solution-3) | Defend each direction through a selection or measurement mechanism. |
| [4. What can the historical `wage1` file represent?](#solution-4) | Separate provenance, row sampling, population generalization, and causality. |
| [5. Random sampling does not create a causal effect](#solution-5) | Separate the sampling mechanism from the treatment-assignment mechanism. |

<a id="solution-1"></a>

## Solution 1. Reconstruct a survey evidence chain

**Practice problem:** [Return to the exact Problem 1 prompt](../#problem-1)  
**Class-guide connection:** [From a question to population and sample](../../#c6-stop-1) and [Target populations and sampling frames](../../#c6-stop-2)

### Question and strategy

Move through the evidence in chronological order: define whom the question targets, identify who can enter the selection mechanism, record who was selected and who responded, and only then attach the statistic to the population it directly describes.

### Complete solution

The observational unit is one employed county resident age 18 or older. More precisely, a final observed unit is one such resident whose employer record was selected and who completed the survey. The target population is all employed county residents age 18 or older. The sampling frame is the combined email lists from participating employers with at least 50 employees. The selected sample consists of the 400 randomly chosen records, and the responding sample consists of the 248 completed surveys.

Let $X_i$ be the number of one-way public-transit trips taken last week by target unit $i$. For a finite target population of size $N$, the target parameter is

$$
\mu=\frac{1}{N}\sum_{i=1}^{N}X_i.
$$

The available statistic is the respondent mean

$$
\bar x=\frac{1}{248}\sum_{i\in\mathrm{respondents}}x_i=3.25
$$

reported one-way trips per respondent during the stated week.

An employed resident at an employer with fewer than 50 employees, at a nonparticipating employer, or without a valid email entry cannot enter this frame. Random selection from the frame therefore cannot include every member of the target population. In addition, only 248 of the 400 selected records responded. Even if the 400 form an SRS from the frame, the 248 respondents need not form an SRS from the frame or from the target population because response may depend on transit use.

The strongest conclusion without additional information is:

> Among the 248 respondents reached through participating larger employers, the mean reported number of one-way public-transit trips during the stated week was 3.25.

A broader estimate needs evidence about frame coverage and the relationship between inclusion in participating-employer lists and transit use. It also needs information about nonresponse, measurement, duplicate or invalid records, any weighting, and whether the survey week represents the period in the target question.

### Verification and limitations

The denominator 248 verifies that 3.25 is a respondent statistic, not a statistic calculated from all 400 selected records. No sample-size calculation can establish the missing frame and response bridges. Redefining the target can remove one mismatch, but it cannot retroactively make nonrespondents observed.

### Nearby transfer

Suppose the target is narrowed to all employees appearing on the combined participating-employer lists. Does $\bar x=3.25$ then estimate the target mean without any further assumptions? Explain before revealing the check.

<details>
<summary>Reveal the transfer check</summary>

Narrowing the target removes the stated frame–target mismatch, but 152 selected records still did not respond. The respondent mean estimates the narrowed target mean only with a defensible response or adjustment argument; random selection of 400 records does not make the 248 responses representative automatically.

</details>

[Back to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Eight firms, equal inclusion, different designs

**Practice problem:** [Return to the exact Problem 2 prompt](../#problem-2)  
**Class-guide connection:** [Probability samples, SRS, and stratification](../../#c6-stop-3)

### Question and strategy

Count complete samples before looking at individual firms. An SRS requires all four-firm subsets to have the same probability; the stratified design permits only subsets with exactly two firms from each sector.

### Complete solution

Design A selects four of eight firms, so it has

$$
\binom84=70
$$

possible samples. Because the design is an SRS, each four-firm subset has probability $1/70$.

Design B first selects two of four manufacturing firms and then two of four service firms. It has

$$
\binom42\binom42=6\times6=36
$$

possible full samples. The mechanism declares all 36 cross-sector combinations equally likely, so each allowed full sample has probability $1/36$.

Under Design A, $M_1$ appears in every four-firm sample formed by selecting three of the other seven firms. Its inclusion probability is

$$
\frac{\binom73}{\binom84}=\frac{35}{70}=\frac12.
$$

Under Design B, $M_1$ is one of two firms selected from the four-firm manufacturing stratum, so its inclusion probability is $2/4=1/2$. Symmetry gives the same result for every firm within each design.

The sample $\lbrace M_1,M_2,S_1,S_2\rbrace$ contains two firms from each sector. Its probability is $1/70$ under Design A and $1/36$ under Design B. The sample $\lbrace M_1,M_2,M_3,S_1\rbrace$ is one of the 70 four-firm subsets under Design A, so its probability is $1/70$; it violates Design B's two-per-sector rule, so its probability is zero under Design B.

Design B is a probability sample because its chance mechanism and the probabilities of all possible samples are known. It is stratified because selection occurs separately within predetermined sectors. It is not an SRS from the full population because 34 of the 70 four-firm subsets—including every three-one and four-zero sector split—have probability zero, while its 36 allowed subsets have probability $1/36$ rather than $1/70$. Equal individual inclusion probabilities do not make the full distributions over samples equal.

### Verification and limitations

The Class 6 script independently checks the counts 70 and 36 and the individual inclusion probability $1/2$. Those three outputs do not alone prove the design labels; the allowed and forbidden full samples supply the defining distinction.

### Nearby transfer

Design C selects one manufacturing firm and three service firms. Count its possible samples, calculate a manufacturing firm's inclusion probability and a service firm's inclusion probability, and decide whether Design C is an SRS from all eight firms.

<details>
<summary>Reveal the transfer check</summary>

Design C has $\binom41\binom43=4\times4=16$ possible samples. Each manufacturing firm has inclusion probability $1/4$, while each service firm has inclusion probability $3/4$. It is a probability sample and a stratified design, but not an SRS: inclusion probabilities differ and only one-three sector splits are possible.

</details>

[Back to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Name the mechanism before its direction

**Practice problem:** [Return to the exact Problem 3 prompt](../#problem-3)  
**Class-guide connection:** [How surveys and samples become biased](../../#c6-stop-4) and [Random variability is not bias](../../#c6-stop-5)

### Question and strategy

Compare adjacent stages rather than jumping directly from the final reports to the target. A direction is justified only when the supplied mechanism says how the excluded, overrepresented, or altered values differ.

### Complete solution

At frame construction, the December 31 roster creates **undercoverage** because former employees who belong to the all-2025 target have no path into the frame. At response, **differential nonresponse** occurs because selected current employees with more than 8 overtime hours are more likely to complete the survey. During measurement, **response bias** occurs because respondents underreport overtime when supervisors collect answers directly.

Former employees average 12 overtime hours and current employees average 5, so excluding former employees moves the current-frame mean downward relative to the all-2025 target mean. This direction follows from the stated group means, not from the word *undercoverage* alone.

Within the current frame, people above 8 overtime hours have higher values by definition and are twice as likely to respond. Their overrepresentation moves the respondent mean upward relative to the true current-frame mean. This conclusion uses the stated outcome-linked response mechanism rather than the response rate by itself.

Respondents tend to report fewer hours than they truly worked when supervisors collect the answers. That measurement process moves the recorded respondent mean downward relative to the respondents' true mean.

The final direction relative to the target mean remains unknown. Frame undercoverage and underreporting push downward, while differential response pushes upward, but the supplied facts do not state their relative magnitudes. Adding signs without sizes cannot determine the net discrepancy.

Surveying everyone on the current roster removes row-selection variability within that frame and eliminates nonresponse only if everyone truly supplies a usable answer. It still excludes former employees from the target and does not make supervisor-collected reports accurate. A census of the wrong frame with biased measurement can be precise about the wrong quantity.

### Verification and limitations

Each direction can be checked by asking what would happen if only that stage changed. The exercise does not establish the amount of any bias, and real audits would need response propensities, validated overtime measures, target weights, and records for omitted former employees.

### Nearby transfer

Keep the same target and frame, but suppose low-overtime current employees are twice as likely to respond and answers are privately verified against payroll records. Which directions change, and is the final frame-to-target direction now known?

<details>
<summary>Reveal the transfer check</summary>

The current-roster undercoverage still moves the frame mean downward because omitted former employees have higher overtime. Greater response among low-overtime current employees now also moves the respondent mean downward, and verified records remove the stated underreporting mechanism. Under these supplied mechanisms, both remaining stages point downward, so the respondent mean is below the target mean; their magnitudes remain unknown.

</details>

[Back to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. What can the historical `wage1` file represent?

**Practice problem:** [Return to the exact Problem 4 prompt](../#problem-4)  
**Class-guide connection:** [Random variability is not bias](../../#c6-stop-5) and [From a sample result to a defensible claim](../../#c6-stop-6)

### Question and audit strategy

Separate three designs: the historical process that produced the extract, the row-level SRS demonstration applied to a fixed CSV, and the deliberately restricted metropolitan-only frame. Only the latter two are fully specified by the class script.

### Complete solution

The documented facts are that the file contains 526 worker records and 24 variables from a historical 1976 Current Population Survey extract, that the wage variable is measured in 1976 dollars per hour, and that the displayed summaries reproduce from the current class file and script. The CSV and notes do not supply enough information to declare the 526 rows an SRS of every U.S. worker, define the exact original target population and frame, reconstruct all selection probabilities or weights, or evaluate nonresponse and fieldwork. The analyst invented those details.

When the 526 rows are treated as a fixed teaching population, selecting row numbers by SRS produces statistics that change across samples. The means 5.3987 for $n=30$ and 6.0320 for $n=200$ demonstrate two realized deviations around the fixed-file mean 5.8961. Under comparable SRS designs, larger samples generally have less sampling variability, but this one pair does not prove that every larger realized sample lies closer; chance can reverse the ordering.

The constructed frame keeps the 380 rows coded as metropolitan and gives the other 146 rows zero inclusion probability. Its mean is 6.3029, while the excluded-row mean is 4.8373. The arithmetic check is

$$
6.3029-5.8961\approx0.4068
$$

dollars per hour. This construction illustrates how exclusion can move a summary within the fixed file. It does not describe the original CPS frame or prove a population bias in the historical survey.

The first unsupported population generalization is the declaration that the rows are an SRS of every U.S. worker and that their mean must therefore represent the national mean. The first unsupported causal claim is that metropolitan residence **raises** wage by 0.4068 dollars; the script supplies a constructed descriptive comparison, not an intervention or counterfactual design.

A defensible three-sentence revision is:

> The mean recorded wage among the 526 workers in this historical 1976 extract is 5.8961 dollars per hour; the supplied CSV alone does not justify a newly invented national sampling claim. Fixed-seed SRSs of the file rows illustrate sample-to-sample variation, while the metropolitan-only teaching construction shows how excluding 146 rows changes the summary of this fixed collection. The resulting 0.4068-dollar descriptive difference neither reconstructs the original CPS design nor identifies a causal effect of metropolitan residence.

The AI and non-AI routes should reach the same distinctions. Generated agreement is not verification; the table, script, provenance notes, selection definitions, and Class 5 causal boundary provide the checks.

### Verification and limitations

Running the existing script reproduces all six displayed quantities. A correct rerun verifies the specified transformations on the intended file, not the original survey design or a causal interpretation. The data are historical and do not describe the current U.S. labor market.

### Nearby transfer

Suppose complete original documentation established a probability sample with appropriate weights for a precisely defined 1976 worker population. Which part of the analyst's claim could become supportable, and which part would remain unsupported?

<details>
<summary>Reveal the transfer check</summary>

The documentation could support a design-based, weighted population estimate for the defined 1976 target, subject to execution, nonresponse, measurement, and the exact estimator. It would not turn the metropolitan association into a causal effect because a sampling design selects units; it does not assign residence or supply the missing counterfactual.

</details>

[Back to the solution map](#solution-map)

<a id="solution-5"></a>

## Solution 5. Random sampling does not create a causal effect

**Practice problem:** [Return to the exact Problem 5 prompt](../#problem-5)  
**Class-guide connection:** [Class 6: From a sample result to a defensible claim](../../#c6-stop-6) and [Class 5: Auditing a causal claim](../../../05-association-causation-and-confounding/#c5-stop-6)

### Question and strategy

Audit two separate mechanisms. Sampling determines which registered workers are observed and supports population generalization; treatment assignment or credible causal assumptions determine whether the observed exposure groups can represent each other's missing outcomes.

### Complete solution

The target population is all workers in the complete eligibility register, which also serves as the sampling frame. The sample is the 500 selected workers, all of whom respond. The exposure is voluntary training enrollment $D_i$, and the outcome is earnings one year later $Y_i$.

Write $\overline Y^{\mathrm{pop}}_{D=1}$ and $\overline Y^{\mathrm{pop}}_{D=0}$ for the finite registered population's mean earnings among enrollees and non-enrollees. One population association parameter is

$$
\Delta_{\mathrm{assoc}}
=\overline Y^{\mathrm{pop}}_{D=1}-\overline Y^{\mathrm{pop}}_{D=0}
$$

for registered eligible workers. The corresponding sample statistic is

$$
\widehat\Delta_{\mathrm{assoc}}=\overline Y_1-\overline Y_0=2{,}400\mkern3mu\mathrm{dollars}.
$$

With the stated SRS and complete response, the sample can support a design-based description or estimate of the enrollee–non-enrollee earnings association in the registered target population, with sampling uncertainty not yet quantified in this class. It does not show that training caused the difference.

Let $Y_i(1)$ be worker $i$'s earnings one year later under a sharply defined training-enrollment intervention and $Y_i(0)$ the earnings under the comparison condition. A target causal effect is

$$
\mathrm{ATE}=\frac{1}{N}\sum_{i=1}^{N}\bigl[Y_i(1)-Y_i(0)\bigr]
$$

for the $N$ registered eligible workers. For an enrollee, $Y_i(0)$ is missing; for a non-enrollee, $Y_i(1)$ is missing. Random sampling makes inclusion in the 500-person sample a chance event under the stated design. It does not randomize voluntary enrollment within the sample, so $D_i$ can remain related to both potential outcomes.

If workers with stronger motivation, credentials, or expected earnings are more likely to enroll, the observed positive gap can exceed the causal effect. If workers with worse employment prospects or recent job loss are more likely to seek training, negative selection can make the observed gap smaller than the causal effect. SRS does not determine which causal story holds because it addresses entry into the study, not entry into training.

If the agency randomly offers training within the SRS and compares outcomes by assigned offer, the assignment mechanism supports a causal comparison between assigned groups under the implemented design. The probability-sampling mechanism separately supports generalizing that assigned-offer effect to the registered target population, subject to execution, attrition, measurement, treatment versions, and the relevant design analysis. The effect of training received would remain a different target if assignment and receipt differ. Class 7 names and develops analysis by original assignment.

If outside volunteers are randomly assigned, random assignment can support a causal assigned-offer comparison for those volunteers. Because volunteer entry is selected rather than a probability sample of the register, applying the result to all registered workers requires an external-validity argument about differences in people, settings, treatment versions, and response.

### Verification and limitations

The solution never uses the 2,400-dollar association as an ATE. A complete response protects the sampling stage from the stated nonresponse problem but does not remove measurement error, treatment-version ambiguity, self-selection into training, or causal-effect heterogeneity.

### Nearby transfer

Classify the support supplied by each design: (a) an SRS from a population followed by observed self-selected exposure, and (b) a convenience group followed by random treatment assignment. State one conclusion each design can support and one it cannot support without more evidence.

<details>
<summary>Reveal the transfer check</summary>

Design (a) can support a population association under a valid sampling and response process, but self-selected exposure does not identify a causal effect. Design (b) can support a causal assigned-treatment comparison for the convenience-study units, but broader population generalization requires an external-validity argument. Sampling and assignment answer different questions.

</details>

[Back to the solution map](#solution-map)

## Final study check

Close the solutions and reconstruct these statements in your own words:

1. A statistic directly describes its observed units; a population claim requires a credible bridge from the target through the frame, selection, response, and measurement.
2. Equal individual inclusion probabilities do not define an SRS because an SRS is a probability distribution over complete samples.
3. A direction of bias comes from a mechanism linking inclusion or measurement to the target variable, not from a label alone.
4. Random sampling can support population scope; random assignment or a credible counterfactual argument is needed for causal scope.
