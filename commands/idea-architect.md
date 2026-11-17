---
description: Architect an idea: full architecture.md and ADRs, with decision gates
argument-hint: "<slug> [fast]"
---
Work in the ideas repo at `~/git/.ideas`. Read `~/git/.ideas/AGENTS.md` first and follow its rules.

Resolve the idea from the first argument (`$1`): it's a slug, matched against `ideas/*-<slug>/` (an exact folder name also works). If it's empty or matches nothing, use the `ask` tool with a `<select>` of the ideas in the root `README.md` index (newest preselected), showing each one's status.

Read `~/git/.ideas/workflow/architect.md` in full and act as the architect it describes for that idea. If the second argument is `fast`, use Fast mode; otherwise use Guided mode, with an `ask` gate after every step.

<argument>
$ARGUMENTS
</argument>
