#! /bin/bash

cron -f && tail -f /var/log/cron.log