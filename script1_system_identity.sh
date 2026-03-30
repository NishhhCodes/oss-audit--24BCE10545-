#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author: Nishan Kumar | Registration: 24BCE10545
# Course: Open Source Software | Capstone Project
# Software Audited: Git (Version Control System)
# ============================================================

# --- Student Information ---
STUDENT_NAME="Nishan Kumar"           
REG_NUMBER="24BCE10545"      
SOFTWARE_CHOICE="Git"              

# --- Gather system information using command substitution ---
KERNEL=$(uname -r)                   # Get Linux kernel version
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2 || cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
USER_NAME=$(whoami)                  # Get current logged-in user
HOME_DIR=$HOME                       # Get home directory of current user
UPTIME=$(uptime -p)                  # Get system uptime in human-readable form
CURRENT_DATE=$(date '+%A, %d %B %Y %H:%M:%S')   # Get current date and time

# --- License information for the OS ---
OS_LICENSE="GNU General Public License version 2 (GPL v2)"

echo "================================================================"
echo "        OPEN SOURCE SOFTWARE AUDIT — SYSTEM IDENTITY REPORT    "
echo "================================================================"
echo ""

# --- Student info section ---
echo "  Student  : $STUDENT_NAME"
echo "  Reg No.  : $REG_NUMBER"
echo "  Software : $SOFTWARE_CHOICE"
echo ""

# --- Divider line ---
echo "----------------------------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "----------------------------------------------------------------"

# --- Print gathered system details ---
echo "  Distribution : $DISTRO"
echo "  Kernel Ver.  : $KERNEL"
echo "  Current User : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  System Up    : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""

# --- License information ---
echo "----------------------------------------------------------------"
echo "  OS LICENSE INFORMATION"
echo "----------------------------------------------------------------"
echo "  The Linux kernel running this system is licensed under:"
echo "  $OS_LICENSE"
echo ""
echo "  This means: you are FREE to run, study, share, and modify"
echo "  this software. The GPL v2 ensures that all derivative works"
echo "  must also remain open and free — this is 'copyleft'."
echo ""

# --- Audited software summary ---
echo "----------------------------------------------------------------"
echo "  AUDITED SOFTWARE: GIT"
echo "----------------------------------------------------------------"
echo "  Git is a free and open-source distributed version control"
echo "  system released under GPL v2. It was created by Linus"
echo "  Torvalds in 2005 after BitKeeper revoked its free license"
echo "  from the Linux kernel development community."
echo ""
echo "================================================================"
echo "  End of System Identity Report"
echo "================================================================"
