#!/bin/bash 

function createFolders()
{
COUNTER=1

while [ $COUNTER -lt 6 ]
do
    echo "creating folder $COUNTER"
    mkdir ProjectFolder-${COUNTER}
    ((COUNTER++))
done
}

function readName()
{
    while [ "$CORRECT" != "y" ]
    do
        read -p "What is your name " NAME
        read -p "Is your name ${NAME}?" CORRECT
    done
}

function readFile()
{
    LINE_NUM=1

    read -p "How many lines do you want to read? " LINES

    while read LINE
    do
        if [ $LINE_NUM -le $LINES ]
        then
            echo "$LINE_NUM: $LINE"
            (( LINE_NUM++ ))
        else
            break
        fi
    done < /etc/passwd
}

readFile
#readName
#createFolders
