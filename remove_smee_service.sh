systemctl stop smee
systemctl disable smee
rm /etc/systemctl/system/smee.service
systemctl deamon-reload
systemctl status smee