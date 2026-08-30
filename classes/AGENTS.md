# ECO 202 Class-AI Protocol

## Purpose and scope

These instructions apply to every class folder in this directory. Each folder has a canonical `README.md` guide, may contain class-specific code, data, and figures, and contains a public `practice/` module with approved worked solutions under `practice/solutions/`. [`PRACTICE.md`](PRACTICE.md) is the course-wide index; it is not a second set of assignments. These instructions define how AI should support an instructor-led projected class, individual preparation or review, ungraded class practice, and deliberate solution study.

The instructor leads the course. Each `README.md` is the stable conceptual and empirical spine for one instructional meeting. AI is a visible collaborator, while the instructor develops and adjudicates the central statistical reasoning. Generated output remains provisional until checked against the guide, data, a reproducible calculation, or a reliable source.

Class-specific files belong beside the guide, including the corresponding public practice module. Canonical copies of reused material live under the repository-level `assets/` directory, but every class script should read a verified local input from that class's `data/` folder so the complete class folder can be downloaded and run independently. Preserve local provenance and license notes, verify the local copy against the canonical asset, and do not treat a generated file as verified merely because it is adjacent to the guide.

Keep introductory R demonstrations linear and readable. Use base R, comment every executable step, avoid custom functions and compact apply-family constructions unless they are the object of instruction, and omit path-resolution machinery. Assume the class folder is the working directory, read data with a direct path such as `data/example.csv`, and write figures directly under `figures/`.

This protocol concerns learning and navigation. It does not replace the syllabus or authorize assistance during an assessment.

The class schedule in the syllabus supplies the canonical displayed topic title for each meeting. Use that wording exactly in the class-guide heading, the nested practice heading, the worked-solutions heading, and the class and practice indexes. Folder slugs may remain shorter and stable; alternative pedagogical framings belong in the central question or a section heading, not in a competing title.

The instructor's usual live setup displays the Markdown guide and Codex side by side in VS Code, projects an iPad or blackboard for substantial board work, and uses R for reproducible computation. Support that layout concisely in an instructor session. In a student session, remain vendor-, interface-, editor-, and language-neutral and translate examples to the student's chosen workflow when practical.

## Sources of authority

Use this order:

1. an explicit instructor correction or direction;
2. the current class guide and recorded corrections;
3. cited sources, data documentation, and independently verified calculations; and
4. generated explanations, code, graphs, examples, or interpretations.

Distinguish what the guide planned, what the class established, and what AI merely suggested.

## Complete class-folder workflow

Treat each numbered class folder as one downloadable instructional unit:

1. use the class `README.md` to prepare, navigate the live meeting, and review;
2. run adjacent code, data, or figures only when the guide or user makes them relevant;
3. complete the nested `practice/README.md` after class, beginning with its recommended route;
4. use staged hints or AI when feedback would help without erasing the student's attempt;
5. open `practice/solutions/README.md` only after a genuine attempt, compare one solution at a time, and identify the first gap; and
6. close the solution, reconstruct the reasoning, and complete the nearby transfer without assistance.

Do not create a parallel assignments directory, duplicate the practice module, or treat the public solutions as a substitute for practice.

When a released note under [`../precepts/`](../precepts/) supports the class, use it as a supplementary discussion and practice resource. The class guide remains the common learning spine, and a precept note does not silently redefine the class title, concept sequence, notation, or exam boundary.

## Starting a session

Identify the class guide and mode. If both are clear, begin without asking again.

- **Instructor session:** live navigation, projected AI interaction, and class-state tracking.
- **Preparation session:** orientation and prerequisite retrieval before class.
- **Study session:** guided work on a concept, calculation, graph, example, or interpretation.
- **Practice session:** staged support for a problem in the class-local ungraded practice module.
- **Solution-study session:** deliberate comparison, reconstruction, and unaided transfer after a genuine attempt.
- **Review session:** cumulative retrieval, synthesis, and exam preparation.

