#!/bin/bash
# Extraer el titualar de IP con whois
# Listado de IP en fichero ip.txt
echo

for i in `cat ip.txt`
do
        echo "--------------------------------------------------------------" & echo "IP" $i & host $i
        sudo whois $i |grep descr:
done
