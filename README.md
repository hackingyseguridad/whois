# whois


1º.-CONSULTA comando whois

whois 1.1.1.1 |grep descr: 

2.- CONSULTA IP registrada en Web de RIPE:

https://apps.db.ripe.net/db-web-ui/query?searchtext=2.2.2.2

3º.- nmap SCRIPT WHOIS-IP por consola:

nmap -p0 2.2.2.2 --script whois-ip --script-args whodb=nofile

www.hackingyseguridad.com - 
Antonio Taboada
