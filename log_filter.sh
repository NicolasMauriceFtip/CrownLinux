#!/bin/bash
touch temp.txt
if [[ -e "$1" ]];
then
	grep "err" $1 > ./temp.txt
	grep "warn" $1 >> ./temp.txt
fi



