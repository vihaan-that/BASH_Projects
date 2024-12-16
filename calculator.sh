#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# Ensure at least two arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <operation> <number1> [<number2> ... <number9>]"
    exit 1
fi

# Extract the operator and shift arguments
operation=$1
shift

# Validate the operator
if [[ "$operation" != "+" && "$operation" != "-" && "$operation" != "*" && "$operation" != "/" ]]; then
    echo "Error: Invalid operator. Supported operators are +, -, *, /."
    exit 1
fi

# Initialize the result using the first number (or a default value)
result=${1:-0}
shift

# Loop through the remaining arguments and perform the calculation
for number in "$@"; do
    # Validate that the argument is a number
    if ! [[ "$number" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Error: '$number' is not a valid number."
        exit 1
    fi

    # Perform the operation
    case $operation in
        "+")
            result=$((result + number))
            ;;
        "-")
            result=$((result - number))
            ;;
        "*")
            result=$((result * number))
            ;;
        "/")
            if [ "$number" -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
                exit 1
            fi
            result=$((result / number))
            ;;
    esac

done

# Display the final result
echo "Result: $result"
