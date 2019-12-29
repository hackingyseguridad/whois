# whois


1.- CONSULTA IP registrada en Web de RIPE:

https://apps.db.ripe.net/db-web-ui/query?searchtext=2.2.2.2

2º.- NMAP SCRIPT WHOIS-IP por consola:

nmap -p0 2.2.2.2 --script whois-ip --script-args whodb=nofile

www.hackingyseguridad.com
