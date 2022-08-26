#!/bin/bash
#!/bin/bash
# Extraer el titualar de IP con whois
# Listado de IP en fichero ip.txt
echo

for i in `cat ip.txt`
do
        echo "--------------------------------------------------------------" & echo "IP  ===> " $i " <===" & host $i; dig -x $i +short;
        sudo whois $i |grep descr:
        nmap $i -Pn -sT -p 443,8443,8080,8888,10443 --open --script=ssl-cert |grep DNS:
        nmap $i -sL -R --dns-servers 194.179.1.100
        nmap $i -Pn -sT -p0 --script=whois-ip --script-args whodb=nofile
done

