#!/bin/bash

echo "This will check a file exists or not"

FILE="HelloShell.sh"

if [ -e $FILE ]
then
    echo "The file is there"

    if [ -w $FILE ]
    then
    echo "Writing permission is also granted"

    fi
else
    echo "the file is not there"
fi

#now exit with Exit code 0
echo "Exiting with code 0"
exit 0

#refer this page to remember all the commands that are related to check a file
#https://www.cyberciti.biz/faq/unix-linux-test-existence-of-file-in-bash/