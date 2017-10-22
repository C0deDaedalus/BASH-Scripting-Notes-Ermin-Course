
#!/bin/bash

#------------------------------------------------------------------------------------------

# period character = dot symbol
# single dot refers to current directory.
# double dot refers to parent directory.

# Dots can be used as a destination helpful for Navigation & other stuff.

cd .        # It will take to current directory
cd ..       # It will take to parent directory (one level up).
cd ../../   # Take me to parent directory of the parent directory of current directory.

# Say you are in tools folder in Downloads & You have to copy a tool to Documents loaction.

# > cp /home/user/Downloads/tools/tool-to-copy /home/user/documents

# OR you can do it like this to save some time.

# > cp ./tool-tocopy /home/user/documents


#-----------------------------------------------------------------------------------------------------


# Partial Quoting character = Double Quote character

colors="Black Blue Green"

echo $colors

for col in $colors
do
    echo $col    # will loop 3 times as colors is taken as 3 strings.
done

for col in "$colors"
do
    echo $col    # will loop only once as now colors is taken as a whole string.
done

# Single Quotes - It preserves all  special characters.
# It doesn't permit referencing variables meaning It doesn't takes value of any variable.

for col in '$colors'
do
    echo $col   # loops only once as takes characters inside quotes not value of variable.
done


#-----------------------------------------------------------------------------------------------------


# Comma - used as a separator.
# Links the Arithmetic Operations. All expn. are taken into account but only last expn. is returned

let "y=((x=20))"
echo $y

let "y=((x=20, 10/2))"   # Only the last expression is returned to its value.
echo $y

let "y=((x=20, 10/2, 14+3%2))"
echo $y

# Double Comma - Used in Lower Case letter conversion.

system=DebIaNGNULinuX
echo ${system,}          # converts first character of word to lowercase
echo ${system,,}         # converts all characters to lowercases.


#-----------------------------------------------------------------------------------------------------
