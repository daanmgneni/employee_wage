#Calculating Wages For a month


#!/bin/bash

#Constant variables
is_present_full_time=1
is_present_part_time=2
wage_per_hour=20
total_working_days=20

#Variable
total_work_hour=0

#Iterating FOR loop for 20 times, because total working days is 20
for ((day=1 ;day<=$total_working_days; day++ ))
do
# 0/1/2
random_check=$(( RANDOM % 3 ))
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
total_work_hour=$(( $total_work_hour + $emp_hours))
echo " Salary of an employee is $salary "
done

# Calculating total salary for 20 days on the basis of employee hours
total_salary=$(( $total_work_hour * $wage_per_hour))
echo " Total Salary of an Employee is $total_salary "
