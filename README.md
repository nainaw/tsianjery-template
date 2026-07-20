# Tsianjery Publishing System (TPS)

**Motto**

> From plain content to beautiful publishing.

---

## Overview

The Tsianjery Publishing System (TPS) separates **content** from **presentation**.

Authors write only the devotional content using the **TSM (Tsianjery Manuscript)** language.

TPS automatically:

* reads one or more TSM manuscripts,
* validates their structure,
* converts them into Markdown,
* prepares them for publication with Jekyll.

The goal is to make writing annual devotionals simple while allowing the publishing process to be fully automated.

---

## Current Features

* Parses TSM manuscripts into structured Ruby objects.
* Supports multiple manuscripts (recommended: one file per quarter).
* Validates manuscript structure.
* Validates lesson structure.
* Generates Markdown automatically.
* Publishes all manuscripts found in the `manuscripts/` directory.
* Continues publishing even if one manuscript contains errors.
* Displays a publishing summary after every run.

---

## Project Structure

```text
lib/
    lesson.rb
    markdown_renderer.rb
    parser.rb
    quarter.rb

manuscripts/
    2026-Q1.tsm
    2026-Q2.tsm

output/
    2026-Q1.md
    2026-Q2.md

tools/
    scribe.rb
```

---

## TSM Lesson Format

Every lesson consists of exactly three parts:

1. Lesson title
2. Bible verse (one or more lines)
3. Bible reference

Lessons are separated by a line containing hyphens (`-----`).

Example:

```text
The Joy of Faith

Trust in the Lord with all your heart,
and do not lean on your own understanding.

Proverbs 3:5

-----
```

---

## Roadmap

Upcoming milestones include:

* Publisher class
* Automatic Jekyll integration
* Automatic navigation generation
* Complete TSM language specification
* Full website generation from TSM manuscripts

---

TPS is developed incrementally, with each version improving readability, maintainability, and automation.
