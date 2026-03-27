#!/bin/bash
# Script 1: System Identity Report
# Author: Chanakya | OSS Project

STUDENT_NAME="Chanakya"
SOFTWARE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
DATE_TIME=$(date)

echo "==============================="
echo " Open Source Audit - $STUDENT_NAME"
echo " Software: $SOFTWARE"
echo "==============================="
echo "Kernel Version : $KERNEL"
echo "User           : $USER_NAME"
echo "Distribution   : $DISTRO"
echo "Uptime         : $UPTIME"
echo "Date & Time    : $DATE_TIME"
echo "License        : GNU GPL (Linux)"
echo "==============================="

