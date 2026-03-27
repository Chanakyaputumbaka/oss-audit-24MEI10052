# Open Source Audit Project

## Student Details
Name: Chanakya  
Registration Number: 24MEI10052  

## Chosen Software
Git

## Project Description
This project presents a detailed audit of the open-source software Git. It covers its origin, licensing model, ethical considerations, and its importance in the open-source ecosystem. The project also includes five shell scripts that demonstrate practical Linux concepts and automation skills.

## Scripts Overview

### Script 1: System Identity Report
Displays essential system information including kernel version, logged-in user, uptime, Linux distribution, and system date/time.

### Script 2: FOSS Package Inspector
Checks whether Git is installed on the system and displays relevant package details using Linux package management tools.

### Script 3: Disk and Permission Auditor
Analyzes important system directories and reports their permissions, ownership, and disk usage.

### Script 4: Log File Analyzer
Reads a system log file, counts the occurrences of a given keyword, and displays the last few matching entries.

### Script 5: Open Source Manifesto Generator
Generates a personalized open-source philosophy statement based on user input and saves it to a text file.

## How to Run Scripts

```bash
# Give execution permission to all scripts
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

# Run Script 1
./script1.sh

# Run Script 2
./script2.sh

# Run Script 3
./script3.sh

# Run Script 4 (using dpkg log for meaningful output)
./script4.sh /var/log/dpkg.log install

# Run Script 5
./script5.sh
