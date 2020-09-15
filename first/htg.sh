#!/bin/sh
echo "htg.service: ## Starting ##" | systemd-cat -p info

while :
do
	TIMESTAMP=$(date '%H:%M:%S')
echo htg.service timestamp: (TIMESTAMP) | systemd-cat -p info
