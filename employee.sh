#Calculate wages till a condition of total working hours or days is reached for a month 



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

#Loop will execute till both the condition is TRUE
while (($day <= $total_working_days && $total_work_hour <= $max_work_hour ))
do
#variable
random_check=$((RANDOM%3)) # 0/1/2

#selection
case $random_check in
$is_present_full_time)
emp_hours=8
echo " Employee is present for full time"
;;
$is_present_part_time)
emp_hours=4
echo " Employee is present for part time"
;;
*)
emp_hours=0
echo " Employee is absent"
;;

esac
((day++))

total_work_hour=$(( $total_work_hour + $emp_hours ))

done

total_salary=$(( total_work_hour * wage_per_hour))
echo "Total Salary of an Employee is $total_salary"
