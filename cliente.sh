#!/bin/sh

FILE=`zenity --file-selection --title="Select a File"`

echo "$FILE"

fname=$(basename $FILE)
echo "$fname"

nc -v -w 50  192.168.250.171 < "$fname" 
