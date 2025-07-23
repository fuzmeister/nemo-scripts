#!/bin/bash

# Ensure that the provided argument is indeed a cue file
if [[ ! -f "$1" || "${1##*.}" != "cue" ]]; then
    notify-send "Please provide a valid .cue file." 
    exit 1
fi

# Remove the .cue extension from the first argument
output="${1%.cue}"
notify-send "Creating ${output}.chd..."

# Run chdman to create a chd from the provided cue file
chdman createcd -i "$1" -o "${output}.chd"
notify-send "Successfully created ${output}.chd"
