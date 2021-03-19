#!/bin/bash
#
#  dump + filtre + format le log server

f=/var/www/html/log
a=$f/$(date +%F)
b=$f/dump_list.txt
c=$a/log_$(date +%F)_$(date +%T).log
e=$f/json_list.txt


#verifie si chemin existant + execute log_dump.sh
if [[ ! -d $a ]];
then
	mkdir -p $a
fi
bash ~/CrownLinux/log_dump.sh /workspace/log_server/server.log $c 


#verifie si fichier liste existant + y inscrit chemin  du log cree
if [[ ! -e $b ]];
then 
	touch $b
fi
printf $c'\n'>>$b 


#verifie si liste  json existe ou cree 
if [[ ! -e $e ]];
then
	touch $e 
fi


#execute log_filter.sh + log_format.sh
bash ~/CrownLinux/log_filter.sh $c
bash ~/CrownLinux/log_format.sh $f/temp.txt $a


#ajoute chemin fichier ds json liste
mystring=$(echo $d | cut -c 3-)
echo $mystring
printf $a/$mystring'\n'>>$e


#archive dossier log
if [[ ! -d log.tar.gz ]];
then 
	tar -czvf /var/www/html/log.tar.gz -C /var/www/html log
else 
	rm log.tar.gz
	echo "previous log destroy"
	tar -czvf /var/www/html/log.tar.gz -C /var/www/html log
fi

 
