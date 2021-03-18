#!/bin/bash

if [[ -e "$1" ]];
then
	touch Log_$(date +%F)-$(date +%T).json
	awk -v var1= "$1"
	awk '{print $1$2}'	
fi
		 
