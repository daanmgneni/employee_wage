#Storing the daily wage along with the total wage


#! /bin/bash -x

#constant variable
is_present_full_time=1
is_present_part_time=2
wage_per_hour=20
max_work_hour=100
total_working_days=20

#variable
total_work_hour=0
day=1

# Declaring an array
declare -a daily_wages

# function to get the work hours of the employee
function get_work_hours()
{
local random_check=$1
local emp_hours=0

#selection
case $random_check in
$is_present_full_time)
emp_hours=8
;;
$is_present_part_time)
emp_hours=4
;;
*)
emp_hours=0
;;

esac
echo $emp_hours
}


#Loop will execute till both the condition is TRUE
while (($day <= $total_working_days && $total_work_hour <= $max_work_hour ))
do
#variable
random_check=$((RANDOM%3)) # 0/1/2

#calling the function and passing the argument
emp_hours=$(get_work_hours $random_check)

total_work_hour=$(($total_work_hour + $emp_hours))

# Storing the daily wage in the array
daily_wages[$day]=$(( emp_hours * wage_per_hour))

((day++))

done

total_salary=$(( total_work_hour * wage_per_hour))
echo "Total Salary of an Employee is $total_salary"
echo "Storing the daily wage of an Employee : ${daily_wage[*]}"
