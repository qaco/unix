#!/usr/bin/env bash
set -euo pipefail
R="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
ln -sfn -- "$R/.bashrc"       "$HOME/.bashrc"
cp      -- "$R/.bash_aliases" "$HOME/.bash_aliases"
ln -sfn -- "$R/.gitconfig"    "$HOME/.gitconfig"
