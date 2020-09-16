#!/bin/sh
echo "htg.service: ## Starting ##" | systemd-cat -p info

while :
do
	TIMESTAMP=$(date)
echo "htg.service timestamp: (TIMESTAMP)" | systemd-cat -p info
sleep 60
done
