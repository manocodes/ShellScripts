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
            #find . -depth -exec rmdir {} \;  
            #rm -rf `find . -type f -regex '.*/\.+.+'`
            #echo "deleting $i"
        fi
    done
}

clear 

#Delete_files_except_CSV "test1"
chmod -R 777 "DataProducts_201904"

Delete_files_except_CSV "DataProducts_201904"
Delete_empty_folders "DataProducts_201904"