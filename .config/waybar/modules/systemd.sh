#!/bin/bash

if ! systemctl is-system-running | grep -q running
then
    status="$(systemctl is-system-running)"
    error_counter="$(systemctl list-units --failed --plain --no-legend --full | wc -l)"
    echo "${status} ${error_counter}"
    exit 0
else
    exit 1
fi
