#!/bin/sh
# (R) Antonio Taboada - http://hackingyseguridad.com/  - Julio 2025
# ALDEA DEL FRESNO ( MADRID )
# Extraer el titualar de IP  Ipv6 con whois
# Listado de IP en fichero ipv6.txt
echo

for i in `cat ipv6.txt`
do
        echo && echo "--------------------------------------------------------------" & echo "IP  ===> " $i " <===" && echo "--------------------------------------------------------------" & host $i; dig -x $i +short;
        sudo whois $i |grep descr:
        nmap -6 $i $2 -Pn -sT -R --dns-servers 80.58.104.181 -p  110,993,995,143,443,587,465,8000,7443,8443,8080,8888,10443 --open --script=ssl-cert -oG resultado.txt | grep "Nmap\|DNS:"
done
