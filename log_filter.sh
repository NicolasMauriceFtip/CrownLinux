#!/bin/bash
varErr=0
varWarn=0
fileParam=$1

if [[ -e "$1" ]];
then
	grep "err" $1
	grep "warn" $1
fi