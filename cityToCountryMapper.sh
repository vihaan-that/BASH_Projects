
#!/bin/bash

# Author: Vihaan Thatiparthi
# Created: 2024-12-16
# Last Edited: 2024-12-16

# Usage:
# This script allows users to select a city from a list and outputs the corresponding country.
# Run the script and follow the prompts to choose a city from the displayed list.

# Details:
# - Presents a list of cities to the user using a `select` command.
# - Uses a `case` statement to match each city to its respective country.
# - Ensures a clear and user-friendly interface for the selection process.

PS3="Please select a city from the list (or press 0 to exit): "

select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi; do
    case $city in
        Tokyo)
            echo "Tokyo is in Japan." ;;
        London|Manchester)
            echo "$city is in the United Kingdom." ;;
        "Los Angeles"|"New York")
            echo "$city is in the United States." ;;
        Moscow)
            echo "Moscow is in Russia." ;;
        Dubai|"Abu Dhabi")
            echo "$city is in the United Arab Emirates." ;;
        Paris)
            echo "Paris is in France." ;;
        Bangalore|Pune)
            echo "$city is in India." ;;
        Johannesburg)
            echo "Johannesburg is in South Africa." ;;
        Istanbul)
            echo "Istanbul is in Turkey." ;;
        Milan)
            echo "Milan is in Italy." ;;
        Nairobi)
            echo "Nairobi is in Kenya." ;;
        Berlin)
            echo "Berlin is in Germany." ;;
        Karachi)
            echo "Karachi is in Pakistan." ;;
        "")
            echo "Invalid choice. Please select a valid option." ;;
        0)
            echo "Exiting. Thank you!"; break ;;
    esac

done
