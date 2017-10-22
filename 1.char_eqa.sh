
#!/bin/bash

#----------------------------------------------------------------------------------------------------------

# Exclamation Mark = !
# It is used as negation Operator. It reverses the result of a condition or test or exit status.

a=10

if [ $a == 10 ]; then echo "Equal to 10"; else : ; fi

if [ $a != 10 ];  then  echo "Not Equal"; else echo "Equal to 10"; fi

#----------------------------------------------------------------------------------------------------------

# Asterisk = *
# Called as Wild Card character as It substitutes every other character.
# It means anything when used as wildcard character. It is used to refer a large number of files.

# It is used for multiplication. Thus acts as an Arithmetic Operator.

let a=5
let b=4

# Run the Script & figure out what happens.

mul=a*b;    echo $mul       # takes a*b as a string
mul=$a*b;   echo $mul       # takes value of a = 5. So mul becomes 5*b
mul=a*$b;   echo $mul       # takes value of b = 4. So mul becomes a*4
mul=$a*$b;  echo $mul       # takes value of a = 5 & b= 4. So mul becomes 5*4 but not 20.

# All above are a kind of declarations. Thus don't get a value. Let's define mul by using let

let mul=$a*$b; echo $mul    # By letting, mul is given a value of 5*4 that equates to 20.

let product=2*8*9
let factorial5=5*4*3*2*1

echo "Product = $product , 5! = $factorial5"

# Double Asterisk = **
# It represents exponentiation Operator. meaning "raised to the power of"
# So, 2**3 means 2 raised to power 3 = 8

let cube=2**3
echo $cube

let asdf=2*3**2    # Run it to figure out what's happening.
echo $asdf         # Exponentiation first then multiplication.

let asdf=(3*2)**2  # Use paranthesis to specify which operation first to be done.
echo $asdf

#----------------------------------------------------------------------------------------------------------

# Question Mark = ?
# Ternery Conditional Operator Similar as in C Language

num=100
echo $((result = num<50?1:0))

# So, it is ---> variable=condition?(value if true):(value if false) 
# It interpretes like print 1 If number is less than 50, else print 0.

if [ "$num" -lt 50 ]; then echo "1"; else echo "0"; fi

echo $((num<50?1:0))    # Don't even need a third variable.

#-----------------------------------------------------------------------------------------------------------

# Try these Also.

echo $[2*3]         # echoes out 6
echo $[2**3]        # echoes out 8
echo $[2**3+3**2]   # echoes out 17

