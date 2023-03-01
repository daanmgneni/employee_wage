  GNU nano 7.1                      employee.sh
#To calculate the daily wage of an employee.


#! /bin/bash -x

#variable
emp_check=$((RANDOM%2)) # 0/1

#constant varible
is_present=1
wage_per_hour=20

#selection
if [ $emp_check -eq $is_present ]
then
emp_hours=8
salary=$(( emp_hours * wage_per_hour ))
echo "Employee is present and daily wage is $salary"
else
salary=0

