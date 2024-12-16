#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# Usage:
# This script monitors server performance and logs key metrics into a file named performance.log.
# Schedule it to run hourly using a cron job on the server.

# Details:
# - Logs the current timestamp.
# - Checks internet connection status.
# - Records RAM usage.
# - Records swap usage.
# - Records disk usage.

# Define the log file
log_file="performance.log"

# Log the current timestamp
echo "$(date)" >> "$log_file"

# Check internet connection
ping -c 1 google.com &> /dev/null
if [ "$?" -eq 0 ]; then
    echo "Internet: Connected" >> "$log_file"
else
    echo "Internet: Disconnected" >> "$log_file"
fi

# Log RAM usage
echo "RAM Usage :" >> "$log_file"
free -h | grep "Mem" >> "$log_file"

# Log swap usage
echo "Swap Usage :" >> "$log_file"
free -h | grep "Swap" >> "$log_file"

# Log disk usage
echo "Disk Usage :" >> "$log_file"
df -h >> "$log_file"
echo "" >> "$log_file"

# Completion message (useful for debugging or manual execution)
echo "Performance metrics logged to $log_file."
