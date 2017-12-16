#!/bin/bash

LIST="mano bear pig dog cat sheep"

NUMBER=1

echo $LIST

for ITEM in $LIST
do
echo $NUMBER : $ITEM

NUMBER=`expr $NUMBER + 1`

done

echo "we had " `expr $NUMBER - 1` "items in the list"