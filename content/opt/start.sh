#!/bin/bash


## Create LLDPd configuration
cat <<EOL >>/etc/lldpd.conf
configure system hostname $PROBENAME
configure system interface pattern eth0
configure med fast-start enable
EOL

hostname $PROBENAME

## Start supervisord
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n &
trap "supervisorctl shutdown && wait" SIGTERM
wait
