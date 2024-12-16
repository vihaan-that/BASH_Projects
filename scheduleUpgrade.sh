#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# Usage:
# This script updates and upgrades the system packages and reboots the system if required.
# Intended to be scheduled via a system-wide crontab to run daily at midnight.

# Details:
# - Updates and upgrades the system packages using the package manager.
# - Includes a reboot command to apply updates that require a restart.
# - Suitable for automated, non-interactive operation.
# - Automatically adds itself to the system-wide crontab to run daily at midnight.

# Update and upgrade system packages
sudo apt update -y && sudo apt upgrade -y

# Reboot the system
sudo reboot

# Add to system-wide crontab if not already present
cron_job="0 0 * * * /path/to/system_update.sh"
(crontab -l 2>/dev/null | grep -q "$cron_job") || (echo "$cron_job" | sudo tee -a /etc/crontab > /dev/null)

# Completion message (will only be logged if script is run interactively)
echo "System updated, reboot initiated, and cron job ensured."
