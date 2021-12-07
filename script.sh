#create user “adminuser”
useradd adminuser
#set password for “adminuser”
 echo "passwordwinter" | passwd --stdin adminuser
#create group admin
groupadd admin
echo '%admin ALL=(ALL:ALL) ALL' >> /etc/sudoers
#grant for “adminuser” sudoer permission
usermod -a -G admin adminuser
#create user “poweruser”
useradd poweruser
#grant for “poweruser” permission for iptables command
echo 'poweruser ALL=(ALL:ALL) /usr/sbin/iptables' >> /etc/sudoers
#allow “poweruser” to read home directory of “adminuser” 
usermod -a -G adminuser poweruser
#list all of files with SUID bit set
find / -type d -perm 4000 -exec ls -ld {} \;