# ECO 202 Practice 1: Course Introduction, AI-Assisted Learning, and Modern Data Workflows — Worked Solutions

**Status:** Complete worked solutions  
**Last updated:** August 30, 2026  
**Practice module:** [Practice 1: Course Introduction, AI-Assisted Learning, and Modern Data Workflows](../)  
**Class guide:** [Class 1](../../)

[← Return to Practice 1](../) · [Practice index](../../../PRACTICE.md)

**Solution-study workflow:** Compare your attempt with one solution at a time; identify the first gap; close the page; reconstruct the reasoning; and complete the nearby transfer unaided.

> [!NOTE]
> These solutions are for study after a genuine attempt. For each problem, compare your reasoning—not only your final wording—with the question, data, verification method, interpretation, and limitation below. Then attempt the nearby transfer before revealing its check.

<!-- Source lineage: Public worked solutions for the newly authored Fall 2026 Practice 1 module. All empirical values are independently checked against the current Class 1 script and documented wage1 CSV. No protected exercise or legacy solution is reproduced. -->

## Solution map

1. [Reconstruct the evidence chain](#solution-1)
2. [Verify the first real-data analysis](#solution-2)
3. [Audit a fluent AI report](#solution-3)
4. [Transfer the workflow without assistance](#solution-4)

<a id="solution-1"></a>

## Solution 1. Reconstruct the evidence chain

**Practice problem:** [Return to Problem 1](../#problem-1)  
**Class-guide connection:** [What is ECO 202?](../../#1-what-is-eco-202), [GitHub and the course repository](../../#5-github-and-the-course-repository), and [A first reproducible analysis](../../#7-a-first-reproducible-analysis)

### Question and target

The substantive question is descriptive: how completed education and hourly wage are related among the workers recorded in this historical extract. The target is therefore a relationship in these 526 records, not automatically a relationship for every worker, a current U.S. relationship, or a causal effect.

### Artifacts and their roles

| Artifact | Role | What it can establish |
|---|---|---|
| Economic question | Question and target | What the analysis is intended to address |
| `data/wage1.csv` | Input data | The recorded values used in the computation |
| `data/README.md` | Provenance documentation | Source, period, dimensions, limitations, license, and variable documentation route |
| `class-01-reproducible-analysis.R` | Executable instructions | The operations the script requests when run from the stated folder |
| Console output | Generated output | What a particular execution reported |
| Scatterplot | Generated output | A visual representation produced from particular data and instructions |
| AI draft | Provisional interpretation | Claims proposed for inspection, not verified merely by being fluent |
| Analyst's final interpretation | Retained claim | The conclusion the analyst accepts responsibility for after checking scope and limitations |

### Evidence chain and strategy

A defensible chain is: define the question → read the provenance note → inspect the CSV → inspect the proposed script → run it on the intended input → compare the output and graph with independent checks → audit the draft interpretation → retain only a conclusion justified by the evidence. The AI draft cannot bypass verification, and the analyst's final interpretation is not a mechanical output of the code.

### Data and source

One row is one worker. The file is the `wage1` dataset distributed with version 1.4-7 of the `wooldridge` R package and contains a 1976 Current Population Survey extract. `wage` is hourly earnings measured in 1976 dollars per hour, and `educ` is completed education measured in years.

The CSV alone does not establish how the extract was sampled, whether every target worker had a chance to appear, which population or subpopulation it can represent, how nonresponse or coverage was handled, whether survey weights are needed, or whether the variables were measured without error. A complete population claim needs evidence beyond the values in the file.

### Verification, dependencies, and privacy

If the CSV changes, every calculation, output, figure, and interpretation depending on it must be reconsidered. If the script changes, its output and figure must be regenerated and then audited. If a variable's meaning is unclear, consult the provenance note and linked package manual rather than asking AI to invent a definition.

Permission is file-specific. Public distribution of `wage1.csv` does not authorize sharing personal notes, credentials, student work, licensed readings, or restricted data stored nearby. A safe review sends only the minimum information needed, after checking every included file and removing private or unauthorized content.

### Nearby transfer

Suppose the plotted figure has an older timestamp than the script and the script has just changed. What should the analyst do before citing the figure?

<details>
<summary>Reveal the transfer check</summary>

Rerun the revised script on the intended documented input, regenerate the figure, inspect the new output, and recheck the interpretation. The old figure is not verified merely because it remains in the folder.

</details>

[Return to the solution map](#solution-map)

<a id="solution-2"></a>

## Solution 2. Verify the first real-data analysis

**Practice problem:** [Return to Problem 2](../#problem-2)  
**Class-guide connection:** [Prompting as specification and dialogue](../../#6-prompting-as-specification-and-dialogue), [A first reproducible analysis](../../#7-a-first-reproducible-analysis), and [Association is not causation](../../#8-association-is-not-causation)

### Question, data, and calculation

The reported total hourly wage is 3,101.35 across 526 workers. Reconstructing the mean gives

$$
\bar w=\frac{3{,}101.35}{526}=5.896102\ldots\approx5.8961.
$$

The number agrees with the script's reported mean after rounding. Because the variable is hourly earnings in 1976 dollars per hour, the mean has the same units: 1976 dollars per hour.

### Why this is a useful check

Dividing the recorded total by the number of workers uses a distinct arithmetic route from the software's direct mean calculation. Agreement helps detect transcription, denominator, column-selection, or computational errors. It does not verify the source, sampling mechanism, variable definition, or causal interpretation. Asking the same system to restate its original number may simply reproduce the same mistake and is weaker than checking the underlying relationship independently.

### What execution does and does not establish

| Claim | What is needed |
|---|---|
| The CSV has zero missing values | Inspect the intended file and confirm that the script counted missingness across the intended cells. The displayed execution record reports this result. |
| The code ran without stopping | An execution record or successful exit can support this claim for that run. |
| Every requested quantity was computed correctly | Inspect the instructions, input, variable selection, denominators, and independently reproduce important values. Successful execution alone is insufficient. |
| The interpretation is justified | Check units, source, historical scope, sampling claims, design, and the association–causation boundary. This is not decided by the software exit status. |

### A defensible interpretation

> Among the 526 workers in this historical 1976 extract, completed education and recorded hourly wage have a positive descriptive association, with substantial wage variation at the same education levels. The graph and fitted line do not establish a causal effect of education, represent every population of interest, or describe current wages.

### The complete workflow

| Stage | Analyst responsibility |
|---|---|
| Prompt | State the setting, question, requested artifact, constraints, and verification task. |
| Inspect | Identify the observational unit, variables, units, source, missingness, and relevant limitations before accepting a calculation. |
| Code | Confirm that the proposed instructions use the intended file, variables, operations, and output path; generated code remains a proposal. |
| Run | Execute in a known environment, record errors and output, and confirm that the intended input was actually used. |
| Verify | Recompute important quantities by another route and compare the graph, table, and source documentation. |
| Interpret | State what the evidence supports, preserve its units and scope, distinguish association from causation, and disclose important limitations. |

### Nearby transfer

A second execution reports a total of 2,950 wage-dollars per hour across 500 records and a mean of 5.90. Is the arithmetic internally consistent, and what still remains unverified?

<details>
<summary>Reveal the transfer check</summary>

Yes: $2{,}950/500=5.90$. The arithmetic does not establish which records were used, the variable's meaning, the source or time period, representativeness, or any causal interpretation.

</details>

[Return to the solution map](#solution-map)

<a id="solution-3"></a>

## Solution 3. Audit a fluent AI report

**Practice problem:** [Return to Problem 3](../#problem-3)  
**Class-guide connection:** [The AI landscape](../../#3-the-ai-landscape), [Prompting as specification and dialogue](../../#6-prompting-as-specification-and-dialogue), [Association is not causation](../../#8-association-is-not-causation), and [Independent foundations and next steps](../../#9-independent-foundations-and-next-steps)

### Question and audit strategy

The task is not to decide whether the prose sounds plausible. It is to split the report into claims and check each against the executed output, provenance documentation, research design, and privacy boundary.

### Claim-by-claim audit

| Claim | Classification | Reason and verification route |
|---|---|---|
| “The analysis is fully verified because the R code ran successfully.” | Unsupported | Execution shows only that particular instructions completed. Inspect the input and code, reproduce important numbers, and audit interpretation separately. |
| “The data contain 526 workers with no missing values.” | Supported by the supplied execution record, then independently checkable | Inspect the intended CSV and missing-value calculation. The statement should remain about this file, not all possible source records. |
| “Their average hourly wage is 5.896 dollars per hour.” | Numerically supported after rounding | Verify the calculation ($3{,}101.35/526\approx5.896103$) and retain the units and 1976 historical scope. |
| “The positive correlation is 0.406 and fitted slope is 0.541.” | Numerically supported after rounding as descriptive output | Rerun the intended calculation or reproduce it in another environment; these are sample summaries. |
| The numbers “prove” a causal increase of about 54 cents from another year of education. | Unsupported | The data are observational, years of education were not assigned by the analysis, and a fitted slope is a sample-average descriptive relationship rather than a guaranteed individual effect. |
| The conclusion applies to “the current average American worker.” | Unsupported | The records are historical observations from a 1976 extract; a population and external-validity argument is missing. |
| Uploading the entire folder is the best audit. | Unsafe and unsupported | Another model's agreement is not evidence. The folder may contain files that are personal, restricted, licensed, or unauthorized for external processing. |

The report's first sentence already overstates verification. The first explicit causal leap occurs at “prove,” where a descriptive relationship becomes an intervention claim. The next sentence adds a second leap from the historical extract to current American workers.

### Why another AI's agreement is insufficient

Two AI systems can share the same error, rely on the same supplied claim, or fail to inspect the actual file and execution. Verification requires evidence tied to the data, calculation, documentation, or research design—not a vote among generated responses.

### Privacy and permission repair

The final sentence ignores data minimization, file-by-file permission, confidentiality, and the possibility of credentials or personal information. A safer alternative is to share only a sanitized statement of the disputed claim, the minimum nonprivate summary values needed to audit it, and the relevant public documentation. Never send private student work, grades, accommodations, credentials, licensed material, or restricted data to an external AI system.

### Three-sentence revision

> The executed Class 1 script reports 526 workers, no missing values in the CSV, and mean hourly wage of approximately 5.896 in 1976 dollars per hour; the mean is independently consistent with $3{,}101.35/526$. Among these workers in the historical 1976 extract, education and wage have a positive descriptive association, with correlation approximately 0.406 and a fitted slope of approximately 0.541 1976 dollars per hour per additional year of education. These results do not establish a causal effect, describe current American workers, or remove the need to verify the input, code, source, and interpretation without exposing private or restricted files.

### Nearby transfer

An AI reports the correct sample median of 4.65 and then writes, “Therefore the median hourly wage for American workers today is \$4.65.” Which part is verified and which part fails?

<details>
<summary>Reveal the transfer check</summary>

The value 4.65 is verified as the median recorded wage in this historical extract. The move to American workers today fails because neither the time period nor the target population matches the supported sample description.

</details>

[Return to the solution map](#solution-map)

<a id="solution-4"></a>

## Solution 4. Transfer the workflow without assistance

**Practice problem:** [Return to Problem 4](../#problem-4)  
**Class-guide connection:** [A first reproducible analysis](../../#7-a-first-reproducible-analysis), [Association is not causation](../../#8-association-is-not-causation), and [Common core, optional paths, and recap](../../#11-common-core-optional-paths-and-recap)

### Descriptive and causal questions

A defensible descriptive question is: “Among the 526 workers in this 1976 extract, how are recorded years of tenure with the current employer and recorded hourly wage related?” A distinct causal question is: “For a worker in a stated target population, how would hourly wage change if tenure with the current employer were increased rather than left at its alternative value?” The second question compares alternative intervention states that an observed scatterplot alone cannot recover; Class 5 names and formalizes this as counterfactual reasoning.

### Complete analysis plan

1. **Question:** State whether the target is a sample description or a causal effect and identify the population, time period, and comparison of interest.
2. **Data and source:** Use the documented historical `wage1` CSV, cite its 1976 source and provenance, identify one row as one worker, and retain the measurement units.
3. **Inspect:** Examine `tenure` and `wage`, their definitions, ranges, missing values, unusual values, and whether the available source information is adequate for the target.
4. **Code:** Specify a simple table or graph of tenure and wage and inspect any proposed instructions to ensure that they use the intended variables and file; syntax memorization is not the objective.
5. **Run:** Execute the instructions on the intended local input, record the environment and output, and do not hide warnings or errors.
6. **Verify:** Recheck the number of rows and missing values, inspect plotted points against the underlying columns, and reproduce at least one reported numerical summary by another route.
7. **Interpret:** Describe the direction, form, and limitations of the relationship only among the recorded workers, using the original units and historical period.
8. **Limitation:** State that observational association does not identify the effect of longer tenure and that population generalization requires additional sampling and external-validity information.

### Strongest conclusion from an upward plot

> Among the workers recorded in this historical 1976 extract, workers with longer tenure at their current employer tend to have higher recorded hourly wages.

This is a descriptive sample statement. Age, overall labor-market experience, education, occupation, employer or job type, worker performance, and selection into longer-lasting jobs are possible alternative explanations. A causal claim would require a defensible research design and information about how the tenure contrast was generated and how competing explanations were addressed.

### Reproducibility and privacy

A reproducibility check is to confirm that the documented input and executable instructions regenerate the saved table or graph and that an important summary can be independently recomputed. A sharing check is to inspect every proposed file for personal, confidential, restricted, licensed, or credential information and send only the authorized minimum.

### Nearby transfer

Replace `tenure` with potential labor-market experience, `exper`. Which parts of the plan remain unchanged, and which must be rewritten?

<details>
<summary>Reveal the transfer check</summary>

The question-to-limitation workflow, provenance review, execution, independent verification, and association–causation boundary remain unchanged. The substantive question, variable definition, measurement interpretation, proposed graph or calculation, alternative explanations, and retained conclusion must be rewritten for `exper`.

</details>

[Return to the solution map](#solution-map)

## Final study check

Close the solutions and reconstruct these four statements in your own words:

1. Code that runs is evidence about execution, not automatic evidence about validity.
2. Reproducibility requires documented inputs, inspectable instructions, regenerated output, and an auditable interpretation.
3. AI output is a proposal to inspect, not a source or authority.
4. A historical sample association is not automatically a current-population conclusion or causal effect.
