#! /bin/bash

/usr/bin/crond -f -l 8 && tail -f /var/log/cron.log
