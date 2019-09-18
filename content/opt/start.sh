#!/bin/bash



#node-red --settings /settings.js &

#/usr/src/app/temperature.py

## Start supervisord
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n &
trap "supervisorctl shutdown && wait" SIGTERM
wait
