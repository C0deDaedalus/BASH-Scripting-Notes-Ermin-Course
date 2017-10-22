
#!/bin/bash

MIN=5
if [ -n "$1" ]              # -n test whether or not this parameter is present.
then
    echo "Ist one is $1"  # If it is present then TRUE else FALSE.
fi

if [ -n "$2" ]
then
    echo "2nd one is $2"
fi

if [ -n "$3" ]
then
    echo "3rd one is $3"
fi

if [ -n "$4" ]
then
    echo "4th one is $4"
fi

if [ -n "$5" ]
then
    echo "5th one is $5"
fi

if [ -n "$6" ]
then
    echo "6th one is $6"
fi

if [ -n "$7" ]
then
    echo "7th one is $7"
fi

if [ -n "$8" ]
then
    echo "8th one is $8"
fi

if [ -n "$9" ]
then
    echo "9th one is $9"
fi

if [ -n "${10}" ]
then
    echo "10th one is $1"
fi

echo "List of Arguments : "$*""     # * corresponds to any character present.
echo " Name of Script : \""$0"\""   # $0 stores the name of script itself. scriptename gets printed inside quotes.
if [ $# -lt "$MIN" ]                # Checks if total arguments is less than minimum required for script to run.
then
    echo "Not enough arguments, need 5 to Run"
fi
