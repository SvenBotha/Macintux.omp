---
description: Write an idea's OpenSpec changes from its architecture's capability map
argument-hint: "<slug> [change-id]"
---
Work in the ideas repo at `~/git/.ideas`. Read `~/git/.ideas/AGENTS.md` first and follow its rules.

Resolve the idea from the first argument (`$1`): it's a slug, matched against `ideas/*-<slug>/` (an exact folder name also works). If it's empty or matches nothing, use the `ask` tool with a `<select>` of the ideas in the root `README.md` index (newest preselected), showing each one's status.

Read `~/git/.ideas/workflow/specify.md` in full and follow it for that idea. A second argument, if given, is the single change to write or revise.

<argument>
$ARGUMENTS
</argument>
