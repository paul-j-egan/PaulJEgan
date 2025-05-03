#!/bin/bash

# Script: Final System Report (formatted output)
# Output to fixed file: paulEgan.txt

output_file="paulEgan.txt"

# Clear the file at the start to avoid appending
> "$output_file"

echo "===== DATE =====" >> "$output_file"
date >> "$output_file"

echo "" >> "$output_file"
echo "===== HOSTNAME =====" >> "$output_file"
hostname >> "$output_file"

echo "" >> "$output_file"
echo "===== ARCHITECTURE =====" >> "$output_file"
arch >> "$output_file"

echo "" >> "$output_file"
echo "===== SYSTEM INFO =====" >> "$output_file"
uname -a >> "$output_file"

echo "" >> "$output_file"
echo "===== UPTIME =====" >> "$output_file"
uptime >> "$output_file"

echo "" >> "$output_file"
echo "===== CURRENT USER =====" >> "$output_file"
whoami >> "$output_file"

echo "" >> "$output_file"
echo "===== LOGGED-IN USERS =====" >> "$output_file"
who >> "$output_file"

echo "" >> "$output_file"
echo "===== USER ACTIVITY =====" >> "$output_file"
w >> "$output_file"

echo "" >> "$output_file"
echo "===== TOP PROCESSES =====" >> "$output_file"
top -b -n 1 | head -n 15 >> "$output_file"

echo "" >> "$output_file"
echo "===== COMMAND HISTORY =====" >> "$output_file"
history -r ~/.bash_history
history | tail -n 20 >> "$output_file"

