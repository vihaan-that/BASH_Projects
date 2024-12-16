
#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# Usage:
# This script fetches headers for a list of URLs provided in a file (urls.txt).
# It creates a separate text file for each URL to store its headers.
# Example: ./fetch_headers.sh /path/to/urls.txt

# Details:
# - Uses readarray to load URLs from the input file into an array.
# - Iterates over the array using a for loop.
# - Uses curl with the --head option to fetch headers for each URL.
# - Generates a filename from the URL and saves the headers in individual files.

# Check if the file path is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 /path/to/urls.txt"
    exit 1
fi

# Assign the file path to a variable
file_path="$1"

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "Error: File $file_path does not exist."
    exit 1
fi

# Read URLs into an array
readarray -t urls < "$file_path"

# Iterate over each URL
for url in "${urls[@]}"; do
    if [ -n "$url" ]; then
        # Extract the base name of the URL for the file name
        base_name=$(echo "$url" | cut -d'.' -f2)
        output_file="$base_name.txt"

        # Fetch headers and save to the file
        curl --head "$url" > "$output_file"
        echo "Headers for $url saved to $output_file"
    fi
done

# Completion message
echo "All headers have been fetched and saved."
