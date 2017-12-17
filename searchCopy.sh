#!/bin/bash

cd /users/uyakama/Development/ShellScripts

#importing a functions library
. functions.sh

create_testfiles

mkdir Images

for FILE in *.jpg
do 
    chmod 755 $FILE
    echo "Moving $FILE to /Images"
    mv $FILE Images
done