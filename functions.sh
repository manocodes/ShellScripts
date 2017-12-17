#!/bin/bash

function Hello()
{
    for Name in $@
    do
        echo "Hello $Name"
    done
}

function create_testfiles()
{
    n=1

while [ $n -le 10 ]
do
	touch image${n}.jpg
    n=`expr $n + 1`
done
}

create_testfiles