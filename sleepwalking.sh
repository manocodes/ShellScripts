#!/bin/bash

read -p "Enter an option for the sleep walking app" OPT 

case $OPT in 
    start)
        /tmp/sleep­walking­server.pid
        ;;
    stop)
        kill $(cat /tmp/sleep­walking­server.pid)
        ;;
    *)
        echo "usage: start:stop" ; exit 1
        ;;
    esac
    