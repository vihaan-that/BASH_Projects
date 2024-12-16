
# Bash Scripting Projects

Welcome to my Bash Scripting Projects repository! This repository is a showcase of my progress in learning scripting and automation using Bash. Below, you'll find a brief description of each project I've worked on.

---

## **Projects**

### **1. calculator.sh**
A basic calculator script that performs arithmetic operations (addition, subtraction, multiplication, division) on up to 9 numbers provided as command-line arguments.

### **2. cityToCountryMapper.sh**
A script that allows users to select a city from a predefined list and outputs the corresponding country name using a `select` menu and `case` statements.

### **3. countdownTimer.sh**
A countdown timer script that accepts minutes and seconds as options, calculates the total time, and counts down to zero while displaying the remaining seconds.

### **4. createFolders.sh**
Reads a text file containing folder names and creates all the directories listed in the file. Handles proper path validation and error handling.

### **5. fetchHeaders.sh**
Fetches HTTP headers for a list of URLs provided in a text file. Saves each URL's headers into individual files with names derived from the URL.

### **6. getExtensions.sh**
Prompts users for their first name, last name, extension number, and access code, then saves the information to a CSV file.

### **7. getExtensionsSelect.sh**
An extended version of `getExtensions.sh` that additionally asks users to select their phone type (headset/handheld) and department (finance, sales, etc.) using `select` menus.

### **8. memoryLog.sh**
Logs the system's memory usage into a specified directory. Checks if the directory exists, creates it if necessary, and appends memory statistics to a log file.

### **9. scheduleUpgrade.sh**
Automates system updates and upgrades, and schedules itself to run daily at midnight via cron. Includes an optional reboot after updates are completed.

### **10. sshPerformanceChecker.sh**
Logs server performance metrics (timestamp, internet connectivity, RAM usage, swap usage, and disk usage) to a file. Designed to run hourly on a remote server with automated daily log downloads via SCP.

### **11. HomeBackup**
A placeholder for future scripts or utilities related to automating backups.

### **12. our_first_script**
The very first Bash script I wrote while learning. A simple yet important milestone in my scripting journey.

---

## **How to Use**

1. Clone this repository:
   ```bash
   git clone https://github.com/<your_username>/<repo_name>.git
   cd <repo_name>
   ```

2. Review the scripts and their usage instructions within each file.

3. Run a script with execution permissions:
   ```bash
   chmod +x <script_name>.sh
   ./<script_name>.sh
   ```

---

## **Learning Highlights**
- **Automation**: Used cron to schedule scripts for periodic execution.
- **Error Handling**: Incorporated validations to ensure robust and user-friendly scripts.
- **Networking**: Learned to automate tasks such as fetching HTTP headers and managing remote server logs.
- **Data Management**: Worked with CSV files, directories, and log files to manage data effectively.

---

## **Next Steps**
- Explore advanced Bash features like functions, arrays, and input validation.
- Integrate external APIs and tools for more powerful automation.
- Create more complex, real-world automation workflows.

---

Feel free to explore, learn, and suggest improvements! 😊
