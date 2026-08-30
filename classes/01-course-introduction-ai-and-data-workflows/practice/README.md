# ECO 202 Practice 1: Course Introduction, AI-Assisted Learning, and Modern Data Workflows

**Status:** Complete ungraded practice  
**Last updated:** August 30, 2026  
**Class guide:** [Class 1: Course Introduction, AI-Assisted Learning, and Modern Data Workflows](../)  
**Worked solutions:** [Complete solutions for study after your attempt](solutions/)  
**Suggested completion:** After Class 1 and before Class 2

[← Practice index](../../PRACTICE.md)

**Practice workflow:** Attempt the recommended route first; use staged hints or AI only when feedback would help; inspect compact checks after an attempt; study the worked solution deliberately; then close it and complete the nearby transfer unaided.

> [!NOTE]
> **Ungraded practice—not submitted.** This module does not contribute to the course grade. Use it to establish a careful empirical workflow and to identify which parts you can explain and verify without assistance.

<!-- Source lineage: Class 1 is a new orientation and workflow module. Scope was calibrated against the opening and descriptive-statistics material in Econ202-UlrichMueller/LectureNotes.tex, lines 1--338, and Spring 2026 PS1. The problems, wording, organization, and audit below are newly authored for the Fall 2026 Class 1 guide; no legacy exercise or protected text is reproduced. -->

## Purpose and recommended route

This conceptually focused first module practices a durable sequence for empirical work: define the question, inspect the data and source, understand the proposed code, run it, verify important results, interpret the evidence, and state its limitations. The statistical judgment matters more than any particular software command.

The recommended route is Problems 1–4 and should take about 40–55 minutes. Brief bullet responses are sufficient unless a problem requests a short conclusion. Begin Problems 1, 2, and 4 without AI or the answer checks. Problem 3 contains an optional AI comparison and a complete non-AI route. Optional software execution, the external AI comparison, and worked-solution study take additional time.

| Stage | Suggested time | Work |
|---|---:|---|
| Reconstruct the evidence chain | 8–11 minutes | Problem 1 |
| Calculate and verify | 10–13 minutes | Problem 2 |
| Audit generated output | 12–16 minutes | Problem 3 |
| Transfer without assistance | 10–15 minutes | Problem 4 |

## What you must be able to do independently

After completing this practice, you should be able to:

- turn a broad economic topic into a question whose data, unit of observation, variables, source, and intended conclusion are clear;
- distinguish raw data, provenance documentation, executable instructions, generated output, an AI response, and a retained interpretation;
- explain and apply the sequence **prompt → inspect → code → run → verify → interpret**, while recognizing that code that runs is not necessarily correct;
- verify an empirical mean from a reported sum and number of observations and interpret its units and scope;
- treat AI output as a provisional proposal rather than a source or statistical authority;
- identify privacy, confidentiality, licensing, and permission risks before sharing files with an external system;
- explain what reproducibility requires beyond saving code; and
- distinguish a descriptive association in historical observational data from a current-population statement or causal effect.

Installation steps, features of a particular AI product, and memorized R, Python, or Stata syntax are not independent exam targets.

## Problem map

