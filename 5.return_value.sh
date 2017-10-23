
#!/bin/bash

# While writing Script it is important to know If it gets executed properly or not.
# When you run a command & nothing happens, It's just exactly good thing in Linux world.

# Try restarting your httpd.service & Nothing happens.
# Uncomment next line to run command
# systemctl restart httpd.service
#
# process runs in background, buut nothing is shown to us. That's fine

# In BASH we have an exit command, that gives status for execution-termination of scripts.
# Even If script doesn't has an exit command, the script returns an exit status always.
#              In that case it holds the status of last command executed in the script.
#
# $? holds the exit status of last command executed in a function.
# It is equivalent to return in other languages.
#
# Return values can be anything. It can be an integer or float or character or string.
# Uncomment next 4 lines to see exit status in BASH.

# echo "Hello World!" # Simple echo
# echo $?             # $? = 0 . Return value on successful termination without any Errors = 0

# vyjksjdff ecjhd     # Executing Alien keyword commands
# echo $?             # $? is exit status and it will not be zero. It will give an error. In this case 127
#                     Exit status 127 basically means illegal command OR Command not found

# To learn more about exit codes, Visit - http://www.tldp.org/LDP/abs/html/exitcodes.html
# ----------------------------------------------------------------------------------------------------------


NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGS" ]     # If number of Command line Arguments is exactly not equal to 2
then
    echo "Usage: `basename $0` source destination "  # $0 = name of script
    exit $E_BADARGS
fi

# If script was run but not provided with enough arguments, then echo ERROR and exit with status E_BADARGS.
# It makes User mandatory to pass certain parameters or arguments to the script in order to execute.

if [ ! -r "$1" ] || [ ! -r "$2" ]     # -r means return TRUE If file exists & is READABLE
#                                     ! is a Logical operator that negates the result.
#                                     So, If either of the files doesn't exist OR is Unreadable, show ERROR
then
    echo "ERROR: `basename $0` : File doesn't exists or is Unreadable"
    exit $E_UNREADABLE
fi

# The above If condition can also be written as                if [[ ! -r "$1" || ! -r "$2" ]]


cmp $1 $2 &> /dev/null
# cmp command compares the files one byte at a time.
# When It encounters a differnce in bytes of the two files (here $1 & $2), It throws an error.
# &> . It redirects the STDERR to a file known as /dev/null
# /dev/null is like a Black Hole in Linux World where you put things you never want to look for.

# cmp will return an exit status of 0 If both files will have no difference at all.

if [ $? -eq 0 ]     # $? tells the exit status of last command executed. Here cmp command.
then
    echo "NO difference at all"
else
    echo "Files are not same."
fi


# Exit Status can be User-Defined, however some of them have special meaning and must not be tampered with.
# Using Return Values carefully helps in debugging of script.

