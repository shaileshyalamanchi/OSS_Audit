#!/bin/bash

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "      Directory Audit Report"
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "MySQL Directory Check"

MYSQL_DIR="/etc/mysql"

if [ -d "$MYSQL_DIR" ]; then
    ls -ld $MYSQL_DIR
else
    echo "MySQL directory not found"
fi
