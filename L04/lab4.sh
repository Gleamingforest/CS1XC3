#!/bin/bash

# Use First Argument As Working Directory

WDIR="$1"
cd "$WDIR"

if [ $# -eq 2 ] ; then
    if [ "$2" -eq 1 ] ; then
        if [ ! -e "file1.txt" ] ; then
            touch file1.txt
            echo "$USER" > file1.txt
        fi
    elif [ "$2" -eq 2 ] ; then
        if [ -e "file1.txt" ] ; then
            if [ ! -e "backup" ] ; then
                mkdir "backup"
            cp "$WDIR/file1.txt" "$WDIR/backup"
            fi
        fi
    elif [ "$2" -eq 3 ] ; then  
        if [ -e backup ] ; then
            cd "backup"
            if [ -e "file1.txt" ] ; then
                cp "$WDIR/backup/file1.txt" "$WDIR"
                rm "file1.txt"
            fi
        fi
    fi
elif [ $# -eq 3 ] ; then
    if [ "$2" -eq 1 ] ; then
        if [ ! -e "$3" ] ; then
            touch "$3"
            echo "$USER" > "$3"
        fi
    elif [ "$2" -eq 2 ] ; then
        if [ -e "$3" ] ; then
            if [ ! -e "backup" ] ; then
                mkdir backup
            cp "$WDIR/$3" "$WDIR/backup"
            fi
        fi
    elif [ "$2" -eq 3 ] ; then  
        if [ -e backup ] ; then
            cd "backup"
            if [ -e "$3" ] ; then
                cp "$WDIR/backup/$3" "$WDIR"
                rm "$3"
            fi
        fi
    fi
elif [ $# -gt 3 ] ; then
    touch excess.txt
    echo "" > excess.txt
    for ((i=3 ; i<($#+1) ; i++)) ; do
        echo "${!i}" >> excess.txt
    done
fi
echo "finished"