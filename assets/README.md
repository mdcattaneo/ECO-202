# ECO 202 Assets

[Course home](../) · [Class guide index](../classes/) · [Ungraded practice index](../classes/PRACTICE.md)

This directory contains course-created or redistributable data, figures, and code used by the class guides and practice modules.

Every added asset should record its source, license or permission, and any steps needed to reproduce it. Copyrighted readings, restricted data, student information, and private course materials do not belong here.

## Shared empirical data

The course's principal empirical library is stored in [`data/wooldridge/`](data/wooldridge/). It contains documented, software-neutral CSV exports of four real datasets distributed with Jeffrey M. Wooldridge's textbook data package. The recurring course spine uses `wage1`, `bwght`, and `jtrain2`; `gpa1` is retained as an optional extension.

This library is the canonical source for provenance, licensing, and integrity checks. Each class that uses a dataset also includes a verified local copy under its own `data/` folder so the complete class folder can be downloaded and run independently. Use the local copy while working inside a class folder; return here when checking provenance or file identity.
