
#!/bin/bash

# Arithmetic Operations

num=100
let num-=10     # num-=10 is like num=num-10. Subtract 10 from current value & Reassign to itself.
echo $num

# Dividing by 0 gives an Error : Division by Zero
# Dividing by Null value gives a Syntax Error.

#----------------------------------------------------------------------------------------------------

# Value Substitution : substitute a part of variable

money=1000
x=${money/000/K}   # Replace 000 with K in value of money
echo $x
y=${money/10/A}    # Replace 10 with A in value of money. Hex Money LOL !
echo $y

name="James\ Bond"
james=${name/"James\ Bond"/007} # Replace name of Agent with number to keep it secret
echo $james : Reach 12:30 at Herrington Square.


# Bash set the integer value of a string to zero.

var=A0          # It's a string, but it's arithmetic operation value is ZERO
let var+=1      # So incrementing by 1 makes value of var to be 1.
echo $var

name="Bond21"
echo $name
code=${name/Bond/007}
echo $code
let code+=1
let name+=1
echo $code , $name


#--------------------------------------------------------------------------------------------------------

# Variables - 2 types.
# Local variables - inside a block or function OR Global variables - outside a block or function
# Environment Variables - Created whenever shell is started. Shell inherits these variables.
#                         When shell spawns other process, process will also inherit these variables.
#                         All ENV variables are set by the script must be exported using export command.
# We can configure ENV variables on the command-line.

#---------------------------------------------------------------------------------------------------------

