#!/bin/bash
# Extraer el titualar de IP con whois
# Listado de IP en fichero ip.txt
echo

for i in `cat ip.txt`
do
        echo $i
        sudo whois $i |grep descr:
done
