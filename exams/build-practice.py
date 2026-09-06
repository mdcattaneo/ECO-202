#!/usr/bin/env python3
"""Build practice exams and solutions in this repository; never publish.

Run with Python 3 and pdflatex installed. Optional exam numbers select modules.
Compile in place, validate logs/PDF output, then delete generated files on success.
Keep diagnostics on failure. Sources, final PDFs, and README files are preserved.
"""
import argparse
from pathlib import Path
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parent
OFFERING = "ECO202-Fall2026"
GENERATED_ENDINGS = (
    ".aux", ".log", ".out", ".toc", ".lof", ".lot", ".fls",
    ".fdb_latexmk", ".synctex.gz", ".synctex(busy)", "-preview.png",
)


def build_document(source):
    """Retain only the document's source and final PDF after a checked build."""
    if not source.is_file():
        raise RuntimeError(f"Missing source: {source}")
    for _ in range(2):
        result = subprocess.run(
            ["pdflatex", "-no-shell-escape", "-interaction=nonstopmode",
             "-halt-on-error", "-file-line-error", source.name],
            cwd=source.parent, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        )
        if result.returncode:
            raise RuntimeError(f"Build failed: {source}; diagnostic files retained.\n{result.stdout[-7000:]}")
    log = source.with_suffix(".log").read_text(errors="replace")
    warnings = [line for line in log.splitlines()
                if "Overfull" in line or "undefined" in line.lower()]
    if warnings:
        raise RuntimeError(f"Review build warnings in {source}; diagnostic files retained.\n" + "\n".join(warnings))
    pdf = source.with_suffix(".pdf")
    pdf_bytes = pdf.read_bytes()
    if not pdf_bytes.startswith(b"%PDF-") or b"%%EOF" not in pdf_bytes[-1024:]:
        raise RuntimeError(f"Incomplete PDF: {pdf}; diagnostic files retained.")
    # Validate every exact cleanup target before removing any generated files.
    cleanup = []
    for ending in GENERATED_ENDINGS:
        path = source.parent / (source.stem + ending)
        if path.is_symlink():
            raise RuntimeError(f"Refusing to remove a symlink: {path}")
        if path.exists():
            if not path.is_file():
                raise RuntimeError(f"Unexpected non-file cleanup target: {path}")
            cleanup.append(path)
    for path in cleanup:
        path.unlink()
    print(f"Built {pdf.relative_to(ROOT)}; removed {len(cleanup)} generated files.", flush=True)
    return pdf


def build_practice(numbers):
    result = []
    for number in numbers:
        practice = ROOT / f"{number:02d}-in-class-exam-{number}" / "practice"
        # The local copy lets a downloaded practice folder compile on its own.
        shutil.copyfile(ROOT / "exam-style.tex", practice / "exam-style.tex")
        for version in ("A", "B"):
            stem = f"{OFFERING}-Exam{number}-Practice{version}"
            result.append(build_document(practice / f"{stem}.tex"))
            result.append(build_document(practice / "solutions" / f"{stem}-Solutions.tex"))
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("exams", nargs="*", type=int, choices=range(1, 5))
    args = parser.parse_args()
    built = build_practice(args.exams or range(1, 5))
    print(f"Completed {len(built)} practice PDF builds; nothing committed or published.")


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, OSError) as error:
        print(error, file=sys.stderr)
        sys.exit(1)
