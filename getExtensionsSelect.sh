
#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# File to store extension details
csv_file="extensions.csv"

# Create the file if it does not exist and add a header if needed
if [ ! -f "$csv_file" ]; then
    echo "firstname,lastname,extension,access,phone_type,department" > "$csv_file"
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

# Select phone type
PS3="Please select the type of phone you prefer (1 or 2): "
select phone_type in "headset" "handheld"; do
    case $phone_type in
        "headset"|"handheld")
            echo "You selected: $phone_type"
            break
            ;;
        *)
            echo "Invalid selection. Please choose 1 or 2."
            ;;
    esac
done

# Select department
PS3="Please select your department (1-4): "
select department in "finance" "sales" "customer service" "engineering"; do
    case $department in
        "finance"|"sales"|"customer service"|"engineering")
            echo "You selected: $department"
            break
            ;;
        *)
            echo "Invalid selection. Please choose a valid option."
            ;;
    esac
done

# Append the information to the CSV file
echo "$firstname,$lastname,$extension,$access,$phone_type,$department" >> "$csv_file"

echo "\nInformation saved to $csv_file. Thank you!"
