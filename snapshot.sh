#!/bin/sh
# Record the installed omp version and show uncommitted config changes.
set -eu
AGENT_DIR="${PI_CODING_AGENT_DIR:-$HOME/.omp/agent}"
omp --version | sed 's#^omp/##' > "$AGENT_DIR/OMP_VERSION"
git -C "$AGENT_DIR" status --short
