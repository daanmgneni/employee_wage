#To check whether the employee is present or absent


#! /bin/bash -x

#variable
emp_check=$((RANDOM%2)) # 0/1

#constant varible
is_present=1

#selection
if [ $emp_check -eq $is_present]
then
echo "Employee is Present"
else
echo "Employee is Absent"
fi
