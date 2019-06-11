#!/bin/bash

mkdir $1

FILE=$2
while read LINE; do
    if [ -e $1/$LINE ] ; then
    	i=2
    	while [ -e $1/$LINE.$i ] ; do
       		let i++
    	done
    name=$LINE.$i
    touch $1/$name 
    else 
	touch $1/$LINE
    fi
    
done < $FILE

chmod -R a-w $1
