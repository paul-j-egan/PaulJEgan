#!/bin/bash

# Script: Final System Report - paulEgan.txt

output_file="paulEgan.txt"

# Overwrite previous content
> "$output_file"

echo "===== DATE =====" >> "$output_file"
date >> "$output_file"

echo -e "\n===== HOSTNAME =====" >> "$output_file"
hostname >> "$output_file"

echo -e "\n===== ARCHITECTURE =====" >> "$output_file"
arch >> "$output_file"

echo -e "\n===== SYSTEM INFO =====" >> "$output_file"
uname -a >> "$output_file"

echo -e "\n===== UPTIME =====" >> "$output_file"
uptime >> "$output_file"

echo -e "\n===== CURRENT USER =====" >> "$output_file"
whoami >> "$output_file"

echo -e "\n===== LOGGED-IN USERS =====" >> "$output_file"
who >> "$output_file"

echo -e "\n===== USER ACTIVITY =====" >> "$output_file"
w >> "$output_file"

echo -e "\n===== TOP PROCESSES =====" >> "$output_file"
top -b -n 1 | head -n 15 >> "$output_file"

echo -e "\n===== COMMAND HISTORY =====" >> "$output_file"
history -r ~/.bash_history
history | tail -n 20 >> "$output_file"

