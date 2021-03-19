#!/bin/bash
a=/var/www/html/log/$(date +%F)
mkdir -p $a

bash ./log_dump.sh /workspace/log_server/server.log $a
