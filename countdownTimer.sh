#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# Usage:
# This script acts as a countdown timer. Provide the minutes and seconds using command-line options.
# Example: ./countdown_timer.sh -m 1 -s 30

# Details:
# - Accepts two options: -m for minutes and -s for seconds.
# - Computes the total seconds and counts down until it reaches zero.
# - Prints the remaining time every second.

# Initialize variables
minutes=0
seconds=0

# Parse options using getopts
while getopts "m:s:" opt; do
    case $opt in
        m)
            minutes=$OPTARG
            ;;
        s)
            seconds=$OPTARG
            ;;
        *)
            echo "Invalid option. Use -m for minutes and -s for seconds."
            exit 1
            ;;
    esac
done

# Calculate total seconds
total_seconds=$((minutes * 60 + seconds))

# Validate total_seconds
if [ $total_seconds -le 0 ]; then
    echo "Error: Please provide a valid time greater than 0 seconds."
    exit 1
fi

# Countdown loop
while [ $total_seconds -gt 0 ]; do
    echo "$total_seconds seconds remaining..."
    sleep 1s
    total_seconds=$((total_seconds - 1))
done

# Timer end message
echo "Time's Up!"
