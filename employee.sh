#Calculating wage for part time Employee.


#!/bin/bash

#variable
random_check=$(( RANDOM % 3 )) # 0/1/2

is_present_full_time=1
is_present_part_time=2
wage_per_hour=20
full_time_hour=8
part_time_hour=4
salary=0

#selection
if [ $random_check -eq $is_present_full_time ]
then
salary=$(( $full_time_hour * $wage_per_hour ))
echo "Employee is present for full time"
echo "Salary of the full time employee is $salary"

elif [ $random_check -eq $is_present_part_time ]
then
salary=$(( $part_time_hour * $wage_per_hour ))
echo "Employee is present for part time"
echo "Salary of part time employee is $salary"

else
echo "Employee is absent and salary is $salary"
fi
