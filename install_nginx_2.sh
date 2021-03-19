#!/bin/bash
cp ./html_root/*  /var/www/html
nohup /usr/sbin/nginx &
