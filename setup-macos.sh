#!/usr/bin/env bash
set -euo pipefail

./setup.sh

R="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
cp      -- "$R/.bash_profile"       "$HOME/.bash_profile"
