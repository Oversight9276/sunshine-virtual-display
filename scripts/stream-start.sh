#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
source "$SCRIPT_DIR/common.sh"

HDMI_MODE="$1"
CMD="kscreen-doctor"

# Disable connected physical displays
add_if_exists "disable" "DP-1"
add_if_exists "disable" "DP-2"
add_if_exists "disable" "DP-3"
add_if_exists "disable" "DP-4"

# Enable virtual display
add_if_exists "enable"  "HDMI-A-1" "$HDMI_MODE"

eval "$CMD"
