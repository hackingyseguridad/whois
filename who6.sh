--------------------------------------------------------------
IP  ===>  2a02:9010:c0::13:1  <===
--------------------------------------------------------------
Host 1.0.0.0.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.c.0.0.0.1.0.9.2.0.a.2.ip6.arpa not found: 2(SERVFAIL)
descr:          TELEFONICA GLOBAL SOLUTIONS S.L.U.
descr:          Internet Public Addresses
descr:          __
descr:          ES-TELEFONICA-20110302
descr:          Telefonica de Espana
Starting Nmap 7.95 ( https://nmap.org ) at 2025-06-24 14:34 CEST
Nmap done: 1 IP address (1 host up) scanned in 13.13 seconds

┌──(root㉿hacking)-[/home/antonio/whois]
└─# cat who6.sh
#!/bin/sh
# (R) Antonio Taboada - http://hackingyseguridad.com/  - Julio 2025
# ALDEA DEL FRESNO ( MADRID )
# Extraer el titualar de IP  Ipv6 con whois
# Listado de IP en fichero ipv6.txt
echo

echo && echo "--------------------------------------------------------------" & echo "IP  ===> " $1 " <===" && echo "--------------------------------------------------------------" & host $1; dig -x $1 +short;
        sudo whois $1 |grep descr:
        nmap -6 $1 $2 -Pn -sT -R --dns-servers 80.58.104.181 -p  110,993,995,143,443,587,465,8000,7443,8443,8080,8888,10443 --open --script=ssl-cert -oG resultado.txt | grep "Nmap\|DNS:"
