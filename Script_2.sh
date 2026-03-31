#!/bin/bash

PACKAGE="mysql-server"

echo "========================================"
echo " FOSS Package Inspector"
echo "========================================"

if dpkg -l | grep -qw $PACKAGE; then
echo "$PACKAGE is installed."
echo ""
dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"

case $PACKAGE in
mysql-server)
echo "MySQL: an open-source database powering millions of applications worldwide."
;;
*)
echo "Unknown package."
;;
esac

echo "========================================"
