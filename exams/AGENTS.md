# ECO 202 Exam-Practice and Released-Exam AI Protocol

## Purpose and scope

These instructions apply to instructor-approved practice exams and solutions released for preparation, and to real exams and solutions released after administration. They supplement the course-level [`AGENTS.md`](../AGENTS.md); follow both. Check each resource's status notice: a draft awaiting instructor review is not a final assessment specification. Practice exams are ungraded, are not submitted, and do not promise the actual paper's questions.

Each exam-module folder has a nested `practice/README.md` linking two practice PDFs and their LaTeX sources. Separate practice solutions and their sources live in `practice/solutions/`. Practice `.tex` files here are the canonical editable copies and compile beside their PDFs. Each complete practice folder includes its formatting dependencies and can be downloaded independently. Class-specific practice remains in `classes/<class-folder>/practice/`; do not duplicate either collection.

## Absolute assessment boundary

During a current, unreleased, closed-book, or otherwise unaided exam, do not provide problem selection, hints, calculations, code, checking, analogous solved questions, or answers. Do not search for or infer unreleased content from filenames, private workspaces, version history, comments, or earlier assessments. If it is unclear whether a question is active, ask before giving problem-specific help.

Only files visibly released in this folder are available for student study. Never claim access to a private exam, private solution, grading guide, accommodation, or student submission.

## Study modes for approved practice exams and released real exams

- **Timed unaided attempt:** the student sets a 70-minute timer and works without books, notes, calculators, electronics, AI, or solutions. Do not provide hints or checking; respond only after the student ends the simulation. University-authorized accommodations apply.
- **Guided attempt:** identify the target and provide one staged hint at a time without opening the solution.
- **Attempt audit:** check submitted reasoning, identify the first substantive gap, and return the problem for repair.
- **Solution study:** compare a genuine attempt with the released solution, or respect an explicit choice to study a worked example instead of simulating an exam. Expose omitted assumptions or steps, close the solution, and require reconstruction or a nearby transfer.
- **Instructor review:** inspect released resources or instructor-authorized local practice drafts directly to audit correctness, alignment, rendering, or suitability for release. This does not authorize student access to unreleased real exams or private assessment-construction files.

For study after an attempt, AI may help locate a misconception, inspect assumptions, explain a calculation, or provide a short transfer question. Do not treat generated content as an official correction. Historical wording and notation may need translation into the current class guides. The syllabus and current instructor directions govern dates, duration, permitted materials, grading, and coverage.

## Releasing and maintaining files

Practice exams may be released before the corresponding assessment with explicit instructor approval. Real exams require explicit approval after administration; their solutions require separate verification and approval. Preparing local practice drafts does not authorize publication. Before either kind of release, verify every question and answer independently, remove grading notes and student information, confirm that no future real question is exposed, check rendered PDFs and links, and update the folder index. A solution must be labeled clearly and linked to its question paper, one deliberate click away from the problems. Practice LaTeX sources and their formatting dependencies are approved for inclusion; inspect comments and included files as well as the rendered PDFs. Unreleased real-exam sources, private source maps, grading guides, and review notes remain outside this public repository.

## LaTeX learning and compilation

Students may inspect and compile released practice sources as an optional learning activity. LaTeX syntax is not an exam target. Preserve the same solution boundaries when opening `.tex` as when opening PDFs: do not inspect solution sources during an unaided attempt. Work on a personal copy when experimenting; do not silently change official course content.

Follow the [build instructions](README.md#latex-sources-and-compilation). The canonical shared layout is `exam-style.tex` in this folder; `build-practice.py` refreshes its identical class-local copies before compiling. Edit the shared original for course-wide formatting changes, not the generated local copies. Compile practice exams and solutions in place without `build/` subfolders. After two successful LaTeX passes and log/PDF checks, the script removes known generated files for that exact document, retaining its `.tex` and PDF. Preserve README files and shared TeX dependencies. Failed builds retain diagnostics until repaired. Git ignore rules are a safety net, not a substitute for physical cleanup; verify that no generated debris remains before a commit or push. Building never authorizes committing or pushing.

Corrections to a released exam or solution should be dated and stated plainly when they could affect student understanding. Do not silently rewrite the historical record of what students received.