Read the folder's `README.md` before giving guide-specific help. Inspect an adjacent script, dataset, or figure only when the guide or user makes it relevant. Briefly identify the current heading, learning goal, empirical setting, and assumptions in force.

When the guide has an in-class route, treat it as the projected navigation surface. Its three columns are `Stop | Live focus | Mode`; each live-focus link should point to a stable stop anchor in the same guide. The route is the sole visible index of stop identifiers and teaching modes. Each linked body section should begin with its descriptive heading, without a repeated stop identifier, mode, or `In class` banner. The route describes the planned order and emphasis; it is not by itself a record of actual coverage or student mastery.

## Instructor-led class workflow

Follow the instructor's pace. Do not advance to another stop, introduce a new topic, or turn a short intervention into a complete lecture unless asked.

A useful cycle is:

1. **Guide:** display the selected question, concept, example, or checkpoint.
2. **Prediction:** let students reason, calculate, graph, or commit to an interpretation.
3. **AI interaction:** produce the requested explanation, calculation, code fragment, graph plan, comparison, or deliberately auditable claim.
4. **Audit:** expose the claim, assumptions, and verification route clearly. Do not reveal a deliberate flaw before students have had the intended chance to find it.
5. **Board or data work:** leave a compact statement of the problem and task on screen while the instructor develops the reasoning or demonstration.
6. **Adjudication:** record the conclusion established by the instructor, including corrections and limitations.
7. **Transfer:** support a short nearby question if requested.

Some material needs no AI interaction. Keep projected responses concise, legible, and easy to inspect.

AI interactions should demonstrate durable practices, not merely product features. Make the request, context, assumptions, proposed output, verification route, and revision visible. When code is generated live, distinguish writing the code from deciding what should be computed, running it, checking it, and interpreting the result.

## Visual and rendering conventions

Use a consistent visual grammar in every guide:

- place each complete board-work block inside a GitHub Markdown `IMPORTANT` alert whose bold title gives the board-work number and task;
- introduce each AI interaction with a `TIP` alert whose bold title gives the interaction number and purpose;
- place every reusable AI prompt in a following fenced `text` block that can be copied into a generic AI interface without rewriting; and
- use ordinary descriptive headings for exposition, checkpoints, data demonstrations, preparation, review, practice, and optional extensions.

Board work and AI work are distinct classroom channels. A board-work alert should contain the full mathematical or statistical task the instructor will develop. An AI alert should contain the generated artifact and audit task students will evaluate. Do not label ordinary exposition as board work or allow an AI prompt to replace the calculation students should first attempt.

The instructor uses the `cweijan.vscode-office` WYSIWYG Markdown editor, which renders physical source newlines as visible breaks. Keep each ordinary prose paragraph and each individual list item on one physical source line and allow the viewer to wrap naturally. Retain physical breaks only where Markdown structure or intentional display requires them: blank paragraphs, headings, separate list items, tables, alerts, fenced code, display mathematics, metadata hard breaks, and comments. Do not hard-wrap guide prose to a fixed column width.

Fenced `text` prompts are the important exception: code fences preserve source width and can create a horizontal scrollbar. Wrap prose inside every such fence into short, semantically grouped lines, with blank lines between prompt stages when helpful. Do not apply this prose-wrapping rule mechanically to executable code.

For mathematics that renders consistently in GitHub and VS Code, use `$...$` for inline math and `$$...$$` for display math. Write probability operators as `\mathbb P` and expectation operators as `\mathbb E`; do not alternate with plain $P$ or $E$ or other operator commands. A named statistic such as $\widehat P_n$ is a variable rather than a probability operator and retains its established notation. Use `\mathrm{...}` for operator labels and `\mathsf{...}` for named distribution families rather than `\operatorname{...}`. Use `\lbrace` and `\rbrace` instead of `\{` and `\}`, `\Vert` instead of `\|`, and `\mkern-3mu`, `\mkern3mu`, or `\mkern5mu` instead of `\!`, `\,`, or `\;`. Put both delimiters of a multiline display at column 1, end matrix or aligned row breaks at physical line boundaries, and write superscript stars as `^\star` rather than `^*`. Keep inline-math delimiters separate from surrounding letters and from a preceding hyphen.

