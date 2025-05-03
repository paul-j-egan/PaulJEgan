#!/bin/bash

# Script: System Report

echo "===== DATE =====" >> paulEgan.txt
date >> paulEgan.txt

echo "=====HOSTNAME =====" >> paulEgan.txt
hostname >> paulEgan.txt

echo "===== ARCHITECTURE =====" >> paulEgan.txt
arch >> paulEgan.txt

echo "=====SYSTEM INFO =====" >> paulEgan.txt
uname -a >> paulEgan.txt

echo "===== UPTIME =====" >> paulEgan.txt
uptime >> paulEgan.txt

echo "===== CURRENT USER =====" >> paulEgan.txt
whoami >> paulEgan.txt

echo "===== LOGGED-IN USERS =====" >> paulEgan.txt
who >> paulEgan.txt

echo "===== USER ACTIVITY =====" >> paulEgan.txt
w >> paulEgan.txt

echo "===== TOP PROCESSES =====" >> paulEgan.txt
top -b -n 1 | head -n 15 >> paulEgan.txt

echo "===== COMMAND HISTORY =====" >> paulEgan.txt
tail -n 20 ~/.bash_history >> paulEgan.txt

