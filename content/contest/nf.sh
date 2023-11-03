#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <new_file_name.cpp>"
    exit 1
fi

template_file="template.cpp"
new_file="$1.cpp"

if [ -e "$new_file" ]; then
    echo "$new_file already exists. Aborting."
    exit 1
fi

cp "$template_file" "$new_file"
