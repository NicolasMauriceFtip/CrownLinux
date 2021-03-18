#!/bin/bash

jsonfile=$"Log_$(date +%F)-$(date +%T).json"

touch $jsonfile
awk -v jsfile=$jsonfile 'BEGIN {
print "[ \n" >> jsfile}
{gsub( "\[|\]", "");
gsub( ":" , "", $3);
gsub( ":" , "", $4);
print "{\"type\" " ": \""$3"\" , \"message\" : \""$4"\" , \"time\" : \""$1" "$2"\"}, \n" >> jsfile }
END {print "]" >> jsfile
}' $1
