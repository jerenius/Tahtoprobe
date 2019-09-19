#!/bin/bash


## Create LLDPd configuration
cat <<EOL >>/etc/lldpd.conf
configure system hostname $HOSTNAME
configure system interface pattern eth0
configure med fast-start enable
EOL


## Start supervisord
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n &
trap "supervisorctl shutdown && wait" SIGTERM
wait
