systemctl stop smee
systemctl disable smee
rm /etc/systemctl/system/smee.service
systemctl daemon-reload
systemctl status smee