# Tsianjery Publishing System History

This file records the evolution of the Tsianjery Publishing System (TPS).

---

## TPS 0.1 – GitHub Automation

**Date:** July 2026

### Achievement

The first GitHub Actions workflow was created successfully.

GitHub now automatically executes a workflow whenever changes are pushed to the repository.

### Result

The Tsianjery Publishing System is no longer a collection of files. It has become an automated publishing project.

## TPS 0.2 – Scribe reads TSM

**Date:** July 2026

### Achievement

Scribe was successfully executed by GitHub Actions.

For the first time, the Tsianjery Publishing System automatically read a `.tsm` manuscript and displayed its contents during the build process.

### Result

The TSM language now has its first working interpreter.

## TPS 0.3 – Quarter Recognition

**Date:** July 2026

### Achievement

Scribe successfully recognized the two main sections of a TSM document.

- Quarter Header
- Lessons

### Result

Scribe now understands the overall structure of a TSM manuscript.

## TPS 0.8.5 Official – Complete Manuscript Parser

**Date:** July 2026

### Achievement

The parser now reconstructs a complete manuscript structure from a `.tsm` file.

The following information is parsed successfully:

* Quarter title
* Quarter subtitle
* Lesson titles
* Verse text
* Bible references

Scribe displays the reconstructed `Quarter` and `Lesson` objects, allowing the parser to be verified directly from the command line.

### Result

The first major objective of the Tsianjery Publishing System has been achieved.

TPS now transforms a plain-text manuscript into a complete in-memory object model, providing a solid foundation for future publication formats such as Markdown, HTML, and GitHub Pages.

## TPS 0.9.0 Official

Why 0.9.0 instead of 0.9.3?

Because what we've achieved is larger than a small incremental change.

This release introduces an entirely new capability:

TPS no longer only parses manuscripts.
TPS now publishes them as Markdown.
## TPS 0.10 – Multi-manuscript Publishing

### Achievement

Scribe can now automatically discover and publish all `.tsm` manuscripts located in the manuscripts directory.

### Result

A single command can now generate multiple Markdown publications.

Example:

manuscripts/
- 2026-Q1.tsm
- 2026-Q2.tsm

produces:

output/
- 2026-Q1.md
- 2026-Q2.md

## TPS 0.11 – Manuscript Validation

**Date:** July 2026

### Achievement

The parser now validates manuscripts by requiring at least one lesson.

Scribe was improved to recover from invalid manuscripts, report the error, and continue publishing the remaining manuscripts.

### Result

TPS can now distinguish between valid and invalid manuscripts while completing a full publishing run.

## TPS 0.12 – Lesson Builder Refactoring

### Achievement

Extracted lesson creation into a dedicated build_lesson method.
Simplified parse_lessons.
Improved separation of responsibilities inside the parser.

### Result

The parser is now easier to understand, maintain, and extend without changing its behavior.

## TPS 0.10 – Markdown Rendering

**Date:** July 2026

### Achievement

A dedicated Markdown renderer was introduced.

TPS now converts parsed Quarter and Lesson objects into clean Markdown documents.

### Result

The parser and the rendering process are now separated, making future output formats easier to support.

---

## TPS 0.11 – Multiple Manuscript Publishing

**Date:** July 2026

### Achievement

Scribe now automatically discovers and publishes every `.tsm` manuscript found in the `manuscripts` directory.

The recommended organization is one manuscript per quarter.

### Result

TPS can now publish an entire year's devotional in a single execution.

---

## TPS 0.12 – Validation and Parser Refactoring

**Date:** July 2026

### Achievement

Validation was added for both manuscripts and lessons.

The parser was refactored by introducing dedicated helper methods such as `validate` and `build_lesson`, improving readability and maintainability.

### Result

Invalid manuscripts are detected early, while valid manuscripts continue to be published successfully.

---

## TPS 0.13 – Publishing Improvements

**Date:** July 2026

### Achievement

Publishing output was improved with configurable output directories, helper methods for writing generated files, and a final publishing summary showing successful and failed manuscripts.

### Result

TPS has evolved from a parser prototype into a reliable publishing pipeline capable of processing multiple manuscripts with graceful error handling.
