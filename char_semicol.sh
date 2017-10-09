
#!/bin/bash

# hash can be used for debugging. Comment out lines that you don't want to execute.

#---------------------------------------------------------------------------------------------

echo "tralalalala # blablablabla"
# hash when used in echo doesn't represent comment
# So, blablablabla also gets printed.


echo tralalalala # blablablabla
# But this is a comment here
# Only tralalalala gets printed, blablablabla is taken as comment.

#---------------------------------------------------------------------------------------------

# hash can be used to get certain value for variables.

contact=9988776543
echo "Contact $contact must be of ${#contact} digits"

firstmail="qwertyuiopasdfghjklzxcvbnm"
echo "Fist mail sent by Ray Tomlinson had ${#firstmail} letters but jumbled."

#---------------------------------------------------------------------------------------------

# hash can be used to convert a number from any number system to decimal number system.
# It's like base#num_in_that_base. So, 8#10 will be a number in octal system.

echo $((2#111))   # 111 in binary system = 7 in decimal system.

echo $(2#111)     # Make sure two paranthesis or you'll get an Error : Command not found.

echo $((16#AFA))  #  2810 in decimal system.

echo $((0#2))     # It will give an Error : invalid number (error token is "0#2")

echo $((10#12345)) # Writing in decimal system using hash is a joke.

#---------------------------------------------------------------------------------------------

# Semicolon is called as Command Separator like a Terminator
# It separates commands or lines of script written in a single line.

echo "Apple" echo "Strawberry"  # Here echo will be considred as a string not a command.

echo "Apple"; echo "Strawberry" # Here echo acts as command & next string goes to next line.

a=10  # Variable a has value 10 

if [ "$a" -gt 0 ]; then echo "Positive"; else echo "Negative or Zero"; fi

if [ "$a" -lt 0 ]; then echo "Negative"; else echo "Positive or Zero"; fi

# Be careful while writing in square brackets. Have a space inbetween them.

if ["$a" -gt 0]; then echo "Positive"; else echo "Negative or Zero"; fi

# Else you'll get an ERROR : [10: command not found
# Here if["$a" -gt 0] is interpreted as if[10 -gt 0] that produces an error.

