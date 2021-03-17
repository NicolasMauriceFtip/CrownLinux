#!/bin/bash
if [[ -e "$1" ]];
then
	var1 = $(touch log_$(date +%X)_$(date +%T).log)
	cd $1
