---
description: Run a refinement round on an idea (writes or revises idea-refined.md)
argument-hint: "<slug> [feedback]"
---
Work in the ideas repo at `~/git/.ideas`. Read `~/git/.ideas/AGENTS.md` first and follow its rules.

Resolve the idea from the first argument (`$1`): it's a slug, matched against `ideas/*-<slug>/` (an exact folder name also works). If it's empty or matches nothing, use the `ask` tool with a `<select>` of the ideas in the root `README.md` index (newest preselected), showing each one's status.

Run one **Refine** round for that idea as AGENTS.md describes. Everything after the slug in the argument is Sven's feedback for this round. If there's none, use `ask` to collect it: show the current one-liner and the open questions, with a textarea for feedback. Afterwards, tell Sven the next command; AGENTS.md's **Next command by status** list says which.

<argument>
$ARGUMENTS
</argument>
