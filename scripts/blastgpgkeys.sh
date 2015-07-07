#!/bin/bash

if [ $# -ne 2 ]
then
        echo "Please pass as CLI arguments:"
	echo "sh blastgpgkeys.sh GPGKEY PGPSERVERSFILE"
	echo "GPGKEY is expected to be a valid KEYID" 
	echo "PGPSERVERFILE is a line by line file of PGP Key Servers"
	exit 1
fi

gpgkey=$1
serversfile=$2

echo " GPG KEYID: $gpgkey "
echo " PGP Servers File: $serversfile"

for F in $(cat $serversfile) ; do
#	echo $F $gpgkey
	gpg --send-keys --keyserver $F $gpgkey
done;

#gpg --send-keys --keyserver $GPGKEY
