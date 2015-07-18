#!/bin/bash

if [ $# -ne 1 ]
then
        echo "Please pass as CLI arguments:"
	echo "sh gt-delfile.sh FILETODELETE"
	echo "FILETODELETE is expected to be a valid path to a file on the local filesystem" 
	exit 1
fi

filetodel=$1

echo " Shreding: $filetodel "
shred -v -f --iterations 35 -z --random-source=/dev/urandom --remove $filetodel
