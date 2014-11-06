#!/bin/bash
ipNew=$(ping -c 1 dompatones.us.to|head -n 1|awk '{print $3}'|tr -d '()')
ipLine=$(grep -A1 "#Dynamic IP" /etc/sysconfig/iptables|tail -n1)
newLine="-A RH-Firewall-1-INPUT -s $ipNew -j ACCEPT"
if ! grep -q $ipNew /etc/sysconfig/iptables
then
  sed -i "s,$ipLine,$newLine," /etc/sysconfig/iptables
  service iptables restart
fi
