#!/bin/bash

# Define the function file_count
file_count() {
    # Check if an argument was provided
    if [ $# -eq 0 ]; then
        echo "Usage: $0 <directory>"
        exit 1
    fi

    # Get the directory from the argument
    local dir="$1"

    # Check if the provided argument is a directory
    if [ ! -d "$dir" ]; then
        echo "$dir is not a valid directory."
        exit 2
    fi

    # Use `find` to count all regular files in the specified directory and its subdirectories
    local count=$(find "$dir" -type f | wc -l)
    
    # Display the directory name followed by a colon
    echo "$dir:"
    
    # Display the number of files on the next line
    echo "$count"
}

# Call the file_count function with the directory argument
file_count "$1"
