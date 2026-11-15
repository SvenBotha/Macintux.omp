#!/bin/sh
# Restore omp config into the agent dir and install the pinned omp version.
# Usage: curl -fsSL https://raw.githubusercontent.com/SvenBotha/Macintux.omp/main/install.sh | sh
set -eu
REPO_URL="https://github.com/SvenBotha/Macintux.omp.git"
AGENT_DIR="${PI_CODING_AGENT_DIR:-$HOME/.omp/agent}"

if [ -d "$AGENT_DIR/.git" ]; then
  git -C "$AGENT_DIR" pull --ff-only
else
  mkdir -p "$AGENT_DIR"
  git -C "$AGENT_DIR" init -q -b main
  git -C "$AGENT_DIR" remote add origin "$REPO_URL"
  git -C "$AGENT_DIR" fetch -q origin main
  BAK="$AGENT_DIR.bak-$(date +%Y%m%d%H%M%S)"
  git -C "$AGENT_DIR" ls-tree -r --name-only origin/main | while IFS= read -r f; do
    if [ -e "$AGENT_DIR/$f" ]; then
      mkdir -p "$BAK/$(dirname "$f")"
      cp -p "$AGENT_DIR/$f" "$BAK/$f"
      echo "backed up $f -> $BAK/$f"
    fi
  done
  git -C "$AGENT_DIR" checkout -q -f -B main --track origin/main
fi
git -C "$AGENT_DIR" config core.hooksPath .githooks

WANT="$(cat "$AGENT_DIR/OMP_VERSION")"
HAVE="$(omp --version 2>/dev/null | sed 's#^omp/##' || true)"
if [ "$HAVE" != "$WANT" ]; then
  curl -fsSL https://omp.sh/install | sh -s -- --binary --ref "v$WANT"
else
  echo "omp $WANT already installed"
fi
echo "Credentials are not in the repo: run 'omp login' (or set provider API keys)."
