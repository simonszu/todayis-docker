#!/bin/sh

/usr/sbin/crond -f -l 8 && tail -f /var/log/cron.log
