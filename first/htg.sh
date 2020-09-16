#!/bin/sh
systemd-cat -t htg echo "htg.service: ## Starting ##"

while :
do
	TIMESTAMP=$(date)
systemd-cat -t htg echo "htg.service timestamp: (TIMESTAMP)"
sleep 60
done
