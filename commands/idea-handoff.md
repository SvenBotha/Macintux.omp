---
description: Move a specified idea into its own product repo and freeze the idea folder
argument-hint: "<slug>"
---
Work in the ideas repo at `~/git/.ideas`. Read `~/git/.ideas/AGENTS.md` first and follow its rules.

Resolve the idea from the first argument (`$1`): it's a slug, matched against `ideas/*-<slug>/` (an exact folder name also works). If it's empty or matches nothing, use the `ask` tool with a `<select>` of the ideas in the root `README.md` index (newest preselected), showing each one's status.

Read `~/git/.ideas/workflow/handoff.md` in full and follow it for that idea. Every step that creates a repository or installs anything happens only after Sven confirms it in an `ask` form.

<argument>
$ARGUMENTS
</argument>
