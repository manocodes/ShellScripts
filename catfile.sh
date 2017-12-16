#!/bin/bash

read -p "Enter a file or folder name " ITEM

echo $ITEM

if [ -e $ITEM ]
then
    cat $ITEM 

    if [ "$?" -eq "0" ]
        then
            echo "Cat success"
            exit 0
        else
            echo "Cat fail"
            exit 1
        fi
else
    echo $ITEM "is an invalid file or directory"
    exit 21
fi