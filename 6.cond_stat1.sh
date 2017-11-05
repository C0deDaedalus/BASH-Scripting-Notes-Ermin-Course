
#!/bin/bash

#-------------------------------# Script to find whether number is Positive or Negative or Zero.

echo "Enter any Number : "      # Just prints statements for User input

read num                        # Scans the number entered by user

if [ $num -gt 0 ]               # Check If Number is greater than zero
then
    echo "Positive"             # If So, print Postive 
elif [ $num -lt 0 ]             # Else check if Number is less than zero. elif stands for else-If
then
    echo "Negative"             # If so, print Negative
else
    echo "Zero"                 # Else print Zero
fi                              # Finish the conditional construct.


#-------------------------------# Using double Paranthesis Construct to check conditions.

# (( some_expression_here ))
# It return the exit status after evaluating the expression (arithmetic usually) inside it.

#----------------------------------------------------------.
#       Result of Aritmetic     |     exit status of       |   
#           Expression          |      (( result ))        |
# ------------------------------|--------------------------|
#           ZERO                |       1 or FALSE         |
#           NON-ZERO            |       0 or TRUE          |
#----------------------------------------------------------~

(( 2 > 1 ))         # 2 > 1 evalutes to TRUE which means NON-ZERO, thus exit status = 0
echo "Exit Status for (( 2 > 1 )) = $?"

(( 2 < 1 ))         # 2 < 1 evalutes to FALSE which means ZERO, thus exit status = 1
echo "Exit Status for (( 2 < 1 )) = $?"

(( 2 + 1 ))         # 2 + 1 evalutes to 3 which is NON-ZERO, thus exit status = 0
echo "Exit Status for (( 2 + 1 )) = $?"

(( 2 - 1 ))         # 2 - 1 evalutes to 1 which is NON-ZERO, thus exit status = 0
echo "Exit Status for (( 2 - 1 )) = $?"

(( 2 - 2 ))         # 2 - 2 evalutes to 0 which is ZERO, thus exit status = 1
echo "Exit Status for (( 2 - 2 )) = $?"

(( 6 % 2 ))         # 6 % 2 evalutes to 0 which is ZERO, thus exit status = 1
echo "Exit Status for (( 6 % 2 )) = $?"

(( 6 % 4 ))         # 6 % 4 evalutes to 2 which is NON-ZERO, thus exit status = 0
echo "Exit Status for (( 6 % 4 )) = $?"

(( 1 ))             # 1 is NON-ZERO, thus exit status = 0
echo "Exit Status for (( 1 )) = $?"

(( 0 ))             # 0 is ZERO, thus exit status = 1
echo "Exit Status for (( 0 )) = $?"


#-------------------------------# File Test Operation - check if a file exists or not

file_var=/home/amit/wood.txt    # creating a variable to hold file path

if [[ -e $file_var ]]           # If the file exists. -e means exists
then
    echo "File exists"          # echo File Exists
else
    echo "File not exists"      # else echo File not exists
fi                              # finish the conditional

# We can have more File test Operations
#
# -f returns TRUE If the file is a reular file not a device or a directory
# -s returns TRUE if the file is not ZERO size.
# -r returns TRUE if the file is READABLE    means Current User has permission to read the file
# -w returns TRUE if the file is WRITABLE    means Current User has permission to write the file
# -x returns TRUE if the file is EXECUTABLE  means Current User has permission to execute the file
#
# ! symbol is for NEGATION. It just reverses the result of these conditions.

# -z tells If the argument is given or not  