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

#refer this page to remember all the commands that are related to check a file
#https://www.cyberciti.biz/faq/unix-linux-test-existence-of-file-in-bash/