#!/bin/bash

function file_count()
{
    local FOLDER=$1

    local FILES=$(ls -1 $FOLDER| wc -l)

    echo "There are $FILES folders in the ${FOLDER} folder."

    return $FILES
}

file_count /etc
echo $?

file_count /var
echo $?

file_count /usr/bin
echo $?


