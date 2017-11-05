
#!/bin/bash

# $PS1 stores the prompt settings.
echo $PS1


echo $?   # $? stores the exit status of last command executed.
#           Exit Status = 0 for Successful execution and non-zero for some sort of error.
echo $$   # $$ gives the process ID of Script
echo $#   # $# stores the number of arguments passed to script on Command-line
echo $*   # $* refers to all arguments passed to script
echo $@   # $@ refers to all arguments passed to script
echo $0   # $0 refers to basename of script itself with ./ included
echo `basename $0`  # basename $0 refers to basename of script without ./ included

echo $1   # refers to first argument passed to script
echo $2   # refers to second argument passed to script
#           Similarly, we can pass at max 9 arguments to a script
#           Therefore, $0 , $1 , $2 , . . . till $9 can be used to
#           access Command-line arguments passed to script
