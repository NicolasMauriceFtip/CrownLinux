#!/bin/bash

jsonfile=$"Log_$(date +%F)-$(date +%T).json"

touch $2/$jsonfile
awk -v jsfile=$2/$jsonfile 'BEGIN {
print "[ \n" >> jsfile}
{gsub( "\[|\]", "");
gsub( ":" , "", $3);
gsub( ":" , "", $4);
print "{\"type\" " ": \""$3"\" , \"message\" : \""$4"\" , \"time\" : \""$1" "$2"\"}, \n" >> jsfile }
END {print "]" >> jsfile
}' $1
#ajoute chemin fichier ds json liste

printf $2/$jsonfile'\n'>> /var/www/html/log/json_list.txt