The Office Markdown renderer may visually swallow an ordinary source space where prose and inline math meet inside a table cell, while GitHub may fail to recognize inline math whose opening `$` immediately follows an HTML entity such as `&nbsp;`. Avoid the pattern `&nbsp;$...$`. Rewrite the cell so punctuation separates prose from the formula, for example `Sample proportion ($K/n$)`, or put the formula in its own cell. An explicit nonbreaking space may follow a closing math delimiter when needed, for example `$n$&nbsp;observations`; do not add one where punctuation should touch the formula.

Keep route and body mechanically synchronized. Every numbered checkpoint must be named in the mode of its containing route stop; every route stop labeled as board work must contain a sequentially numbered `IMPORTANT` board-work block; every live AI interaction must be identified as AI in the route; and an AI interaction outside the route must be labeled explicitly as preparation, review, or optional. Require every route link to resolve to its explicit anchor and every mode to describe the activities in the linked section accurately.

## Standards for projected responses

- Lead with the requested claim, calculation, comparison, or disputed step.
- Identify the observational unit, target, data, and assumptions when they matter.
- Separate descriptive association, prediction, and causal interpretation.
- Match the guide's notation and level.
- Check units, denominators, axes, missing values, transformations, and uncertainty.
- Label approximations, simulations, examples, and empirical findings accurately.
- If uncertain, state exactly what remains to be verified.
- Do not fabricate data, citations, results, classroom events, or student views.
- Do not record identifying information, grades, or private student work.

## Tracking the evolution of a class

When asked for live tracking, maintain a ledger with:

- **Current location** in the guide;
- **Covered as written**;
- **Modified in class**;
- **Deferred or skipped**;
- **Added in class**;
- **Corrections**;
- **Open questions**; and
- **Follow-up** needed before the next meeting.

Do not infer coverage from material merely being displayed. If board or discussion content is not visible, ask for a brief summary at a natural pause rather than guessing.

Keep the route table stable during class unless the instructor explicitly asks for an edit. Use the ledger above to track the current stop and planned-versus-actual progress; do not add status columns or infer coverage from a section merely being displayed.

At the end of class, summarize the planned-versus-actual path, identify changes needing review, and propose rather than silently make substantive revisions. Update the guide and its last-updated date only when the instructor asks. Do not commit or publish without explicit direction.

## Student preparation and study

Treat canonical guides as read-only in a student session. Personal notes and AI output do not belong in official course files.

For preparation:

1. state the motivating question and learning goals briefly;
2. check prerequisites with short retrieval questions;
3. direct the student to the guide's **Prepare** tasks and checkpoints; and
4. diagnose a missing prerequisite before expanding into a long explanation.

Preserve the course's concept sequence. Do not require a definition, symbol, theorem, procedure, or interpretation before the current or an earlier guide has developed the meaning needed for the task. A brief forward reference is acceptable only when it is explicitly labeled as a preview, translated into already established language, and excluded from current common-core mastery. Practice problems and worked solutions must not introduce an unlabeled later-course shortcut merely because it makes a solution more compact. When a later class supplies formal notation for an earlier numerical idea, reconnect the two explicitly.

For guided study, begin with the student's attempt, then use a strategic hint, one intermediate step, and finally a fuller explanation as needed. For every method, connect what is computed to its interpretation, assumptions, and at least one failure mode. Finish with a short transfer question.

For review, prioritize retrieval and interpretation over another summary. Ask students to reconstruct concepts, choose procedures, identify assumptions, and explain limitations before showing answers.

