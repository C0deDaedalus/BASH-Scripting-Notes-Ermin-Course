
#!/bin/bash

# Doing Integer Mathematical Operations
echo "Enter any two numbers"
read num1
read num2

# ========================================================== Using command expr
# expr means evaluate expressions
# syntax - 
#           expr 5 + 2 
#                          . Make sure you put SPACE between numbers & operator
echo
expr $num1 + $num2      # Addition
expr $num1 - $num2      # Subtrcation
#
expr $num1 \* $num2     # Use backslash before asterisk, as asterisk is used as a wildcard character in BASH.
#                       # Using * will give syntax error
expr $num1 / $num2      # Quotient Division
expr $num1 % $num2      # Modular Division


# ========================================================== Using Built-in command let

echo
let sum=$num1+$num2
echo "Sum = $sum"
let diff=$num1-$num2
echo "Difference = $diff"
let prod=$num1*$num2        # Here we can directly put * and No need to put backslash
echo "Product = $prod"
let quot=$num1/$num2
echo "Quotient = $quot"
let rem=$num1%$num2
echo "Remainder = $rem"


# ========================================================== Using parantheses or Square Brackets

# Parantheses ()
# They are used to store a group of commands. A group of commands inside () will INVOKE A SUBSHELL
#                                 & variables will not be red by commands. That can be problamatic.

# When Using Square Brackets. Always use [] and not [[]]
# Using [[]] loses portability and forces reader to learn more complexities of bash extension.


echo
echo "Sum = $(($num1+$num2))"
echo "Diff = $(($num1-$num2))"
echo "Prod = $(($num1*$num2))"  # Here we can directly put * and No need to put backslash
echo "Quot = $[$num1/$num2]"    # Using Square Bracket does the same thing
echo "Rem = $[$num1%$num2]"


# ======================================================== Solving Complex Arithmetic Expressions
# BASH solves complex arithmetic expressions according to Operator Precedence. Order of Precedence.
#
# Post-Incrementation/Decrementation       var++     var--
#  Pre-Incrementation/Decrementation       ++var     --var
#                           Negation         !         ~
#                     Exponentiation        **
#        Multipliy , Divide , Modulo        *         /       %
#                     Add , Subtract        +         -
# Bitwise : Left Shift , Right Shift        <<        >>
#                   unary comparison        -z        -n
#         file-test unary Comparison        -e        -f      -t     -x 
#        String / Integer Comparison        <        -lt       >     -gt    <=    -le     >=    -ge
#               File Test Comparison       -nt       -ot      -ef
#     Equality / Iequality Operators        ==       -eq      !=     -ne
#                        Bitwise AND        &
#                        Bitwise XOR        ^
#                        Bitwise  OR        |
#             Logical Comparison AND        &&        -a
#             Logical Comparison  OR        ||        -o
#       Ternary Conditional Operator        ?:
#          Assignment (Not Equality)        =
#      Compound Arithmetic Operators        *=        /=      %=      +=    -=    <<=     >>=    &=
# comma (links sequence of operations)      ,

# When operators of same precedence comes in expression, the operator on left side is first evaluated.
#
# So,           2 * 4 / 3 = 8 / 3 = 2
# But not,      2 * 4 / 3 = 2 * 1 = 2. Though result is same but first * is evaluated then /

echo
echo "6 / 3 * 2 = $((6/3*2))"
echo "6 * 3 / 2 = $((6*3/2))"
echo "2 * 6 / 3 = $((2*6/3))"
echo "2 / 6 * 3 = $((2/6*3))"
echo
echo "$(( $[12-5*4+3] + $((12%5+3*4)) + $[12/5%4*3] )) "
#              |                |           |
#              |                |           :- 12 / 5 % 4 * 3 = 2 % 4 * 3 = 2 * 3 = 6
#              |                |
#              |                :- 12 % 5 + 3 * 4 = 2 + 12 = 14
#              |
#              :- 12 - 5 * 4 + 3 = 12 - 20 + 3 = -5
#
#