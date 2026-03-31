#!/bin/bash

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "========================================"
echo " Log File Analyzer"
echo "========================================"

if [ ! -f "$LOGFILE" ]; then
echo "Error: File not found"
exit 1
fi

if [ ! -s "$LOGFILE" ]; then
echo "File is empty"
exit 1
fi

while IFS= read -r LINE; do
if echo "$LINE" | grep -iq "$KEYWORD"; then
COUNT=$((COUNT + 1))
fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"

grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
