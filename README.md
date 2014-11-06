ipUpdater
=========

updates /etc/sysconfig/iptables with your dynamic ip. You need a dynamic dns service for this to work.
For example. I use freedns.afraid.org to assign dompatones.us.to my dynamic ip. At home I have an api call to freedns for my ip to be updated in case it changes.
On my servers I run this script hourly to make sure that I do not get locked out.
replace my domain name with yours.
This will only work on servers running iptables, and that have an iptable daamon. I used this on Centos 6 and below, and rhel 6 and below, and on XenServer.
For debian based distros you can change the file to your own and the command to iptables-restore.
