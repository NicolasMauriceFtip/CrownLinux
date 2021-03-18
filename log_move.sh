#!/bin/bash
f=Testcrown/html
a=$f/$(date +%F)
b=$f/dump_list.txt
c=$a/log_$(date +%F)_$(date +%T).log
e=$f/json_list.txt
if [[ ! -d $a ]];
then
	mkdir -p $a
fi
bash ./log_dump.sh /workspace/log_server/server.log $c  
if [[ ! -e $b ]];
then 
	touch $b
fi
printf $c'\n'>>$b
if [[ ! -e $e ]];
then
	touch $e
fi
rm *json*
bash ./log_filter.sh $c
bash ./log_format.sh ./temp.txt
d=$(find . -name *.json)
echo $d
cp $d $a
echo $d | cut -c 2-
echo $d
printf $a/$myString'\n'>>$e
rm ./temp.txt


