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
