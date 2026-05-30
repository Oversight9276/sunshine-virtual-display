#!/bin/bash

# Shared utility for kscreen-doctor scripts

add_if_exists() {
    local action="$1"
    local output="$2"
    local mode="$3"

    if kscreen-doctor -o | grep -q "Output: .*${output}"; then
        CMD="$CMD output.${output}.${action}"
        if [[ -n "$mode" ]]; then
            CMD="$CMD output.${output}.mode.${mode}"
        fi
    fi
}
