#!/bin/bash
# (c) hacking y seguridad .com 2023
# Extraer el titualar de IP con whois
# Listado de IP en fichero ip.txt
echo

for i in `cat ip.txt`
do
        echo
        echo "--------------------------------------------------------------" & echo "IP  ===> " $i " <===" & host $i; dig -x $i +short;
        sudo whois $i |grep descr:
        nmap $i $2 -Pn -sT -R --dns-servers 194.179.1.100  -p 443,8443,8080,8888,10443 --open --script=ssl-cert -oG resultado.txt | grep "Nmap\|DNS:"
        nmap $i -Pn -sT -p0 --script=whois-ip --script-args whodb=nofile
done



