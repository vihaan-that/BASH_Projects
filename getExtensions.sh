#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# File to store extension details
csv_file="extensions.csv"

# Create the file if it does not exist and add a header if needed
if [ ! -f "$csv_file" ]; then
    echo "firstname,lastname,extension,access" > "$csv_file"
fi

# Collect user information
read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname

while :; do
    read -N 4 -p "What is your extension number (4 digits)?: " extension
    echo  # Add a blank line after input
    if [[ "$extension" =~ ^[0-9]{4}$ ]]; then
        break
    else
        echo "Error: Extension number must be exactly 4 digits. Please try again."
    fi
done

while :; do
    read -N 4 -s -p "What access code would you like to use when dialing in (4 digits)?: " access
    echo  # Add a blank line after input
    if [[ "$access" =~ ^[0-9]{4}$ ]]; then
        break
    else
        echo "Error: Access code must be exactly 4 digits. Please try again."
    fi
done

# Append the information to the CSV file
echo "$firstname,$lastname,$extension,$access" >> "$csv_file"

echo "\nInformation saved to $csv_file. Thank you!"

