#!/bin/bash

jsonfile=$"Log_$(date +%F)-$(date +%T).json"

if [[ -e "$1" ]];
then
	touch $jsonfile
	awk 'BEGIN {
	print "[ \n"}
	{gsub( "\[|\]", "");
	gsub( ":" , "", $3);
	gsub( ":" , "", $4);
	print "{\"type\" " ": \""$3"\" , \"message\" : \""$4"\" , \"time\" : \""$1" "$2"\"}, \n"
	}' $1
fi
		 
