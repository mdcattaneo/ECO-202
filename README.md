# ECO 202: Statistics and Data Analysis for Economics

This repository contains the student-facing materials for ECO 202 at Princeton University in Fall 2026. The course is instructor-led and AI-integrated: each class guide provides the stable statistical and empirical spine, while AI is used selectively for explanation, critique, examples, code, and guided practice. Independent mastery is assessed through four closed-book, fully unaided in-class exams.

- [Current syllabus](ECO202-Fall2026-Syllabus.pdf)
- [Course AI and learning guide](AGENTS.md)
- [Class guide and calendar index](classes/)
- [Ungraded practice index](classes/PRACTICE.md)
- [Weekly precept notes](precepts/)
- [Released in-class exams and solutions](exams/)
- [Individual empirical project](project/)
- [Shared empirical assets](assets/)

When viewing a Markdown guide, precept note, practice module, released solution, or project resource on GitHub, use the rendered **Preview** rather than **Code** or **Raw** so that mathematics, tables, links, and callouts display correctly.

## Course workflow

Each numbered folder under [`classes/`](classes/) is one complete instructional unit:

1. **Prepare with the class guide.** Read the central question, learning goals, prerequisites, and preparation prompts in the folder's `README.md`.
2. **Use the guide in class.** The instructor follows its linked in-class route, develops designated reasoning at the board or iPad, runs selected demonstrations, and uses AI only where generated output creates something useful to inspect.
3. **Reproduce the evidence.** When a class includes code, data, or figures, keep the class folder as the working directory and use the documented local files. Statistical judgment matters more than memorizing software syntax.
4. **Practice after class.** Open the nested `practice/README.md`, begin the recommended route without solutions, and use staged hints, AI, the textbook, or instructor and TA support when feedback would help.
5. **Study solutions deliberately.** Open `practice/solutions/README.md` after a genuine attempt, compare the reasoning, close the solution, reconstruct the method, and complete the nearby transfer without assistance.
6. **Retain the common core.** Be able to explain the concepts, assumptions, essential calculations, interpretations, causal distinctions, verification steps, and limitations independently.

The instructor's reference setup uses VS Code, Markdown, Codex, and R, but students may use another suitable AI system, interface, editor, or statistical environment. No required learning depends on a paid AI service or a particular programming language.

## Additional course areas

- [`precepts/`](precepts/) will contain weekly notes prepared by the teaching assistants. These notes support the class sequence and its ungraded practice; they do not replace the class guides as the common learning spine.
- [`exams/`](exams/) will contain an in-class exam and its instructor-approved solution only after that exam has been administered and approved for release. It contains no advance assessment material.
- [`project/`](project/) will contain the final project's approved brief, rubric, templates, reproducibility guidance, resources, and submission instructions as they are released. Student work is not submitted through the public repository unless the instructor explicitly says otherwise.

## Fall 2026 sequence

