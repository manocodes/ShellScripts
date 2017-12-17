#!/bin/bash

cd /users/uyakama/Development/ShellScripts

#importing a functions library
. functions.sh

create_testfiles

function moveFiles()
{
    mkdir Images

    for FILE in *.jpg
    do 
        chmod 755 $FILE
        echo "Moving $FILE to /Images"
        mv $FILE Images
    done
}

function renameFiles()
{
    read -p "Enter a file extension you want to rename " EXT
    read -p "Enter a file prefix you want to use " PREF

    for FILE in *.$EXT
    do 
        if [ $PREF = "" ]
        then
            mv -v   $FILE  $(date +%F)-$FILE   
        else
            mv -v   $FILE  ${PREF}-${FILE}   
        fi 
    done
}

renameFiles
#moveFiles

