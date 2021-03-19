#!/bin/bash
if [[ -e "$1" ]];
then
	cp $1 $2
	truncate -s 0 $1
fi
