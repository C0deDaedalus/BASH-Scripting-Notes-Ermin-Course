
#!/bin/bash

ARGUMENTS = 2
ARGUMENTS_INSUFF = 101
FILE_NOT_EXISTS = 404

if [ $# -ne $ARGUMENTS ]
then
    echo "Usage : `basename $0` file1 file2"
    exit $ARGUMENTS_INSUFF
fi

if [ ! -r $1 ]
then
    echo "File $1 does not exists"
    exit $FILE_NOT_EXISTS
fi
    
if [ ! -r $2 ]
then
    echo "File $2 does not exists"
    exit $FILE_NOT_EXISTS
fi

cmp $1 $2 &> /dev/null

if [ $? -eq 0 ]
then
    echo "Files are Same"
else
    echo "Files are not the same"
fi

exit 0