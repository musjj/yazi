#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR/..

echo "Bumping version: $1"

TOML_FILES="$(git ls-files '*Cargo.toml')"
perl -pi -e "s/^version = .*\$/version = \"$1\"/" $TOML_FILES