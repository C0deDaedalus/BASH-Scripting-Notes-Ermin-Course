
#!/bin/bash

#---------------------------------------------------------------------------------------

# Logical characters - Used for combining various conditions into one condition.
# Double Pipe character || represents Logical OR, where 1 or more conditions must be TRUE.
# Double Ampersand character && represents Logical AND. where both the conditions must be TRUE.

num=15
if [ $num -gt 0 ] || [ $num -eq 0 ]
then
    echo Number is a Whole Number.
else
    echo Not whole NUmber.
fi

num=82
if [ $num -gt 80 ] && [ $num -lt 90 ]
then
    echo Grade A
else
    echo Not Good Grade.
fi

#----------------------------------------------------------------------------------------

# Dash charcater or Minus Sign -
# Used to pass arguments to commands in BASH. say ls --help or vim -h.
# Also writing conditions we use. -gt for greater than, -lt means less than , -eq means equal, -ne is not equal

ls --help

# when used with cat allows STDIN to redirect into file.

# cat "Hello world" > name.txt

# cat - > name.txt    # It means Redirect STDIN to file name.txt & Now write " my name is James Bond. " & Press ^C

# Used as Subtraction Operator.

let x=7-3
echo $x

#----------------------------------------------------------------------------------------

# The modulous character  %
# It represents remainder result of a division. eg - 5%4 = 1 and 40%7=5 and 20%2=0 and so on.

let x=5%4,y=40%7,z=20%2
echo $x $y $z

#---------------------------------------------------------------------------------------

# The Tilde character ~
# It represent home directory of current User.

cd ~    # It would that you to your home directory.

# If your Username is abcd then ~ means /home/abcd.
# If you are Root then ~ means /root.

echo ~+     # Shows the current User's Home directory. Can be used in place of pwd.
echo ~-     # shows the last used directory. 

#---------------------------------------------------------------------------------------

# The Caret Symbol ^  
# Used in Upper case conversion of strings.

fruit=maNgOisg00dtoHAVE
echo ${fruit^}      # Converts Ist letter of word to Upper Case.
echo ${fruit^^}     # Converts all letters of word to Upper Case.

#---------------------------------------------------------------------------------------