| Class | Date | Topic | Guide | Practice | Solutions |
|---:|---|---|---|---|---|
| 1 | Sep 2 | Course Introduction, AI-Assisted Learning, and Modern Data Workflows | [Open](classes/01-course-introduction-ai-and-data-workflows/) | [Practice](classes/01-course-introduction-ai-and-data-workflows/practice/) | [Study](classes/01-course-introduction-ai-and-data-workflows/practice/solutions/) |
| 2 | Sep 9 | Descriptive Statistics and Data Visualization | [Open](classes/02-descriptive-statistics-and-data-visualization/) | [Practice](classes/02-descriptive-statistics-and-data-visualization/practice/) | [Study](classes/02-descriptive-statistics-and-data-visualization/practice/solutions/) |
| 3 | Sep 14 | Density Curves, Normal Distributions, and Standardization | [Open](classes/03-density-curves-normal-distributions-and-standardization/) | [Practice](classes/03-density-curves-normal-distributions-and-standardization/practice/) | [Study](classes/03-density-curves-normal-distributions-and-standardization/practice/solutions/) |
| 4 | Sep 16 | Scatterplots, Correlation, and Descriptive Regression | [Open](classes/04-scatterplots-correlation-and-descriptive-regression/) | [Practice](classes/04-scatterplots-correlation-and-descriptive-regression/practice/) | [Study](classes/04-scatterplots-correlation-and-descriptive-regression/practice/solutions/) |
| 5 | Sep 21 | Association, Causation, and Confounding | [Open](classes/05-association-causation-and-confounding/) | [Practice](classes/05-association-causation-and-confounding/practice/) | [Study](classes/05-association-causation-and-confounding/practice/solutions/) |
| 6 | Sep 28 | Populations, Samples, Surveys, and Selection Bias | [Open](classes/06-populations-samples-surveys-and-selection-bias/) | [Practice](classes/06-populations-samples-surveys-and-selection-bias/practice/) | [Study](classes/06-populations-samples-surveys-and-selection-bias/practice/solutions/) |
| 7 | Sep 30 | Randomized Experiments, Observational Studies, and Causal Effects | [Open](classes/07-randomized-experiments-observational-studies-and-causal-effects/) | [Practice](classes/07-randomized-experiments-observational-studies-and-causal-effects/practice/) | [Study](classes/07-randomized-experiments-observational-studies-and-causal-effects/practice/solutions/) |
| 8 | Oct 5 | Probability Rules and Probability Models | [Open](classes/08-probability-rules-and-probability-models/) | [Practice](classes/08-probability-rules-and-probability-models/practice/) | [Study](classes/08-probability-rules-and-probability-models/practice/solutions/) |
| 9 | Oct 7 | Conditional Probability, Independence, and Bayes' Rule | [Open](classes/09-conditional-probability-independence-and-bayes-rule/) | [Practice](classes/09-conditional-probability-independence-and-bayes-rule/practice/) | [Study](classes/09-conditional-probability-independence-and-bayes-rule/practice/solutions/) |
| 10 | Oct 26 | Random Variables, Expectations, Variance, and Covariance | [Open](classes/10-random-variables-expectations-variance-and-covariance/) | [Practice](classes/10-random-variables-expectations-variance-and-covariance/practice/) | [Study](classes/10-random-variables-expectations-variance-and-covariance/practice/solutions/) |
| 11 | Oct 28 | Sampling Distributions for Counts, Proportions, and Means | [Open](classes/11-sampling-distributions-for-counts-proportions-and-means/) | [Practice](classes/11-sampling-distributions-for-counts-proportions-and-means/practice/) | [Study](classes/11-sampling-distributions-for-counts-proportions-and-means/practice/solutions/) |
| 12 | Nov 2 | Laws of Large Numbers and the Central Limit Theorem | [Open](classes/12-laws-of-large-numbers-and-central-limit-theorem/) | [Practice](classes/12-laws-of-large-numbers-and-central-limit-theorem/practice/) | [Study](classes/12-laws-of-large-numbers-and-central-limit-theorem/practice/solutions/) |
| 13 | Nov 4 | Point Estimation, Bias, Variance, and Standard Errors | [Open](classes/13-point-estimation-bias-variance-and-standard-errors/) | [Practice](classes/13-point-estimation-bias-variance-and-standard-errors/practice/) | [Study](classes/13-point-estimation-bias-variance-and-standard-errors/practice/solutions/) |
| 14 | Nov 11 | Hypothesis Tests, p-Values, Statistical Significance, Errors, and Power | [Open](classes/14-hypothesis-tests-p-values-significance-errors-and-power/) | [Practice](classes/14-hypothesis-tests-p-values-significance-errors-and-power/practice/) | [Study](classes/14-hypothesis-tests-p-values-significance-errors-and-power/practice/solutions/) |
| 15 | Nov 16 | Confidence Intervals and Their Connection to Hypothesis Tests | [Open](classes/15-confidence-intervals-and-hypothesis-tests/) | [Practice](classes/15-confidence-intervals-and-hypothesis-tests/practice/) | [Study](classes/15-confidence-intervals-and-hypothesis-tests/practice/solutions/) |
| 16 | Nov 18 | Inference for and Comparison of Means and Proportions | [Open](classes/16-inference-for-means-and-proportions/) | [Practice](classes/16-inference-for-means-and-proportions/practice/) | [Study](classes/16-inference-for-means-and-proportions/practice/solutions/) |
| 17 | Nov 30 | Conditional Distributions, Expectations, and Simple Regression | [Open](classes/17-conditional-distributions-expectations-and-simple-regression/) | [Practice](classes/17-conditional-distributions-expectations-and-simple-regression/practice/) | [Study](classes/17-conditional-distributions-expectations-and-simple-regression/practice/solutions/) |
| 18 | Dec 2 | Multiple Regression, Causal Interpretation, and Project Workshop | [Open](classes/18-multiple-regression-causal-interpretation-and-project-workshop/) | [Practice](classes/18-multiple-regression-causal-interpretation-and-project-workshop/practice/) | [Study](classes/18-multiple-regression-causal-interpretation-and-project-workshop/practice/solutions/) |

The full calendar, holidays, four in-class exam dates, project deadline, grading rules, and assessment policies are in the [syllabus](ECO202-Fall2026-Syllabus.pdf).

## Assessment and authority

All class practice is ungraded and not submitted. AI is permitted as a learning resource for class preparation, study, precept follow-up, and ungraded practice, but students should preserve regular opportunities for unaided work. The four in-class exams prohibit AI and all other outside assistance; released exam files become study resources only after administration. The individual empirical project permits and encourages AI subject to the project-specific documentation, reproducibility, verification, attribution, privacy, and individual-responsibility requirements.

The syllabus, Canvas, and official instructor announcements govern deadlines, submissions, and course administration. Repository materials may be corrected or refined during the semester; an explicit instructor correction supersedes an earlier version. Copyrighted readings are distributed separately through Canvas, Princeton Library Course Reserves, or another approved channel.
