
#!/bin/bash

# --------------------------------------------- Taking User Input
# read command takes input from User
# It takes input and stores into variable.
# if no variable is provided, by default User Input is stored in variable $REPLY
# Make sure you type $REPLY not $REPLAY

echo "Enter a number : "
read num                            # num variable stores the input from User
echo "Number you entered is $num"

echo "Enter your name : "
read                                # No variable supplied here for User input
echo "You entered : $REPLY"         # $REPLY stores the value of last input entered for a read command.


# ---------------------------------------------------------------------------- Using $SECONDS
# $SECONDS variable stores the number of seconds till the script is being run.
echo $SECONDS


# ---------------------------------------------------------------------------- Modifying Variables
# BASH has Declare and Type-set built-ins that allows uses to modify the properties of variable.
# Type-set also works in ksh scripts. Thus is portable.
# Usually declare is used in BASH

declare -r x=5      # x is declared to be a read only variable.
#                       It's value cannot be further changed during script execution.
echo "\$x = $x"

declare -i y=16     # y is declared to be an integer variable.
#                       Now we can perform certain arithmetic operations without using let command.
echo "\$y = $y"

y=eight             # assigned a string value to a variable declared to store integer.
echo "\$y = $y"     # the value is not an integer, thus string is evaluated to zero.


#------------------------------------------------------------------------------ Arithmetic Operations

y=8/2
declare -i z=8/2

echo "\$y = $y and \$z = $z"
echo

echo "First 7 Prime numbers are : "
declare -a arr_prime_num=(2 3 5 7 11 13 17)       # -a means declare variable as an array
for i in {0..6}
do
    echo "arr_prime_num[$i] = ${arr_prime_num[$i]}"
done
echo

#------------------------------------------------------------------------------ Declaring Functions

declare -f func_hello                           # -f means Function Declaration

func_hello()                                    # Function definition ()  <-----------------.
{                                               # {                                         |
    echo "Hello World! It's me in the BASH"     #       # statements to be executed         |
    echo                                        # }                                         |
}                                               #                                           |
#                                                                                           | 
func_hello                                      # Function Call  ---------------------------*



#-------------------------------------------------------------------------- Declaring Export Variables
# -x is used to declare a variable that can be exported "OUTSIDE environment of script"

declare -x var=10       # var is declared to be an EXPORT variable with value = 10
echo $var


# ----------------------------------------------- Random Number Generation Using $RANDOM
# $RANDOM is used for random number generation.
# It returns a random number between 0 to 32767

MAX=10
i=1

while [ "$i" -le $MAX ]     # check If i is less than or equal to 10
do
    n=$RANDOM
    echo $n
    let i+=1    # if we don't increment value of i, It will always remain 1
done            # Thus condition inside while will always be TRUE &
#                 we will get an infinite Random Numbers generated in an infinite loop.

# THe numbers being generated are random but It's not absolute randomness.
# It just looks like random numbers and It uses some variables to generate so.
#
# Like Cookies (when we visit a website) are generated using variables
# such as time and date. & Since time & date and other parameters are random in nature,
# They generate a value what appears to be a random number.
