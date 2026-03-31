#!/bin/bash

STUDENT_NAME="Your Name"
SOFTWARE_CHOICE="MySQL"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date "+%d %B %Y | %T")

DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')

MYSQL_VERSION=$(mysql --version 2>/dev/null)

echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"

echo "Chosen Software : $SOFTWARE_CHOICE"
echo ""
