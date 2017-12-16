#!/bin/bash

#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. 
#Also perform an ls command against the file or directory with the long listing option.

read -p "Enter a file or folder name " ITEM

echo $ITEM

if [ -e $ITEM ]
then
    if [ -d $ITEM ]
    then
        echo $ITEM "is a directory"
        echo "These are the items in" $ITEM

        ls -la $ITEM
        exit 1
    elif [ -f $ITEM ]
    then
        echo $ITEM "is a regular file"
        exit 0
    else
        echo $ITEM "is an other file"
        exit 2
    fi
else
    echo $ITEM "is an invalid file or directory"
    exit 21
fi