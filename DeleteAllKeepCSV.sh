#!/bin/bash

# loop & print a folder recusively,
Delete_files_except_CSV() {
    for i in "$1"/*;do
        if [ -d "$i" ];then
            #echo "Entering Directory: $i"
            Delete_files_except_CSV "$i"

        elif [ -f "$i" ]; then

            case "$i" in
            *.csv ) 
                #echo $i " will not be deleted"
                    ;;
            *)
                echo $i " will be deleted"
                rm -rf "$i"
                    ;;
            esac
        fi
    done
}

Delete_empty_folders() {
    for i in "$1"/*;do
        if [ -d "$i" ];then
            echo "$i"
            Delete_empty_folders "$i"
            rmdir "$i" 
            cd DataProducts
            #ls
            #Go to the folder and delete the data
            find . -depth -exec rmdir {} \; 
            rm -R ./.* 
            #echo "deleting $i"
        fi
    done
}


List_all_files() {
    for i in "$1"/*;do
        if [ -d "$i" ];then

            for entry in `ls $i`; do
                #if [ -f "$entry" ]; then
                    echo $entry
                #fi
            done

            #echo "Entering Directory: $i"
            List_all_files "$i"
        fi
    done
}

clear 

#Delete_files_except_CSV "test1"
chmod -R 777 "DataProducts"

#Delete_files_except_CSV "DataProducts"
#Delete_empty_folders "DataProducts"

List_all_files "DataProducts"