#!/bin/bash
# Created by http://www.vps-murah.net
# Modified by 0123456

cd
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.local
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.d/rc.local
echo "0 0 * * * root /usr/local/bin/user-expire" > /etc/cron.d/user-expire

cat > /root/ban.sh <<END3
#!/bin/bash
#/usr/local/bin/user-ban
END3

cd /usr/local/bin
wget -O privatecon-script.tar.gz "https://raw.githubusercontent.com/bilazku/otso/master/privatecon-script.tar.gz"
tar -xvf privatecon-script.tar.gz
rm -f privatecon-script.tar.gz

cp /usr/local/bin/privatecon /usr/local/bin/menu

chmod +x /usr/local/bin/trial
chmod +x /usr/local/bin/user-add
chmod +x /usr/local/bin/user-aktif
chmod +x /usr/local/bin/user-delete
chmod +x /usr/local/bin/user-detail
chmod +x /usr/local/bin/user-expire
chmod +x /usr/local/bin/user-lock
chmod +x /usr/local/bin/user-login
chmod +x /usr/local/bin/user-unlock
chmod +x /usr/local/bin/user-password
chmod +x /usr/local/bin/bench-network
chmod +x /usr/local/bin/ram
chmod +x /usr/local/bin/log-limit
chmod +x /usr/local/bin/user-generate
chmod +x /usr/local/bin/user-list
chmod +x /usr/local/bin/privatecon
chmod +x /usr/local/bin/user-delete-expired
chmod +x /usr/local/bin/auto-reboot
chmod +x /usr/local/bin/log-install
chmod +x /usr/local/bin/menu
chmod +x /root/ban.sh
screen -AmdS ban /root/ban.sh
clear
echo " "
echo " "
echo "Privatecon Script Successfully Installed!"
echo " "
echo "Finalizing services wait a few seconds..."
echo " "
echo " "
