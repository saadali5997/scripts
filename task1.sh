#!/bin/bash
ds="$(cd $2 && ls -R)"
mails=$(echo $ds | tr " " "\n")
dir=""
for addr in $mails
do
    if [[ $addr == ".:" ]]
    then
	dir="$(pwd)/"$2
    
    elif [[ "$addr" == *: ]]
    then
    	dir="$(pwd)/"$2${addr:2:${#addr}-2} 
 
    elif [[ $addr == $1 ]]
    then
	echo "File $addr exists at $dir"
    fi
done
