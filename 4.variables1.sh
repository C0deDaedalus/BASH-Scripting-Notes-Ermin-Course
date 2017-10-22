
#!/bin/bash

# Variables - they are labels or names representing some value stored in computer's memory.
# We use variables for Arithmetic Operations, String Phrasing, etc.


# Varaible name or label & it's value are NEVER SAME.
# Thus name of variable is NEVER same as value of variable. 

num=10      # Declaration or Initialization.
            # A space (somewhere in computer's memory) stores value 10 & we name that space num.
echo num    # echo prints string num.
echo $num   # Here echo prints value of num ie. 10

unset num   # Re-Initialization
echo $num   # prints nothing. As unset sets the value of num to nothing. Maybe NULL

#-------------------------------------------------------------------------------------------------

# is equal to = doesn't need a $ sign before variable.

x=5;
((y=x<10?1:0))  # After = sign, It's x not $x
echo $y         # But in echo It's $b not y


# Variables can be assigned values in 3 ways.
# 1. Simply assigning value
# 2. Using read command
# 3. Loop Counter Variables initialization.

number=120
echo number initialized = $number

echo Enter any Number
read number                         # Just like scanf() in C
echo number you entered = $number   # Just like printf() in C

echo Loop Variable Initialization.
for var in {1..7}
do
    echo $var   # print value of var that stores numbers from 1 to 7
done

#---------------------------------------------------------------------------------------------------------

# assigning No value to variable assigns it NULL value or Nothing at all
# Null value variable can be reinitialized.
# This variable can be intialized to any number or back to NULL again any number of times.

q=          # q is assigned a value NULL or nothing
echo $q
q="NotNull" # q is assigned a string "NotNull"
echo $q
q=          # again assigned to Null
echo $q
q=1050      # q is assigned to an integer 1050
echo $q
unset q     # q is Re-initialized to Null
echo $q


# Setting Multiple variables on a single line.It's not good way to initialize variable though we can use it.

a=3 b=4 c=5
echo Pythagorean Triplet = $a $b $c

#-----------------------------------------------------------------------------------------------------------

# Quotting variables preserves whitespaces in name of variable.

name1=SirIssacNewton
name2="Sir Issac Newton"
name3="SirI    ssac   New  ton"

echo ""
echo name1 = $name1;echo ""
echo name2 = $name2; echo ""
echo name3 = $name3; echo ""
echo Quotting variable name3, It becomes "$name3";  # Need to quote variable each time to use it exactly.
echo ""

# Without quotting we need to use escape character for space ie. "\ "

name=Sir\ Issac\ Newton     # "\ " is escape character for space.
echo $name

#----------------------------------------------------------------------------------------------------------

# Using Compound Operators.
# += Add itself then assign. Same like in C Lang.
# -= , *= , /= , %= can also be used in arithmetic operations wherever needed.

i=5; echo i = $i

let i+=10; echo i+=10 means i=i+10, So i = $i
let i-=10; echo i-=10 means i=i-10, So i = $i
let i*=2; echo i*=2 \ means i=i*2, \ So i = $i
let i/=4; echo i/=4 \ means i=i/4, \ So i = $i

# Try this
echo ""; echo So, Null is taken as 0 for arithmetic expressions.

x=          # Null is taken as 0 for aritmetic expressions.
echo $x
let x*=20   # zero multiplied by 20, then assigned to x
echo $x
let x+=1    # 1 added to zero, then assigned to x
echo $x

#---------------------------------------------------------------------------------------------------------

# Variable Substitution.
# when a long string is used too many times, we can assign it to a variable & then Substitute wherever needed
# It works like an alias

error=`echo $0 : Invalid Parameters to command`     # $0 corresponds to name of scrit itself.
echo "$error"                                       # Use string wherever needed.

list=`ls -la`    # long list files. Also show hidden files
echo "$list"     # Substitution

#---------------------------------------------------------------------------------------------------------

# BASH variables don't have any type. They are character strings by default.

bashvar=                    # Data type = NULL or void means nothing.
echo ""; echo $bashvar
bashvar=9999999999999       # Data type = Integer
echo ""; echo $bashvar
bashvar=3.14159265359       # Data type = Floating point number or Real Number
echo ""; echo $bashvar
bashvar='%'                 # Data type = character
echo $bashvar   
bashvar="Hello World"       # Data type = String
echo ""; echo $bashvar
bashvar="pi = 3.14159265359" # Data type= Alphanumeric or just String 
echo ""; echo $bashvar
bashvar=" "                 # Data type = character. Space is a special character.
echo ""; echo $bashvar

#---------------------------------------------------------------------------------------------------------

