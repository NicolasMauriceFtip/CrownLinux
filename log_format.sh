#!/bin/bash

if [[ -e "$1" ]];
then
	touch Log_$(date +%F)-$(date +%T).json
	cat $1 | while read line;
	do
		varDate = grep $(date)
		vartype = $( echo $line | grep "error")
		echo {\"date":\"$varDate"','"\"type\":\"$varType\""}
	done
fi
		 
