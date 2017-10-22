
#!/bin/bash

#-----------------------------------------------------------------------------------------------------------

# Slash character = /
# Slash character represents Root Directory in Linux Systems.
# It's also used for writing file path names. Eg:  /usr/include/stdio.h

# It is Used for executing shell scripts.
# Say If you have a file named script.sh Then to execute it you'll type at the terminal  # ./script.sh

# Slash is an arithmetic OPerator for Division(returns Quotient).

let a=10/2
let b=50/3

echo "a = $a & b = $b"

#-----------------------------------------------------------------------------------------------------------

# THe Escape charcater = Backslash = \
# It's placed before any special character that tells interpreter to treat character a literal.
# Now special character is just treated as char not a char with special function & is printed normally on screen.

echo ""Talk is Cheap.Show me the code" - Linus Torvalds"

echo "\"Talk is Cheap.Show me the code\" - Linus Torvalds"

# So, \" means treat doubleqoute character as a normal one and simply print PLEASE.

let num=5
echo $num=5
echo "$num=5"
echo \$num = $num   # This is how you print $

# escape character can be used in grep commands.

ls --help | grep -a      # Not going to work as grep thinks -a to be a parameter instead of Regex.
ls --help | grep "-a"    # Same as Above.
ls --help | grep "\-a"   # Now using \ makes it interpret like search for -a.
                         # Thus it converts string inside doublequotes to a Regex from parameter.

# grep = Global Regular Expression Print.
# It Searches the pattern in form of RegEx passed to it & prints output on screen.

#------------------------------------------------------------------------------------------------------------

# The Backquote Character (key above the tab key) = `
# It's used as substitution. It takes output of one command & assigns to other variable.

let num=314   # num = 314
echo $num     # print value of num

a=num         # a = num . actually here a="num" (A string not value of variable num taken above)
echo $a       # print value of a

b=`echo $num` # b = `echo value_of_num` . So, b = 314
echo $b       # print value of b

c=$num        # c = value_of_num . We can even use it this way.
echo $c       # print c

#----------------------------------------------------------------------------------------------------------

# Colon or NULL character = :
# It's a Do Nothing Command character
# can be used at prompt. echo nothing If options are true, else show error.

x=5
y=10
if [ "$x" -gt "$y" ]; then : ; else echo "$x is larger" ; fi 

if [ "$x" -lt "$y" ]; then : ; else echo "$y is larger" ; fi

# Colon can be used in conjunction with Redirection Operator. Eg - to truncate file's length.
# We can empty the contents of a file using colon.

# Redirection OPerators > and >> are used to edit contents of a file.

# echo "abcdefghi" > letters.txt      ----> Overwrite whatever contents of file "letters.txt" to abcdefghi
#                                           & create file first If not present in directory.
# echo "abcdefghi" >> letters.txt     ----> Append or concatenate (Don't Overwrite rather write at the end)
#                                                     the contents abcdefghi to file letters.txt

# file command determines the filetype by doing FileSystem Test, Magic Test & Language Test.

echo "Hello World !" > hello.txt
file hello.txt  # See the Contents.
cat hello.txt

: > hello.txt   # Overwrite contents of file hello.txt to : which means nothing. Basically Redirect nothing to file
file hello.txt  # See contents now.
cat hello.txt

# We can use : >> file.txt to create an empty file
# If it doesn't exists & to update nothing in file If it already exists.

echo "Redirect nothing to hello.txt" > hello.txt
cat hello.txt
ls -la | grep hello

sleep 3s  # suspends the execution for 3 seconds.

: >> hello.txt   # will just add nothing, But update the timestamp.
cat hello.txt
ls -la | grep hello

