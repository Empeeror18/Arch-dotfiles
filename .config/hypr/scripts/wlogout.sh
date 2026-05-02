#!/usr/bin/env bash

# Kill if already running (toggle behavior)
if pgrep -x wlogout >/dev/null; then
    pkill wlogout
    exit 0
fi

# Launch wlogout with proper config
wlogout \
  --layout ~/.config/wlogout/layout \
  --css ~/.config/wlogout/style.css \
  --protocol layer-shell
