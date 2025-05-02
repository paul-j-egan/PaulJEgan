#!/bin/bash

Script: System Report

echo "===== DATE ====="
date
echo ""

echo "=====HOSTNAME ====="
hostname
echo ""

echo "===== ARCHITECTURE ====="
arch
echo ""

echo "=====SYSTEM INFO ====="
uname -a
echo ""

echo "===== UPTIME ====="
uptime
echo ""

echo "===== CURRENT USER ====="
whoami
echo ""

echo "===== LOGGED-IN USERS ====="
who
echo ""

echo "===== USER ACTIVITY ====="
w
echo ""

echo "===== TOP PROCESSES ====="
top -b -n 1 | head -n 15
echo ""

echo "===== COMMAND HISTORY ====="
history | tail -n 20
echo ""

