#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Chanakya

echo "Answer the following questions:"
echo ""

read -p "1. Name an open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you (one word)? " FREEDOM
read -p "3. What would you like to build and share openly? " BUILD

DATE=$(date '+%d %B %Y')
FILE="manifesto_$(whoami).txt"

echo "Creating your manifesto..."
echo ""

echo "Open Source Manifesto - $DATE" > $FILE
echo "" >> $FILE
echo "I, Chanakya, believe that tools like $TOOL show how $FREEDOM drives innovation." >> $FILE
echo "I want to build and share $BUILD so others can learn and improve upon it." >> $FILE
echo "Open source represents collaboration, transparency, and growth." >> $FILE
echo "" >> $FILE
echo "- Chanakya" >> $FILE

echo "Manifesto saved in $FILE"
echo ""
cat $FILE
