# ECO 202 practice exams and released in-class exams

**Status:** Practice exams and worked solutions released September 6, 2026; no real exams released

**Last updated:** September 6, 2026

[Course home](../) · [Syllabus](../ECO202-Fall2026-Syllabus.pdf) · [Exam-study AI protocol](AGENTS.md) · [Class practice](../classes/PRACTICE.md)

## Practice by exam module

Each exam covers its own module. Earlier concepts remain prerequisites, but there is no separate cumulative section. Each folder contains two full practice exams with separate worked solutions. These ungraded practice exams complement class practice and are not submitted. They illustrate the intended scope and level, not the specific questions on the real exam.

| Assessment | Date in 2026 | Module | Practice exams | Real exam |
|---|---|---|---|---|
| [In-Class Exam 1](01-in-class-exam-1/) | September 23 | Classes 1–5 | [A and B](01-in-class-exam-1/practice/) | Not released |
| [In-Class Exam 2](02-in-class-exam-2/) | October 12 | Classes 6–9 | [A and B](02-in-class-exam-2/practice/) | Not released |
| [In-Class Exam 3](03-in-class-exam-3/) | November 9 | Classes 10–13 | [A and B](03-in-class-exam-3/practice/) | Not released |
| [In-Class Exam 4](04-in-class-exam-4/) | December 7 | Classes 14–18 | [A and B](04-in-class-exam-4/practice/) | Not released |

## Common format and conditions

Each paper targets 70 minutes of work within the 80-minute class meeting. Follow announced start and end times for a real exam. There are four multiple-choice questions worth 5 points each and four written problems worth 20 points each: 100 points in total. Multiple choice has one correct answer per question and no negative marking. Plan approximately 10 minutes for multiple choice and 15 minutes per written problem.

No books, notes, calculators, AI, or other electronics are permitted during an exam or timed unaided simulation, subject to University-authorized accommodations. Fractions, radicals, and equivalent exact expressions are acceptable; show your reasoning. Needed reference probability values and less central formulas are supplied. Fundamental definitions and constructions, including how to form a confidence interval, remain part of independent mastery. Software syntax and optional technical extensions are not exam targets.

## A useful practice sequence

1. Review the module's class guides and complete the relevant class practice.
2. Print Practice A, set a 70-minute timer, and attempt it without assistance or solutions. Record where time or understanding ran short.
3. Open the separate worked solutions after the attempt. Identify the first error in each missed problem, then close the solution and reconstruct the method. AI or TA help is appropriate at this study stage.
4. After repairing those gaps, use Practice B for another fresh unaided attempt.

The practice exams do not replace any part of the common core merely because a topic appears less prominently in one paper. The [syllabus](../ECO202-Fall2026-Syllabus.pdf), current class guides, and official instructor announcements govern the course.

## LaTeX sources and compilation

Each practice PDF has its readable `.tex` source beside it. The solution sources are kept separately in `practice/solutions/`, just like their PDFs. Learning LaTeX is optional and is not assessed on an exam. You do not need to compile anything to use the existing PDFs.

Filenames identify the course, semester/year, exam number, and version even after download: for example, `ECO202-Fall2026-Exam1-PracticeA.pdf` and `ECO202-Fall2026-Exam1-PracticeA-Solutions.pdf`. Their `.tex` sources use the same stems. Practice titles read “Practice Exam 1 — Version A”; Version B follows the same convention. Exam-specific formula files also include the offering and exam number, while shared formatting and build files keep generic names.

For automatic compilation and cleanup, use the build script below. If you want to compile a single paper manually, install a LaTeX distribution providing `pdflatex` and the packages listed in [the shared style](exam-style.tex). For Practice Exam 1 — Version A, open a terminal in its practice folder and run the following twice so page references resolve:

```sh
pdflatex -no-shell-escape ECO202-Fall2026-Exam1-PracticeA.tex
pdflatex -no-shell-escape ECO202-Fall2026-Exam1-PracticeA.tex
```

Use `ECO202-Fall2026-Exam1-PracticeB.tex` for Version B. For a worked solution, run the same two commands inside `solutions/` with `ECO202-Fall2026-Exam1-PracticeA-Solutions.tex` or `ECO202-Fall2026-Exam1-PracticeB-Solutions.tex`. For another module, use its exam number in the filename. Download the complete practice folder, including `exam-style.tex`, `solutions/`, and any module-specific dependencies; Exam 2 also includes `ECO202-Fall2026-Exam2-FormulaSupport.tex`. A lone question file is not enough.

To rebuild and automatically clean all eight practice exams and their solutions from the repository root, use Python 3 and the supplied [build script](build-practice.py):

```sh
python3 exams/build-practice.py
```

Append an exam number, such as `python3 exams/build-practice.py 2`, to build only that module. The script refreshes identical local copies of the shared style and compiles each paper twice in its own folder, without a `build/` subfolder. It checks the logs and PDF output before deleting known generated auxiliary files and preview images, leaving each paper's `.tex` and PDF. README files and shared formatting/formula dependencies stay intact. Failed builds retain diagnostics until repaired. Manual `pdflatex` commands do not clean up automatically; use this script to obtain the clean final layout before any publication. Git ignore rules are only a backup for unfinished builds. Compilation is local; it does not upload or publish anything. When experimenting, edit a personal copy and preserve the distinction between questions and solutions.

## Real-exam release boundary

Real exams remain private until they have been administered and the instructor explicitly approves release. Their solutions require separate verification and approval. Only approved practice resources may be posted in advance; private actual papers, grading notes, sources, and student information do not belong here. No active-assessment assistance is permitted.
