#!/bin/bash
if [[ ! -d "$2" ]];
then
	mkdir .$2
fi
if [[ -e "$1" ]];
then
	cp $1 .$2/log_$(date +%F)_$(date +%T).log
	truncate -s 0 $1
fi