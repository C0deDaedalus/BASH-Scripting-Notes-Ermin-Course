
#!/bin/bash

ARGS=3
EX_BADARGS=11
EX_NOT_EXISTS=22
EX_NOT_REGULAR=33
EX_UNREADABLE=44
EX_EMPTY=55

# Checking If no. of arguments passed to script = predefined number of Arguments or not.
if [ $# -ne $ARGS ]
then                                                        # If not then,
    echo "./sm.sh - Script to sort contents of two files & output to another file"
    echo "  Usage : ./`basename $0` file1 file2 outputfile"     # show the Script Usage
    exit $EX_BADARGS                                        # and exit with exit status 11
fi                                                          # finish

# Checking File parameters for file1 passed as argument to script.
if [ ! -e $1 ]                          # If file does not exists
then                                    # then
    echo "File $1 does not exists"      # echo "File does not exists"
    exit $EX_NOT_EXISTS                 # and exit with status 22
elif [ ! -f $1 ]                            # else If file is not a regular file 
then                                        # then
    echo "File $1 is not a regular file"    # echo "File is not a regular file"
    exit $EX_NOT_REGULAR                    # and exit with status 33
elif [ ! -r $1 ]                                # else if File is Unreadable (don't have Read permissions)
then                                            # then
    echo "File $1 has no Read Permissions"      # echo "File has no Read Permissions"
    exit $EX_UNREADABLE                         # and exit script with status 44
elif [ ! -s $1 ]                                    # else if file is Empty ( Size = 0 )
then                                                # then
    echo "File $1 is empty. Fill in Contents first" # echo "File is empty"
    exit $EX_EMPTY                                  # and exit with status 55
fi                                      # finish the If part


# Checking File parameters for file2 passed as argument to script.
if [ ! -e $2 ]
then
    echo "File $2 does not exists"
    exit $EX_NOT_EXISTS
elif [ ! -f $2 ]
then
    echo "File $2 is not a regular file"
    exit $EX_NOT_REGULAR
elif [ ! -r $2 ]
then
    echo "File $2 has no Read Permissions"
    exit $EX_UNREADABLE
elif [ ! -s $2 ]
then
    echo "File $2 is empty. Fill in Contents first"
    exit $EX_EMPTY
fi

# Check if output file exists or not. If exists prompt for an overwrite warning

if [ -e $3 ]
then
    echo "File $3 already exits"
    echo "Do you wish to overwrite contents ?(y/n) -  "
    read option                     # scan user input
    if [ $option -eq 'y' ]          # If option = y
        then                        # then
            cat $1 $2 | sort > $3   # print contents of file1 & file2 to STDOUT, sort contents & redirect to file3
    else                            # else
            cat $1 $2 | sort >> $3  # print contents of file1 & file2 to STDOUT, sort contents & append to file3
    fi                              # finish
else                        # else
    cat $1 $2 | sort > $3   # print contents of file1 & file2 to STDOUT, sort contents & redirect to file3
fi                          # finish

if [ $? -eq 0 ]             # If exit status of last command is 0
then
    echo " Sort & Merge Successfull"
else
    echo " Something is wrong here "
fi

exit 0  # Normal termination.