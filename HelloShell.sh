#!/bin/bash

#importing a functions library
. functions.sh

MESSAGE="Scripting is Fun!"
HOST=$(hostname)

echo $MESSAGE "on" ${HOST}...

#calling a function.
Hello