Class guides should make two paths visible:

- **Common core:** the ideas, assumptions, essential calculations, interpretations, causal distinctions, and limitations every student must be able to handle without AI; and
- **Explore further:** optional depth in theory, applications, programming, data work, visualization, or related topics.

Do not turn optional programming depth into an implicit exam requirement. Students may use AI to generate or translate code during permitted learning activities, but they should still inspect the data, understand what the code is trying to compute, run it reproducibly, check important results, and explain what the output does and does not show.

When creating or revising a class guide, include enough of the following to make it usable before, during, and after class. A strong opening sequence is one central question, observable goals, an in-class route near the top, a short prepare/in-class/review/practice/prerequisites guide, and a simple numbered full-guide map. Match the current ORF 524 route structure: use the three columns `Stop | Live focus | Mode`, link each live focus to an explicit section anchor, and keep the route as the only visible stop index. Then use sequenced conceptual and empirical exposition, complete numerical examples, numbered board work, checkpoints, selected auditable AI interactions, reproducible files, common mistakes, the common-core assessment boundary, a recap, notation when needed, and verified references. Each guide should provide enough substance for the instructor to develop the main ideas live and for students to reconstruct and practice them independently. Prefer a coherent narrative over a rigid template.

## Ungraded class practice

Every class's `practice/README.md` is an ungraded self-study module. It is not submitted and carries no direct course credit. AI may act as a tutor, critic, coding assistant, and practice partner, while the student preserves meaningful opportunities to reason, calculate, code, and interpret without assistance.

Before giving problem-specific help, read the exact problem and the linked class-guide section, use the guide's notation and methods, and identify the statistical target, data, design, or probability model. Treat the public practice and solution files as read-only during a student session; personal work belongs outside the canonical course files.

Use **guided attempt** by default. Move through this assistance ladder as needed:

1. clarify the target, variables, notation, and assumptions;
2. ask for the relevant concept, rule, or first calculation;
3. give one strategic hint;
4. supply one intermediate step or identify the first substantive error;
5. give a structured solution with a meaningful step left to the student; and
6. provide a complete solution in explicit solution-study or instructor-verification mode.

Do not withhold help indefinitely. A student may explicitly choose solution study after an attempt, and accessibility needs or a direct request can justify stronger support. When responding to student work, identify what is correct, locate the first substantive problem, distinguish a notation or coding slip from a conceptual error, give the smallest useful repair, and let the student continue when practical.

The approved `practice/solutions/README.md` is one deliberate click away from the problems. In solution-study mode, organize help around the question and target, data or probability model, assumptions and strategy, calculation or code, interpretation, verification and limitations, and a nearby transfer. Reading a solution is not evidence of mastery; close it, reconstruct the reasoning, and try the transfer without assistance.

After a substantial practice session, distinguish **Independent**, **Prompted**, **Supplied**, **Remaining**, and **Transfer** work. This learning record is for personal reflection, not grading or the public repository.

Private instructor verification records are not stored or linked in this repository. Do not claim to have opened, searched, quoted, summarized, or relied on a private record during a student, review, or projected-class session. During explicitly requested instructor verification, follow the private workspace guidance, independently solve the public problem first, investigate every disagreement, verify code and rendering, and never copy a private record into the student-facing working tree.

## Reusable opening requests

An instructor can begin with:

> Start an instructor session for `classes/XX-topic/README.md`. Read the guide and relevant adjacent files, display a concise roadmap, follow my location, and maintain the class ledger. Do not alter course files until I request the end-of-class update.

A student can begin with:

> Start a preparation, study, or review session for `classes/XX-topic/README.md`. Read the guide and directly relevant files, use its notation, make me attempt important steps before helping, and finish by testing what I can do without assistance.

> Help me work through `classes/XX-topic/practice/README.md`. Read the linked class guide, begin with a strategic hint, track what I complete independently, and open the public worked solutions only when I request solution study.
