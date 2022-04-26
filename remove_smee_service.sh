systemctl stop smee
systemctl disable smee
rm /etc/systemd/system/smee.service
systemctl daemon-reload
systemctl status smee