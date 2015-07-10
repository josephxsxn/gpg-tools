#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Please pass as CLI arguments:"
	echo "sh gt-cryptmail.sh TEXTFILE EMAIL"
	echo "TEXTFILE the email file you want to encrypt, sign, and hide recipient" 
    echo "EMAIL, 1 email - test@test.com" 
	exit 1
fi

tfile=$1
email=$2

#use -R not -r to hide recipient 
gpg -e -s -a -R $email $tfile
