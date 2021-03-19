#!/bin/bash
apt-get update
apt install cron && touch /etc/cron.d/hello-cron && chmod 0644 /etc/cron.d/hello-cron && crontab /etc/cron.d/hello-cron && cron
crontab -l > updatelog
echo "2 * * * *  bash ./log_move.sh" >> updatelog
crontab updatelog
rm updatelog
