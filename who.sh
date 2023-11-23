#!/bin/bash
# (c) hacking y seguridad .com 2022
echo && echo "================================================================="
echo "=================================================================" & echo "IP" $1 & host $1; dig -x $1 +short;
sudo whois $1 |grep descr:
nmap $1 -Pn -sT -p 110,993,995,143,587,465,443,8000,8443,8080,8888,10443 --open --script=ssl-cert |grep DNS:
nmap $1 -sL -R --dns-servers 194.179.1.100 
nmap $1 -p0 --script whois-ip --script-args whodb=nofile
