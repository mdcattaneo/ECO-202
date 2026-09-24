# ECO 202 — Final empirical project

**Last updated:** September 24, 2026  
**Course:** Statistics and Data Analysis for Economics, Fall 2026

## Table of contents

- [1. General information](#1-general-information)
- [2. Project requirements](#2-project-requirements)
    - [What you should accomplish](#what-you-should-accomplish)
    - [How to approach the work](#how-to-approach-the-work)
    - [What to submit](#what-to-submit)
        - [A. Report — PDF, at most five pages plus references](#a-report--pdf-at-most-five-pages-plus-references)
        - [B. AI-interaction log or no-AI-use declaration](#b-ai-interaction-log-or-no-ai-use-declaration)
        - [C. Reproducibility package — ZIP](#c-reproducibility-package--zip)
    - [AI assistance, authorship, and collaboration](#ai-assistance-authorship-and-collaboration)
    - [How the work will be evaluated](#how-the-work-will-be-evaluated)
- [3. The assignment](#3-the-assignment)
    - [Approved experiment menu](#approved-experiment-menu)
        - [Experiment 1 — Matching donations and charitable giving](#experiment-1--matching-donations-and-charitable-giving)
        - [Experiment 2 — Interest-rate disclosure and borrowing](#experiment-2--interest-rate-disclosure-and-borrowing)
        - [Experiment 3 — Ballot-secrecy mailings and voter turnout](#experiment-3--ballot-secrecy-mailings-and-voter-turnout)
    - [Common estimation and uncertainty procedure](#common-estimation-and-uncertainty-procedure)
    - [Step 1 — State the question and understand the experiment](#step-1--state-the-question-and-understand-the-experiment)
    - [Step 2 — Understand and describe the data](#step-2--understand-and-describe-the-data)
    - [Step 3 — Estimate the effect and its uncertainty](#step-3--estimate-the-effect-and-its-uncertainty)
    - [Step 4 — Verify and interpret](#step-4--verify-and-interpret)

## 1. General information

The project is due **Sunday, December 20, 2026, at 7:00 p.m. Eastern Time. No routine extensions will be granted.** Exceptional circumstances are handled through [Princeton’s final-assessment extension process](https://ua.princeton.edu/policies-resources/academic-regulations/reading-period-deans-date-and-end-term-work); contact the instructor and your residential college dean or assistant dean before the deadline. Any University-authorized accommodation remains applicable.

| Item | Details |
| --- | --- |
| Assessment | Individual empirical project in lieu of a final examination |
| Course weight | 20% |
| Work begins | Wednesday, December 16, 2026, at 12:00 a.m. Eastern Time |
| Submissions | Student-written report PDF of at most five pages plus references; complete AI-interaction-log PDF if AI is used, or a signed no-AI-use declaration in the report; reproducibility ZIP containing code and a short README |
| Submission channel | Gradescope, accessed through the course’s Canvas site. |

**Advance access to these instructions does not open the working period.** Before December 16, you may read the instructions, ask administrative questions, review course methods, and check that your software works with ordinary class examples. Begin choosing and studying your project experiment, preparing project-specific code, analyzing its data, drafting the report, and using AI for this project only when the working period opens. There is no required project proposal, analysis, or other project submission before then.

Dean’s Date is **Tuesday, December 15**, and the project working period begins **Wednesday, December 16**, the first day of the final-assessment period. [Registrar dates](https://registrar.princeton.edu/faculty-and-department-resources/assessments-and-grading/assessments-and-grading-dates).

## 2. Project requirements

As described in the syllabus, the project asks you to formulate an empirical question, analyze data using appropriate course methods, and communicate your findings and their limitations clearly. It brings together the course’s work on data, research design, description, estimation, uncertainty, and interpretation in one individual empirical analysis.

### What you should accomplish

Your project should demonstrate that you can:

- **Formulate a clear question.** Identify the quantity you want to learn about, the relevant population or participants, and why the question matters.
- **Understand the evidence.** Establish where the data come from, how they were collected, what the observations and variables represent, and what the research design allows you to learn.
- **Select and apply appropriate methods.** Explain why your statistical procedure addresses the question, state its assumptions, and report estimates together with their uncertainty.
- **Exercise statistical judgment.** Check important calculations, distinguish association from causation, interpret the magnitude of a result, and explain limitations without overstating the evidence.
- **Communicate and reproduce the analysis.** Present a coherent account in your own words and provide enough documentation and code for another person to reproduce your results.

### How to approach the work

TA support before the working period will focus on the instructions, course methods, and general examples; it does not authorize beginning your own project early. During the working period, begin with a short analysis plan linking your question, data, and method. Inspect and describe the data before carrying out the main analysis. Keep a record of data-processing choices and assistance as you work, run and verify your calculations, and then write the report around the evidence you have established. The [submission requirements](#what-to-submit) below explain what to turn in, and [the assignment](#3-the-assignment) specifies the required empirical analysis.

You may use R, Python, Stata, or another suitable statistical environment. **AI use is entirely optional.** You may complete every part of the project without AI, using the course materials, software documentation, and instructor or TA support. No AI account, paid AI service, or course agent is required. If you choose to use AI, follow the [authorship and assistance rules](#ai-assistance-authorship-and-collaboration). In either case, you remain responsible for every choice, computation, citation, and interpretation, and must execute and audit the analysis yourself and write the report yourself. Evaluation focuses on statistical reasoning and the quality of the empirical work, rather than your software choice or how much programming syntax you can write without assistance.

### What to submit

Submit the materials below through Gradescope, accessed through the course’s Canvas site. All required files must be submitted together by **Sunday, December 20, 2026, at 7:00 p.m. Eastern Time**. Upload `report.pdf`, `ai-log.pdf` if you used AI, and `reproducibility.zip`. Keep the PDFs as separate files rather than placing them inside the ZIP. If you used no AI, submit the report and ZIP, with your signed no-use declaration in the report. Allow enough time to complete every required upload and verify that Gradescope has recorded the latest version of each file.

#### A. Report — PDF, at most five pages plus references

Develop and draft the report yourself; AI may help polish your own prose under the [authorship rules](#ai-assistance-authorship-and-collaboration). The five-page limit includes the title, text, tables, figures, captions, footnotes, and any substantive appendix. Only references may appear on additional report pages. Put your name and a concise title at the top; a separate title page is unnecessary. Use 11-point body text, one-inch margins, and legible tables and figures.

A useful structure is:

1. **Question and design:** the question, participants, treatment comparison, outcome, and causal target.
2. **Data and methods:** provenance, construction of the analysis sample, descriptive evidence, estimator, and uncertainty method.
3. **Results:** the estimate, uncertainty, figure, and interpretation in economic and statistical terms.
4. **Verification and limitations:** your independent check, threats to interpretation, and a restrained conclusion.

Cite the original study, dataset and version, and any methods, code, or other material you used. Include a brief acknowledgment of permitted human assistance and a disclosure of AI use; detailed interactions belong in the separate log. AI output is not a scholarly source. At the end of the report, include and sign the statement required for undergraduate written work:

> This paper represents my own work in accordance with University regulations.

[Princeton academic-integrity regulations](https://rrr.princeton.edu/students-and-university/24-academic-regulations).

#### B. AI-interaction log or no-AI-use declaration

If you use no AI, include a signed statement in your report declaring that you did not use AI for this project; no separate interaction-log PDF is required.

If you use AI, submit the full visible record of **all AI interactions used for this project**, across every tool and session. Include prompts and responses, follow-up questions, coding assistance, errors, rejected suggestions, and abandoned approaches. A polished selection or summary of successful prompts is not a full log.

Preserve the record as you work. An export or chronological transcript should identify the tool, model when available, date, and session order, and record the context or files supplied. For coding agents, retain visible actions and outputs as well as the conversation where the tool makes them available. You are not expected to recover hidden system instructions or internal model reasoning. Use tools whose project assistance you can document; disable unrecordable AI autocomplete for project work.

Submit the complete log as a separate PDF, with a short index if it contains multiple sessions or tools. Combine the records in chronological order without omitting interactions; an AI-generated summary or shared chat link alone is insufficient. Remove credentials and unrelated private information, visibly mark any such redaction, and retain the substantive analytic record. Do not submit your entire account history. If a record is lost, disclose the gap and contact the instructor; do not invent a replacement transcript.

Add a short cover note identifying the tasks for which you used AI and how you checked its contributions. This supplements the complete log. Using more AI does not earn more credit.

#### C. Reproducibility package — ZIP

Submit one ZIP containing your analysis script or executable notebook and a short README explaining the software, relevant versions, data source, and execution order. Include every supporting script needed to run the analysis, and give the commands or notebook steps needed to reproduce it. Use relative file paths so the package can run outside your own computer’s folder structure. Starting from the documented input data, the package should regenerate the report’s numerical results, tables, and figures. Avoid undocumented manual changes. If randomness is used in computation, record the seed.

Include input data only when redistribution is permitted; otherwise give the exact source, file version, and retrieval instructions. Keep code and logs separate from the five-page report. They support verification and are not an extra substantive report appendix. Submit these files through the same course submission channel; a public GitHub repository is not required.

### AI assistance, authorship, and collaboration

**The report must be your intellectual creation and retain your own voice.** Develop the argument, interpretation, and initial draft yourself. You may use AI to improve the grammar, clarity, concision, or flow of prose you have written, including captions. Review each suggestion and accept it only if it preserves your intended meaning and accurately reflects your analysis. Do not ask AI to generate the report, write sections from an outline or analysis output, or supply substantive arguments or conclusions for you to adopt. Polishing AI-generated prose does not make it your own creation. Disclose and log any AI editing assistance, including the text supplied and the suggestions returned. Ordinary non-generative spelling checks and typesetting tools are permitted.

AI may help explain course concepts, suggest checks, generate or debug code, and critique a proposed method or assumption. You must make the statistical decisions, execute and inspect the analysis, verify important results, and explain every submitted claim and line of analysis code. If AI generates code, disclose that use and preserve the interaction. Evaluate AI-generated interpretations critically; develop and explain your conclusions yourself. Editing assistance may improve how you express a conclusion you have already reached, but it must not replace that reasoning.

Follow the course privacy rules: do not send another student’s work, personal information, credentials, restricted data, or restricted readings to an external AI service. For permitted assistance, you may share your own nonconfidential code and draft excerpts after removing identifying or sensitive information. Share only what is needed, and preserve those exchanges in your AI log. Cite actual sources after checking them yourself.

You may discuss general course concepts and seek instructor or TA help, but each student must carry out and verify their own analysis and write their own report. Do not share project code, results, AI logs, or report drafts with other students, or jointly produce a submission. Acknowledge permitted help and borrowed public code. Use Princeton-authorized academic support; do not seek outside tutoring or third-party solutions to the assignment. Do not submit work prepared for another course without the required prior written permissions.

### How the work will be evaluated

Your work will be evaluated on the clarity of the question, understanding of the experiment, careful data handling, correct estimation and uncertainty, responsible interpretation, independent verification, reproducibility, clear writing in your own voice, and honest process documentation. Sophisticated methods, a particular software package, a small p-value, or a large quantity of AI interaction do not in themselves merit higher marks.

The rubric below applies to the project grade, which counts for 20% of the course grade. The same criteria apply whether or not you use AI; choosing not to use it will not reduce your grade.

| Criterion | Weight | What the report and supporting files should demonstrate |
| --- | ---: | --- |
| Question and experimental design | 20% | A focused question, correctly defined treatment comparison and outcome, understanding of assignment, and a clear causal target and population scope. |
| Data handling and description | 15% | Correct file and sample, transparent coding and missing-data decisions, informative summaries and a figure, and appropriate baseline comparisons. |
| Estimation and uncertainty | 25% | Correct treatment-minus-control estimate, standard error, 95% confidence interval, and two-sided test, with assumptions and units explained. |
| Interpretation and limitations | 20% | Accurate substantive interpretation, practical versus statistical significance, credible causal reasoning, and study-specific measurement and generalizability limitations. |
| Verification and reproducibility | 10% | A documented independent numerical check and a code/README package that reproduces the reported results from the specified inputs. |
| Writing and process documentation | 10% | Clear writing in your own voice, compliance with the report format, proper citations and assistance disclosure, and the complete AI log or signed no-use declaration. |

## 3. The assignment

Choose **one randomized experiment from the approved menu** and answer one clearly stated causal question using the course’s statistical methods. Explain what was randomized, what effect you are trying to learn about, what the data show, how uncertain the estimate is, and what limits the conclusion.

The source collection is [gsbDBI/ExperimentData on GitHub](https://github.com/gsbDBI/ExperimentData). The three approved experiments, exact data links, and analysis guidance appear below. Choose only from this menu: some entries in the broader repository involve observational designs or methods beyond this course.

Keep the project narrow: one primary outcome and one primary treatment comparison. You are not expected to reproduce an entire published paper or discover a previously unknown result. Published studies and their documentation are sources to read and cite; your submission must contain an analysis you execute, verify, and explain yourself. A thoughtful, correctly interpreted estimate is valuable whether or not it is statistically significant.

### Approved experiment menu

Choose one experiment below and use its specified treatment comparison and analysis sample. Each main comparison uses individual donor or recipient records rather than household, school, or village clusters. The recommended outcomes are binary, so the main analysis is a difference in proportions; Charitable also permits donation amount as an alternative primary outcome. Choose one primary outcome before estimating its treatment effect.

Download the linked CSV, which works with any suitable statistical software. The links identify a fixed repository revision so everyone starts from the same file. Each row is a study record; the files need not contain a unique identifier. Do not remove rows merely because their recorded values match. Read and cite the original paper as well as the data source. Extra columns and repository scripts are not required for this project.

#### Experiment 1 — Matching donations and charitable giving

**Question:** Does offering a match affect the probability that a previous donor gives again? This is the most straightforward starting point. The nonprofit randomized fundraising letters with or without a matching offer. [Karlan and List (2007), *Does Price Matter in Charitable Giving?*](https://doi.org/10.1257/aer.97.5.1774).

**Data:** [Download Charitable CSV](https://raw.githubusercontent.com/gsbDBI/ExperimentData/97a11199ba559f01c7b3803a1493ffa08631732e/Charitable/RawData/charitable.csv), named `charitable.csv` in the collection’s `Charitable/RawData/` folder.

| Item | Use for this project |
| --- | --- |
| Unit and sample | One donor record; use all 50,083 rows. |
| Assignment | `treatment = 1`: matching offer; `treatment = 0`: no matching offer. Pool all matching offers for this comparison. |
| Group-size check | 33,396 matching-offer records and 16,687 controls. |
| Recommended outcome | `out_gavedum`: 1 if a donation was made, 0 otherwise. |
| Alternative primary outcome | `out_amountgive`: dollars donated per recipient, including zero for recipients who did not donate. Use the mean-outcome procedure below if you choose this outcome instead. |
| Baseline descriptions | `hpa`: highest previous contribution, in dollars; `freq`: number of prior donations. Both are complete in this file. |

The treatment and both outcome columns are complete in the linked CSV. Its outcome names differ from the original Stata file: `out_gavedum` corresponds to `gave`, and `out_amountgive` to `amount`. Use the CSV names in your code. The `stateresponse*` columns summarize responses to this experiment and are not pretreatment characteristics. If you use other baseline columns, check their missing values separately rather than dropping recipients from the main comparison.

**Interpretation:** Pooling the matching arms estimates the effect of the study’s mix of matching offers, not one particular matching rate. For a dollar outcome, do not restrict the sample to donors: donating can itself be affected by treatment. Consider how prior-donor selection limits conclusions about new donors or other organizations.

#### Experiment 2 — Interest-rate disclosure and borrowing

**Question:** Does explicitly displaying an interest rate affect loan take-up? A South African lender randomized features of loan-offer letters sent to former customers. [Bertrand et al. (2010), *What’s Advertising Content Worth?*](https://doi.org/10.1162/qjec.2010.125.1.263).

**Data:** [Download Advertising CSV](https://raw.githubusercontent.com/gsbDBI/ExperimentData/97a11199ba559f01c7b3803a1493ffa08631732e/Advertising/adcontentworth_qje.csv), named `adcontentworth_qje.csv` in the collection’s `Advertising/` folder.

| Item | Use for this project |
| --- | --- |
| Unit and sample | One loan-offer recipient. From 58,168 rows, retain only `wave = 2` or `wave = 3`, leaving 53,194 rows. |
| Assignment | `intshown = 1`: interest rate displayed; `intshown = 0`: interest rate omitted. |
| Group-size check | 42,551 rate-displayed records and 10,643 rate-omitted records. |
| Outcome | `tookup`: 1 if the recipient took up the loan offer, 0 otherwise. |
| Baseline descriptions | `risk`: the lender’s HIGH, MEDIUM, or LOW credit-risk category; `female`: the recorded female indicator, coded 1 or 0. Both are complete in the retained sample. |

Wave 1 was a pilot without these content randomizations; do not code its missing `intshown` values as untreated. The assignment and outcome are complete after the wave restriction. Displaying the rate was randomized with an 80% probability, so unequal group sizes are expected. The approved comparison is rate displayed versus omitted, pooled across the two main waves; do not substitute a comparison of offered interest rates or another advertising feature whose assignment probabilities may differ across customer groups.

**Interpretation:** This estimates the effect of explicitly presenting rate information, not changing the rate charged. The omitted-rate letters still contained loan terms from which a recipient could infer the rate. Discuss what the result can say about disclosure in this setting and what it cannot establish about all credit markets.

#### Experiment 3 — Ballot-secrecy mailings and voter turnout

**Question:** Does a mailing addressing ballot secrecy affect turnout? The Wisconsin experiment randomly assigned selected registered nonvoters to a mailing or no contact before the June 2012 recall election. [Gerber et al. (2014), *Ballot Secrecy Concerns and Voter Mobilization*](https://doi.org/10.1177/1532673X14524269).

**Data:** [Download Wisconsin ballot-secrecy CSV](https://raw.githubusercontent.com/gsbDBI/ExperimentData/97a11199ba559f01c7b3803a1493ffa08631732e/Secrecy/RawData/Gerber_et_al_APR_2014_wi_ballot_secrecy.csv), named `Gerber_et_al_APR_2014_wi_ballot_secrecy.csv` in the collection’s `Secrecy/RawData/` folder. Use this Wisconsin file, not the Connecticut or Wisconsin group-competition files.

| Item | Use for this project |
| --- | --- |
| Unit and sample | One registered voter. From 17,360 rows, retain `post08reg = 0`, giving the paper’s main sample of 10,200 people registered before the November 2008 election. |
| Assignment | `treat = 1`: assigned the mailing; `treat = 0`: assigned no mailing. |
| Group-size check | 5,099 mailing records and 5,101 controls. |
| Outcome | `vs_12_update`: recorded participation in the June 2012 recall election, coded 1 for voting and 0 otherwise. Use this outcome rather than November general-election turnout. |
| Baseline descriptions | `yearssincereg`: years since registration; `milwaukee`: Milwaukee residence, coded 1 or 0. Both are complete in the retained sample. |

Use the supplied `post08reg` flag to select the sample rather than reconstructing the restriction from years since registration. Assignment and the coded turnout outcome are complete. The study coded people absent from the updated voter file as nonvoters; this is a measurement convention to explain, not proof that each such person abstained. If you examine age or gender, consult `d_miss_age` and `d_miss_gender`: a value of 1 marks missing information, and the corresponding zero placeholder in `age_corrected` or `female` must not be treated as an observed demographic value. Do not exclude those records from the main treatment comparison merely because a baseline characteristic is missing.

**Interpretation:** The effect is for assignment to the whole mailing, which also encouraged voting; it does not isolate the secrecy message alone. Discuss the targeted population, turnout measurement, and limits to generalizing to other voters or elections.

### Common estimation and uncertainty procedure

Use the unadjusted assigned-group comparison for the main analysis, with group 1 defined by the assignment indicator equal to 1 and group 0 by the indicator equal to 0. Retain the study records specified above regardless of whether recipients responded to the intervention. Baseline comparisons are descriptive checks, not grounds for selecting a preferred sample or specification.

For a binary outcome, let $n_g$ be the number of records in group $g$ and $\widehat p_g$ its outcome proportion. Use the Class 16 unpooled large-sample procedure:

$$
\widehat\Delta=\widehat p_1-\widehat p_0,
\qquad
\widehat{\mathrm{SE}}(\widehat\Delta)
=\sqrt{\frac{\widehat p_1(1-\widehat p_1)}{n_1}+\frac{\widehat p_0(1-\widehat p_0)}{n_0}}.
$$

If you choose dollars donated in Charitable, use $\widehat\Delta=\bar Y_1-\bar Y_0$ and $\widehat{\mathrm{SE}}(\widehat\Delta)=\sqrt{s_1^2/n_1+s_0^2/n_0}$, where $s_g^2$ is the within-group sample variance calculated with denominator $n_g-1$.

For either outcome, report the approximate 95% interval $\widehat\Delta\pm1.96\widehat{\mathrm{SE}}(\widehat\Delta)$. Test $H_0:\Delta=0$ against $H_a:\Delta\ne0$ using $z=\widehat\Delta/\widehat{\mathrm{SE}}(\widehat\Delta)$ and the two-sided p-value $2[1-\Phi(|z|)]$, where $\Phi$ is the standard Normal cumulative distribution function. Use the same standard error for the interval and test and a 5% significance level. Software defaults may pool proportions, apply continuity corrections, or use another reference distribution; check that your calculation implements this procedure.

For binary outcomes, multiply the estimate, standard error, and interval endpoints by 100 to report percentage points; the test statistic and p-value do not change. For the dollar outcome, report dollar units. Check the group sizes and, for binary outcomes, the success and failure counts before invoking a large-sample approximation. Explain the individual random assignment, possible interference or outcome-measurement limitations, and the population to which your claim applies. You are not required to reproduce the papers’ adjusted regressions or their exact tests.

### Step 1 — State the question and understand the experiment

Before estimating effects, write a short analysis plan for your own use:

- What is the economic or policy question? Define the primary outcome and its units.
- Who entered the study, and who or what was randomly assigned? Distinguish the unit of assignment from a row in the data.
- What did the treatment and comparison groups receive? Distinguish assignment to an intervention from actually taking it up.
- What causal effect does your selected comparison address, and for which participants? Random assignment does not by itself make participants representative of a broader population.

Use the original study and data documentation to establish the design. State any uncertainty in the documentation rather than asking AI to fill in missing facts. Fix the primary comparison and outcome before calculating or inspecting treatment-effect estimates from your own analysis; explain any subsequent change.

### Step 2 — Understand and describe the data

Identify the exact file and variables used. Check the number of observations, duplicate identifiers where relevant, treatment coding, outcome units, and missing-value conventions. Record exclusions and the number of usable observations in each group; do not silently discard inconvenient observations or treat a missing-value code as a measured outcome.

Produce a compact table with group sizes and relevant outcome summaries, and one informative figure. Where suitable pretreatment variables are available, describe a small number of baseline comparisons. Chance imbalances can occur under random assignment; balance in observed variables neither proves randomization nor guarantees balance in unobserved variables. Do not choose exclusions or controls to obtain a preferred effect.

### Step 3 — Estimate the effect and its uncertainty

Estimate the difference in mean outcomes between the assigned treatment and comparison groups; for a binary outcome this is a difference in proportions. State the direction of subtraction and use meaningful units, such as dollars or percentage points. Keep participants in their assigned groups for the main comparison; each approved comparison concerns assignment to the intervention.

Report a standard error, a 95% confidence interval, and a two-sided test of a zero effect using the [common procedure above](#common-estimation-and-uncertainty-procedure). Explain the assumptions and interpret the interval and test in context. Distinguish practical importance from statistical significance and an imprecise estimate from evidence that the effect is exactly zero.

The uncertainty calculation must respect the study’s design. Repeated observations or assignment of whole households, classrooms, or villages cannot automatically be treated as independent individuals. Follow the study-specific guidance for any additional design features; you are not expected to develop methods beyond the course.

A simple regression with an intercept and a treatment indicator may be used to express or check the same mean comparison, but its software-default standard error need not match the required calculation. Multiple regression, machine learning, instrumental variables, and searches for subgroup effects are not required. Any optional extension must fit within the report limit and must not replace the main analysis.

### Step 4 — Verify and interpret

Independently check at least one central numerical result. For example, reconstruct the treatment difference from group totals and counts, or compare a software standard error with the appropriate formula using verified group summaries. Rerunning the same unchecked script or obtaining agreement from a second AI answer is not sufficient verification. Briefly record the check and its outcome.

Explain what supports a causal interpretation and what could weaken it: missing outcomes, departures from assignment, spillovers, measurement, or other study-specific concerns. Do not automatically condition on an outcome of treatment, such as analyzing donation amounts only among people who donated. Discuss whether the findings can inform a different population or setting, and what further evidence would be needed.

You may compare your result with the paper’s findings, but check whether the samples, outcomes, treatment comparisons, and methods actually match. Explain differences instead of adjusting the analysis to force agreement.
