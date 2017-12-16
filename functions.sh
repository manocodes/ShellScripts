#!/bin/bash

function Hello()
{
    for Name in $@
    do
        echo "Hello $Name"
    done
}