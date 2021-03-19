#!/bin/bash
touch /var/www/html/log/temp.txt
if [[ -e "$1" ]];
then
	grep "err" $1 > /var/www/html/log/temp.txt
	grep "warn" $1 >> /var/www/html/log/temp.txt
fi



