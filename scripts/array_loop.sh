#!/bin/bash
# this will create files mentioned in files.txt only if they not exists
readarray -t files < urls.txt

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "$file already exists"
    else
        touch "$file"
        echo "$file was created"
    fi
done