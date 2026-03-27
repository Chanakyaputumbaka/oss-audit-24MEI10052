#!/bin/bash
# Script 4: Log File Analyzer
# Author: Chanakya

LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

echo "Analyzing log file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "------------------------------"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total occurrences of '$KEYWORD': $COUNT"
echo "------------------------------"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
