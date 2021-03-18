#!/bin/bash
cp ./html_root/*  /var/www/html
RUN nohup /usr/sbin/nginx &