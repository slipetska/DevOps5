#create test folders
mkdir /var/folder{1,2}
#copy service file
cat /home/vagrant/task.service > /etc/systemd/system/task.service
#reload all daemons
systemctl daemon-reload
#run the daemon
systemctl start task.service
#enable autostart
systemctl enable task.service
#change directory to cron.d
cd /etc/cron.d
#every minute during working days log logged in users to the file
echo '* * * * 1-5 root w>>/var/log/logged-in.log' >mycron
