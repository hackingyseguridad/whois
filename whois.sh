#!/bin/bash
#!/bin/bash
# Extraer el titualar de IP con whois
# Listado de IP en fichero ip.txt
echo

for i in `cat ip.txt`
do
        echo "--------------------------------------------------------------" & echo "IP" $i & host $i; dig -x $i +short;
        sudo whois $i |grep descr:
        nmap $i -Pn -sT -p 443,8443,8080,8888 --open --script=ssl-cert |grep DNS:
done

