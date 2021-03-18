#!/bin/bash
a=Testcrown/html/$(date +%F)
b=Testcrown/html/dump_list.txt
c=$a/log_$(date +%F)_$(date +%T).log
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
bash ./log_filter.sh $c | xargs -i {} ./log_format.sh {} 



