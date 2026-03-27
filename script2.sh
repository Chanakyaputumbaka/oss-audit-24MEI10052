#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Chanakya

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "-----------------------------"

# Check installation (Debian-based like Kali)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."

    echo "Package details:"
    dpkg -l | grep $PACKAGE

else
    echo "$PACKAGE is NOT installed."
fi

echo "-----------------------------"

# Case statement (philosophy message)
case $PACKAGE in
    git)
        echo "Git: a distributed version control system that enables open collaboration."
        ;;
    apache2)
        echo "Apache: a powerful open-source web server."
        ;;
    mysql)
        echo "MySQL: widely used open-source database system."
        ;;
    vlc)
        echo "VLC: a free multimedia player supporting all formats."
        ;;
    *)
        echo "Open-source tool supporting innovation and freedom."
        ;;
esac
