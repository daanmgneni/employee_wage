#Solving using Switch Case statement 


#!/bin/bash

#variables
random_check=$(( RANDOM % 3 )) # 0/1/2

is_present_full_time=1
is_present_part_time=2
wage_per_hour=20

#selection
case $random_check in

$is_present_full_time) emp_hours=8
echo " Employee is present for full time"
;;

$is_present_part_time) emp_hours=4
echo " Employee is present for part time"
;;
*) emp_hours=0
echo " Employee is absent"
;;
esac

salary=$(( $emp_hours * $wage_per_hour))
echo " Salary of an employee is $salary "
