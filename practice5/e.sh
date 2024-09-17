#!/bin/bash

echo "jsk"

# Get today's date in YYYY-MM-DD format
today=$(date +"%Y%m%d")

# Loop through all .jpg files in the current directory
for file in *.jpg; do
    # Check if there are any .jpg files
    if [ -e "$file" ]; then
        # Rename the file to include today's date at the beginning
        mv "$file" "${today}${file}"
    fi
done

echo "Renaming complete."
