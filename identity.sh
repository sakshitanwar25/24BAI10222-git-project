#!/bin/bash
# Author: [Your Name]
# Purpose: Displays system and license info

NAME="[Your Name]"
SOFTWARE="Git"

OS_INFO=$(hostnamectl | grep "Operating System" | cut -d: -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

echo "=========================================="
echo "      Open Source Audit - $NAME"
echo "=========================================="
echo "OS Distro : $OS_INFO"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Uptime    : $UPTIME"
echo "Note: This system runs under the GNU GPL License."
