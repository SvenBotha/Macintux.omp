# Git: never commit on the default branch

- NEVER commit, merge, or push onto `main`, `master`, or the repo's default branch (`git symbolic-ref --short refs/remotes/origin/HEAD`), nor on a detached HEAD.
- Before the first commit of a change, if HEAD is on the default branch: recommend a branch name and confirm it with the user via `ask` (recommended name preselected; user may type another). Cancelled or no answer → do not commit. Then `git switch -c <name>` (uncommitted work carries over) and commit there.
- Name format: `<type>/<short-kebab-summary>`, type ∈ `feat`, `fix`, `chore`, `docs`, `refactor`; ≤ 40 chars; e.g. `feat/ghostty-module`.
- Already on a non-default branch: commit there without asking.
- First push of a new branch: `git push -u origin <name>`.
- Subagents: never create branches; never commit on the default branch; report back to the parent instead.
