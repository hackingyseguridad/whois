#!/bin/bash
# (C) Hacking y Seguridad .Com Noviembre 2024
# ALDEA DEL FRESNO ( MADRID )
# Extraer el titualar de IP con whois
echo && echo "--------------------------------------------------------------" & echo "IP  ===> " $1 " <===" && echo "--------------------------------------------------------------" & host $1; dig -x $1 +short;
whois $1 |grep descr:
nmap $1 $2 -Pn -sT -R --dns-servers 80.58.104.181 -p  110,993,995,143,443,587,465,5061,8000,7443,8443,8080,8888,10443 --open --script=ssl-cert -oG resultado.txt | grep "Nmap\|DNS:"
nmap $1 -Pn -sT -p0 --script=whois-ip --script-args whodb=nofile
shodan host $1


