
#!/bin/bash

#-------------------------------------------------------------------------------------------------

# Parantheses ()
# They are used to store a group of commands. A group of commands inside () will invoke a subshell
#                                 & variables will not be red by commands. That can be problamatic.

num=5         # num is assigned value of 5
(num=10;)     # A subshell is invoked & a variable num is assigned value of 10.
echo $num     # num is echoed out. Which value will get printed.
echo --------

num=8
(num=17;echo $num;)     # num invoked in subshell, num = 17 gets printed. This num is not red by script.
echo $num               # num in current shell = 8 gets printed.
echo --------

num=19
(num=23;echo $num;)     # num invoked in subshell, num = 17 gets printed.
echo $num               # num in current shell = 8 gets printed.
(echo $num;)            # Now this is subshell, STILL value of num = 19 gets printed.
echo --------

# Parantheses are used for Array Initializations.

Colors=(red blue green black white) # Colors is an Array having 5 elements in it.
prim_colors=(red blue green)

#--------------------------------------------------------------------------------------------------

# Curly Braces {}
# It is used to separate a block of code according to logic. Say, search code in one block & sort code in other.
# It can be used in Array Initializations but in this case elements of array are separated by comma.

echo We have 3 primary Colors. These are $prim_colors
# Since prim_colors is an Array. Only First element gets printed. It's like
#                      Array name variable stores value of it's Ist element.

echo We have 3 primary Colors. These are {red blue green}
# OK! This echo literally echoes everything even the braces.

echo We have 3 primary Colors. These are {red,blue,green}
# We need to put comma between the elements to just print elements and not the braces.
# This is like " CSV Array Initialization "

# Braces are used to output contents of multiple files into single file or STDOUT using cat command.

cat {fruits_list,veg_list,drinks_list} > shopping_list

# We can create a Loop without a loop in printing a range of numbers using echo command.
# It's called Quick Loop where we can print a sequence of charcaters or numbers.

echo {23..34}
echo Digits in Decimal Number System are {0..9}

echo {a..z}
echo Vowels - {a,e,i,o,u}

echo Probability can be 0.{0..9} or 1
echo Sheets Sizes - A{1..9}

echo {00..10}_IMAGE.jpg

echo 3-bit Binary Numbers = {0..1}{0..1}{0..1} # Place {0..1} for each bit.

#--------------------------------------------------------------------------------------------------


