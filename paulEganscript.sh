#!/bin/bash

# Script: System Report with Full History

# Set filename with timestamp
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
output_file="system_report_$timestamp.txt"

echo "===== DATE =====" >> "$output_file"
date >> "$output_file"

echo "===== HOSTNAME =====" >> "$output_file"
hostname >> "$output_file"

echo "===== ARCHITECTURE =====" >> "$output_file"
arch >> "$output_file"

echo "===== SYSTEM INFO =====" >> "$output_file"
uname -a >> "$output_file"

echo "===== UPTIME =====" >> "$output_file"
uptime >> "$output_file"

echo "===== CURRENT USER =====" >> "$output_file"
whoami >> "$output_file"

echo "===== LOGGED-IN USERS =====" >> "$output_file"
who >> "$output_file"

echo "===== USER ACTIVITY =====" >> "$output_file"
w >> "$output_file"

echo "===== TOP PROCESSES =====" >> "$output_file"
top -b -n 1 | head -n 15 >> "$output_file"

echo "===== COMMAND HISTORY =====" >> "$output_file"
history -r ~/.bash_history
history | tail -n 20 >> "$output_file"
