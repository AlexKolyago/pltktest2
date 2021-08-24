#!/bin/bash

#Close the door for the 80 port
iptables -A INPUT -p tcp --dport 80 -j DROP

#To open 443 port for example network, and to close it for another
iptables -A INPUT -p tcp -s 192.168.112.0/24 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j DROP

iptables-save
