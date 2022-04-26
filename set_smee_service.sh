mv ./smee.service /etc/systemd/system/smee.service
systemctl daemon-reload
chmod +x /etc/systemd/system/smee.service
systemctl enable smee 
systemctl start smee
systemctl status smee.service