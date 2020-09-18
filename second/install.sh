cp htg2.sh /usr/local/bin/
chmod +x /usr/local/bin/htg2.sh

cp htg2.service /etc/systemd/system/
chmod 640 /etc/systemd/system/htg2.service
systemctl daemon-reload
