---
description: Explore an idea (feasibility, prior art, architecture sketch, UI)
argument-hint: "<slug>"
---
Work in the ideas repo at `~/git/.ideas`. Read `~/git/.ideas/AGENTS.md` first and follow its rules.

Resolve the idea from the first argument (`$1`): it's a slug, matched against `ideas/*-<slug>/` (an exact folder name also works). If it's empty or matches nothing, use the `ask` tool with a `<select>` of the ideas in the root `README.md` index (newest preselected), showing each one's status.

Run the **Explore** stage for that idea as AGENTS.md describes, and finish with its Then steps. Use web search and the GitHub API for every claim, and link sources. Afterwards, tell Sven the next command (`/idea-refine <slug>`).

<argument>
$ARGUMENTS
</argument>
