#!/bin/bash

# Script: Salary Scale Generator

# Ask user for inputs
read -p "Enter the starting salary: " start_salary
read -p "Enter the number of salary scale points: " num_points
read -p "Enter the salary increment per point: " increment
read -p "Is the employee a manager? (yes/no): " is_manager

# Determine how many points are gained per year
if [[ "$is_manager" == "yes" ]]; then
  points_per_year=2
else
  points_per_year=1
fi

# Get the current year
current_year=$(date +%Y)

# Generate the salary scale table
echo ""
echo "===== SALARY SCALE TABLE ====="
echo "Starting Salary: $start_salary"
echo "Increment per Point: $increment"
echo "Points: $num_points"
echo "Manager: $is_manager"
echo ""
echo "Year | Salary"

salary=$start_salary
point=1
year=$current_year

while [ $point -le $num_points ]; do
  printf "%4d | %.2f\n" $year $salary
  salary=$(echo "$salary + $increment * $points_per_year" | bc)
  point=$((point + points_per_year))
  year=$((year + 1))
done

