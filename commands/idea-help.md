---
description: Show the idea flow, or where one idea stands and what to run next
argument-hint: "[slug]"
---
Show Sven where he is in the idea flow. This is read-only: don't edit, commit or run any stage.

Read `~/git/.ideas/AGENTS.md` (its **Flow** table and the **Next command by status** list are the source of truth) and the index table in `~/git/.ideas/README.md`.

**Without an argument**, print:
1. The whole flow as one table: `# | Stage | Command | Produces | Status after`, taken from AGENTS.md. Mark Validate as optional.
2. "Your ideas": one line per idea in the index, as `<slug> · <status> · next: <command>`. Work out the next command from the status, using AGENTS.md's list. For `refining`, check whether `feasibility.md` plans an experiment and `experiment.md` is missing.
3. One line: "Run `/idea-help <slug>` for one idea's details."

**With an argument** (`$1`), find the folder `~/git/.ideas/ideas/*-$1/` (or an exact folder name). If nothing matches, say so and list the slugs. Otherwise read the idea's `README.md` and list its files, then print:
1. The flow as a checklist, with the idea's position marked: `✓` done, `→` current, `·` not yet, `–` skipped (e.g. Validate when there is no `experiment.md`). A stage is done when the status has passed it and its output files exist.
2. **Where it stands**: status, verdict, one-liner, and the date of the latest change-history row in `idea-refined.md` (if present).
3. **Blocking you**: open questions marked "Needs Sven" in `idea-refined.md`, plus the `NEEDS CLARIFICATION` and `[ASSUMPTION]` items in `architecture.md`, if any.
4. **Next**: the exact command to run (e.g. `/idea-architect agent-query-layer`) and one sentence on what it will produce. Also name the alternatives (e.g. another `/idea-refine` round, or skipping Validate) when they apply.
5. For `building`: the product repo link from the Verdict row, and a reminder that work continues there with OpenSpec.

Keep it to one screen. Use the exact command spellings from AGENTS.md.

<argument>
$ARGUMENTS
</argument>
