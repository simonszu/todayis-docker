#! /bin/bash

/usr/sbin/crond -f -l 8 && tail -f /var/log/cron.log
