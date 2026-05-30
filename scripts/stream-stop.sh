#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
source "$SCRIPT_DIR/common.sh"

CMD="kscreen-doctor"

# Re-enable connected physical displays
add_if_exists "enable" "DP-1"
add_if_exists "enable" "DP-2"
add_if_exists "enable" "DP-3"
add_if_exists "enable" "DP-4"

# Disable virtual display
add_if_exists "disable"  "HDMI-A-1"

eval "$CMD"
