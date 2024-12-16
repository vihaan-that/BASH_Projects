
#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# Usage:
# This script reads a text file containing a list of folder names and creates them.
# Provide the path to the text file as a command-line argument.
# Example: ./create_folders.sh /path/to/folders_to_create.txt

# Details:
# - Reads the text file line by line to get folder names.
# - Creates each folder in the current directory or specified relative paths.
# - Ensures proper handling of paths to avoid word splitting issues.

# Check if the file path is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 /path/to/folders_to_create.txt"
    exit 1
fi

# Assign the file path to a variable
file_path="$1"

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "Error: File $file_path does not exist."
    exit 1
fi

# Read the file line by line and create folders
while IFS= read -r folder_name; do
    if [ -n "$folder_name" ]; then
        mkdir -p "$folder_name"
        echo "Created folder: $folder_name"
    fi
done < "$file_path"

# Completion message
echo "All folders have been created."
