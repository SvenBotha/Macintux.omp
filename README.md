# Macintux.omp

Version-controlled [oh-my-pi](https://github.com/can1357/oh-my-pi) setup: `~/.omp/agent` *is* this repo.
Tracked by allowlist only (see `.gitignore`): `config.yml`, `keybindings.yml`, `RULES.md`, `AGENTS.md`, `SYSTEM.md`, and `rules/`, `skills/`, `commands/`, `prompts/`, `hooks/`, `extensions/`, plus `tools/*.ts|js|md` and tool subfolders.
Anything else (`agent.db` with your credentials, databases, sessions, caches, `mcp.json`, `models.yml`) is ignored. To track a new kind of file, add a `!/<name>` line to `.gitignore` on purpose.
A pre-commit hook (`.githooks/pre-commit`, enabled by `install.sh`) blocks commits that look like they contain API keys or tokens.

## New machine
    curl -fsSL https://raw.githubusercontent.com/SvenBotha/Macintux.omp/main/install.sh | sh
    omp login
or, from a Macintux.dotfiles clone: `terminal/modules/omp/install.sh`.
Existing files that the repo would overwrite are backed up to `~/.omp/agent.bak-<timestamp>/`.
`install.sh` also installs the pinned [OpenSpec](https://github.com/Fission-AI/OpenSpec) CLI (`OPENSPEC_VERSION`, standalone binary in `~/.local/bin`), which the `/idea-spec` and `/idea-handoff` commands need.

## Tracking changes
    ~/.omp/agent/snapshot.sh      # writes current omp and openspec versions to OMP_VERSION / OPENSPEC_VERSION, shows git status
    git -C ~/.omp/agent switch -c <type>/<summary>   # never commit on main
    git -C ~/.omp/agent add -A && git -C ~/.omp/agent commit -m "..." && git -C ~/.omp/agent push -u origin HEAD
