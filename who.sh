#!/bin/bash
# (c) Hacking y Seguridad .com 2023
echo && echo "--------------------------------------------------------------" & echo "IP  ===> " $i " <===" && echo "--------------------------------------------------------------" & host $i; dig -x $i +short;
sudo whois $i |grep descr:
nmap $i $2 -Pn -sT -R --dns-servers 80.58.104.181 -p  110,993,995,143,443,587,465,8000,7443,8443,8080,8888,10443 --open --script=ssl-cert -oG resultado.txt | grep "Nmap\|DNS:"
nmap $i -Pn -sT -p0 --script=whois-ip --script-args whodb=nofile
