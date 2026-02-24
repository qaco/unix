#!/usr/bin/env bash
set -euo pipefail

./setup.sh

R="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
cp      -- "$R/.xprofile"    "$HOME/.xprofile"

dconf load /org/cinnamon/ < "$R/cinnamon.dconf"
