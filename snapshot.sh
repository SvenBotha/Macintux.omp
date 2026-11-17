#!/bin/sh
# Record the installed omp and OpenSpec versions and show uncommitted config changes.
set -eu
AGENT_DIR="${PI_CODING_AGENT_DIR:-$HOME/.omp/agent}"
omp --version | sed 's#^omp/##' > "$AGENT_DIR/OMP_VERSION"
if command -v openspec >/dev/null 2>&1; then
  openspec --version > "$AGENT_DIR/OPENSPEC_VERSION"
fi
git -C "$AGENT_DIR" status --short
