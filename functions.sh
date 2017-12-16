#!/bin/bash

function Hello()
{
    for Name in $@
    do
        echo "Hello $Name"
    done
}

function file_count()
{
    local FOLDER=$1

    local RETURN=ls -1 | wc -l

    echo $RETURN

    return RETURN
}
