#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""

# User Input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and file
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Generate Manifesto
echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "----------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL as part of my daily workflow, and it represents the power of open-source software." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share without restriction." >> $OUTPUT
echo "If given the opportunity, I would build $BUILD and make it available to everyone without cost." >> $OUTPUT
echo "Projects like MySQL show how open collaboration can create tools that power the modern world." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
echo "----- Generated Manifesto -----"
cat $OUTPUT
echo "========================================"