| Problem | Main task | Suggested mode |
|---|---|---|
| [1. Reconstruct the evidence chain](#problem-1) | Connect a question to the data, source, script, output, and conclusion. | Unaided retrieval |
| [2. Verify the first real-data analysis](#problem-2) | Reproduce one calculation and audit what execution establishes. | Numerical and empirical check |
| [3. Audit a fluent AI report](#problem-3) | Separate correct output from unsupported authority, population, causal, and privacy claims. | Non-AI route or AI comparison |
| [4. Transfer the workflow without assistance](#problem-4) | Plan a defensible analysis of a second relationship in the same data. | Final unaided transfer |

## Recommended core route

<a id="problem-1"></a>

### Problem 1. Reconstruct the evidence chain

**Class-guide connection:** [Section 1: What is ECO 202?](../#1-what-is-eco-202), [Section 5: GitHub and the course repository](../#5-github-and-the-course-repository), and [Section 7: A first reproducible analysis](../#7-a-first-reproducible-analysis)

The Class 1 folder contains the following artifacts:

- **A.** The question “How are completed education and hourly wage related among the workers in this historical extract?”
- **B.** [`data/wage1.csv`](../data/wage1.csv)
- **C.** [`data/README.md`](../data/README.md)
- **D.** [`class-01-reproducible-analysis.R`](../class-01-reproducible-analysis.R)
- **E.** Console output created when the script runs
- **F.** The [education–wage scatterplot](../figures/education-wage-scatter.png)
- **G.** An AI-generated draft interpretation
- **H.** The final interpretation retained by the analyst

Answer the following questions:

1. Classify each artifact as a question, input data, provenance documentation, executable instructions, generated output, provisional interpretation, or retained claim. Some categories may contain more than one artifact.
2. Put the artifacts into a defensible evidence chain. Explain why the AI draft and final interpretation cannot be inserted automatically merely because the script ran.
3. Use the provenance note and its linked variable documentation to identify the observational unit, source and historical period, and the units of `wage` and `educ`.
4. Which artifacts should be regenerated or reconsidered if the CSV or script changes? Which source should be checked if the meaning of a variable is unclear?
5. Name two facts about sampling, coverage, measurement, or the target population that are not established merely by opening the CSV.
6. The CSV is publicly distributed with the course. Explain why that fact does not authorize uploading an entire course folder containing personal notes, credentials, private student work, or restricted material.

<!-- Source lineage: Newly authored evidence-chain problem using only the current Class 1 course-created guide, script, figure, and documented Wooldridge wage1 CSV. It extends rather than repeats the guide's artifact-classification check. -->

[Back to the problem map](#problem-map)

<a id="problem-2"></a>

### Problem 2. Verify the first real-data analysis

**Class-guide connection:** [Section 6: Prompting as specification and dialogue](../#6-prompting-as-specification-and-dialogue), [Section 7: A first reproducible analysis](../#7-a-first-reproducible-analysis), and [Section 8: Association is not causation](../#8-association-is-not-causation)

The tested Class 1 script reports the following results from `wage1.csv`:

| Quantity | Verified result |
|---|---:|
| Workers | 526 |
| Missing values in the CSV | 0 |
| Sum of hourly wages | 3,101.35 |
| Mean hourly wage | 5.8961 |
| Median hourly wage | 4.65 |
| Education–wage correlation | 0.4059 |
| Descriptive fitted line | $\widehat{\mathrm{wage}}=-0.9049+0.5414\mkern3mu\mathrm{educ}$ |

1. Before using software, calculate $3{,}101.35/526$. Show enough arithmetic to verify whether the reported mean is consistent after rounding, and state its units.
2. Explain why comparing the independently reconstructed mean with the script's mean is a genuine check, while asking the same system to repeat its original number may not be independent verification.
3. Distinguish these claims: “the file contains no missing values,” “the code ran without stopping,” “the requested quantities were computed correctly,” and “the interpretation is justified.” Which are established by the displayed results, and which need another check?
4. Write a two-sentence conclusion about the education–wage graph that states what the historical sample shows and what it does not establish.
5. List all six stages in the course workflow—prompt, inspect, code, run, verify, and interpret—and give one responsibility the analyst retains at each stage.

You can complete the problem entirely from the supplied output. For an optional computational check, open the [Class 1 folder](../), run the existing script in R or translate its stated tasks into another suitable environment, and compare the results. Running R or memorizing the script's syntax is not part of the independent exam target.

<!-- Source lineage: Original numerical and workflow audit using the verified Fall 2026 Class 1 script and course-distributed Wooldridge wage1 CSV; no additional dataset, code, or legacy exercise is introduced. -->

[Back to the problem map](#problem-map)

<a id="problem-3"></a>

### Problem 3. Audit a fluent AI report

**Class-guide connection:** [Section 3: The AI landscape](../#3-the-ai-landscape), [Section 6: Prompting as specification and dialogue](../#6-prompting-as-specification-and-dialogue), [Section 8: Association is not causation](../#8-association-is-not-causation), and [Section 9: Independent foundations and next steps](../#9-independent-foundations-and-next-steps)

An AI system receives the Class 1 execution record and returns:

> The analysis is fully verified because the R code ran successfully. The data contain 526 workers with no missing values, and their average hourly wage is 5.896 dollars per hour. The positive correlation of 0.406 and fitted slope of 0.541 prove that giving any worker one more year of education would raise that worker's wage by about 54 cents per hour. Therefore the current average American worker benefits causally from additional schooling. For the best audit, upload the entire course folder—including notes and any related student files—to another AI system and ask whether it agrees.

First work without assistance.

1. Break the report into separate claims. Classify each as supported by the displayed execution record, supported only after an additional check, or unsupported.
2. Identify the first step at which correct numerical output turns into an unsupported conclusion. Separate the sample association, a claim about a broader or current population, and a causal effect.
3. Explain why agreement from another AI system would not itself verify the calculation, source, or interpretation.
4. Identify every privacy, permission, or data-handling problem in the final sentence. State a safer minimum-information alternative.
5. Rewrite the report in no more than three sentences so that it states the verified result, its historical scope, and its main limitation.

Then choose one of the following routes.

**AI comparison route:** Copy the prompt below into any AI system, compare its audit with yours, and record one correction it handled well and one claim, assumption, or privacy risk you still needed to resolve yourself.

```text
I am auditing a teaching analysis of wage1.csv. The supplied execution record
reports 526 workers, zero missing values in the CSV, mean hourly wage 5.8961,
education-wage correlation 0.4059, and the descriptive fitted line
wage = -0.9049 + 0.5414 education. The data are a historical 1976 Current
Population Survey extract and are observational.

Audit this statement claim by claim:
"The analysis is fully verified because the R code ran successfully. The data
contain 526 workers with no missing values, and their average hourly wage is
5.896 dollars per hour. The positive correlation of 0.406 and fitted slope of
0.541 prove that
giving any worker one more year of education would raise that worker's wage by
about 54 cents per hour. Therefore the current average American worker benefits
causally from additional schooling. For the best audit, upload the entire course
folder—including notes and any related student files—to another AI system and
ask whether it agrees."

Separate numerical consistency, source and time period, sample description,
population generalization, causal interpretation, and privacy or permission.
Do not invent sampling facts. Give an independent verification route for each
checkable claim and provide a three-sentence revision.
```

**Complete non-AI route:** Check the reconstructed mean from Problem 2; compare every number with the supplied table; use the provenance note for source, date, and variable meaning; ask whether the data contain random assignment or another causal design; distinguish the 526 recorded workers from current American workers; replace “proves” with a sample-description statement; and list the minimum nonprivate information needed for a second audit.

<!-- Source lineage: Newly authored flawed report and audit prompt. Numerical inputs come only from the verified Class 1 analysis; the authority, causation, time-scope, and privacy errors were designed specifically for this practice. -->

[Back to the problem map](#problem-map)

<a id="problem-4"></a>

### Problem 4. Transfer the workflow without assistance

**Class-guide connection:** [Section 7: A first reproducible analysis](../#7-a-first-reproducible-analysis), [Section 8: Association is not causation](../#8-association-is-not-causation), and [Section 11: Common core, optional paths, and recap](../#11-common-core-optional-paths-and-recap)

Do not use AI, software, the answer checks, or the worked solutions until you have completed this problem.

A classmate now asks, “Does staying longer with the same employer raise a worker's hourly wage?” The same historical `wage1` file contains `tenure`, measured in years with the current employer, and `wage`, measured in 1976 dollars per hour. You are not asked to calculate a result.

1. Rewrite the question first as a descriptive question that this file can address and then as a causal question that requires more than an observed relationship.
2. Give a complete analysis plan in the order **question → data and source → inspect → code → run → verify → interpret → limitation**. State one concrete responsibility at every stage; naming the stages alone is not enough.
3. Suppose the resulting scatterplot slopes upward. Write the strongest one-sentence conclusion supported by that fact alone.
4. Name two alternative explanations for an observed positive relationship and one kind of design information that would be needed before making a causal claim.
5. State one reproducibility check and one privacy or permission check you would complete before sharing the work.

<!-- Source lineage: Newly authored transfer question using two documented variables in the existing wage1 data. No new dataset, numerical result, or later-course method is required. -->

[Back to the problem map](#problem-map)

## Compact answer checks

Use these only after completing the recommended route. They confirm targets and main conclusions, not the reasoning that an exam answer must show.

<details>
<summary>Reveal the compact check for Problem 1</summary>

The CSV is input data; its README records provenance; the R file contains executable instructions; console output and the figure are generated; the AI draft is provisional; and the analyst owns the retained claim. One row is one worker in a historical 1976 Current Population Survey extract; `wage` is hourly earnings in 1976 dollars per hour and `educ` is completed education in years. A changed input or script requires rerunning and rechecking downstream output and interpretation. Public status of one CSV does not make unrelated files safe or authorized to share.

</details>

<details>
<summary>Reveal the compact check for Problem 2</summary>

$3{,}101.35/526\approx5.896103$, consistent with 5.8961 and measured in 1976 dollars per hour. Execution, numerical consistency, and substantive validity are different checks. The graph supports a positive education–wage association among these 526 historical records, not a current-population or causal conclusion. The complete cycle is prompt → inspect → code → run → verify → interpret.

</details>

<details>
<summary>Reveal the compact check for Problem 3</summary>

The reported count, missing-value count, mean, correlation, and fitted slope match the execution record, but successful execution does not verify the source, method, or interpretation. The first causal overreach is “prove”; the statement also changes a sample association into an individual effect and a claim about current American workers. Agreement from another AI is not independent evidence, and sharing an entire folder can expose files that were never authorized for external use.

</details>

<details>
<summary>Reveal the compact check for Problem 4</summary>

A defensible descriptive question asks how recorded tenure and wage are related among the 526 workers in the 1976 extract. An upward plot would support only a positive sample association. Worker age, experience, occupation, education, job type, and selection could help explain it; causal language requires a defensible research design, not merely a fitted relationship. Reproducibility requires documented input, executable instructions, regenerated output, and checked interpretation; sharing requires a file-by-file privacy and permission review.

</details>

## Worked solutions

Attempt each problem and inspect its compact check before opening the [complete worked solutions](solutions/). The solution guide develops the reasoning, verification, interpretation, limitations, and a nearby transfer question for every problem; use it to study the workflow rather than copy a final sentence.

## Personal learning record

Keep this record in your own notes; do not submit it or add it to the course repository.

- **Independent:** Which problems or parts did you complete without hints, answer checks, software output beyond what was supplied, or AI?
- **Prompted:** Which parts did you complete after a cue, checklist, or partial hint?
- **Supplied:** Which calculations, classifications, or wording came from software, AI, an answer check, or the worked solutions?
- **Remaining:** Which stage of the workflow could you not yet explain or carry out from a blank page?
- **Transfer:** Did you complete Problem 4 unaided, and where did your plan still rely on a vague instruction such as “check the data” or “verify the answer”?
- **Next attempt:** Choose one remaining item and reconstruct it unaided within the next two days.
