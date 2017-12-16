#!/bin/bash

#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. 
#Also perform an ls command against the file or directory with the long listing option.

read -p "Enter a file or folder name " ITEM

echo $ITEM

if [ -d $ITEM ]
then
    echo $ITEM "is a directory"
    echo "These are the items in" $ITEM

    ls -la $ITEM
else
    if [ -f $ITEM ]
    then
    echo $ITEM "is a file"
    fi
fi