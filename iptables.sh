#!/bin/bash
if [ $1 == "-h" ]; then
    echo "help : "
    echo " If you wanna block all the users, just leave the IP option blank."
elif [ -f /etc/alternatives/iptables ]; then
      sudo iptables -A INPUT -p tcp -s $1 --dport 22 -j DROP
      sudo iptables -A INPUT -p tcp -s $1 --dport 443 -j DROP
      sudo iptables -A INPUT -p tcp -s $1 --dport 80 -j DROP
      sudo iptables -A INPUT -p tcp -s $1 --dport 23 -j DROP
      echo " The $1 ain't allowed to get into the ssh, http, https, telnet, or ftp services of this machine ."
fi

echo "THE rules that you just add are :"
sudo iptables -L
