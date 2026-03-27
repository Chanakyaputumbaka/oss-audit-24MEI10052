#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Chanakya

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================="
echo " Directory Audit Report"
echo "=============================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERM=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERM | Size: $SIZE"
    else
        echo "$DIR not found"
    fi
done

echo "------------------------------"

# Check Git configuration file
CONFIG="$HOME/.gitconfig"

if [ -f "$CONFIG" ]; then
    PERM=$(ls -l "$CONFIG" | awk '{print $1, $3, $4}')
    echo "Git Config File => Permissions: $PERM"
else
    echo "Git config file not found"
fi
