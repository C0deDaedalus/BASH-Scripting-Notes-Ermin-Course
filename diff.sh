
#!/bin/bash

ARGUMENTS=2             # No. of arguments to be passed to script
ARGUMENTS_INSUFF=101    # Exit status when Arguments are insufficient for script to execute
FILE_NOT_EXISTS=404     # Exit Status when the files passed as argument to script is not found.

if [ $# -ne $ARGUMENTS ]    # If ( any number of Arguments passed ) is not equal to ARGUMENTS specified
then
    echo "Usage : `basename $0` file1 file2"    # then echo the USAGE for the script.
    exit $ARGUMENTS_INSUFF                      # & Exit script execution with Status code 101
fi

if [ ! -r $1 ]      # If ( $1 means first file ) passed as argument to script doesn't exists or is UNREADABLE
then
    echo "File $1 does not exists"  # then echo the Error message
    exit $FILE_NOT_EXISTS           # & Exit script execution with Status code 404
fi
    
if [ ! -r $2 ]      # If ( $2 means second file ) passed as argument to script doesn't exists or is UNREADABLE
then
    echo "File $2 does not exists"  # then echo the Error message
    exit $FILE_NOT_EXISTS           # & Exit script execution with Status code 404
fi

cmp $1 $2 &> /dev/null   # Compare the two files & Redirect Output to /dev/null
#                          & is symbol for file descriptor.
#                          &0 means STDIN , &1 means STDOUT , &2 means STDERR
# The null device is typically used for disposing of unwanted output streams of a process,
# or as a convenient empty file for input streams. This is usually done by redirection.
#
# The /dev/null device is a special file, not a directory,
# so one cannot move a whole file or directory into it with the Unix mv command.
# The rm command is the proper way to delete files in Unix.

# cmp compares the two files byte by byte and returns 0 If both files are same.

if [ $? -eq 0 ]                     # If exit status of last command processed is equal to 0
then
    echo "Files are Same"           # then echo Files are same
else
    echo "Files are not the same"   # else echo files are not the same
fi

exit 0                              # If all goes well till the execution of script, exit with status 0
# Exit status 0 signifies successfull termination.
