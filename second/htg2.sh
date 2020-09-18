#!/bin/sh
systemd-cat -t htg2 echo "htg2.service: ## Starting ##"
while :
do
	TIMESTAMP=$(date)
	systemd-cat -t htg2 echo "htg2.service timestamp: ($TIMESTAMP)"
	sleep 60
done

