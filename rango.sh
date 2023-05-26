#!/bin/bash
echo
echo "Uso.: sh rango.sh 192.168.1.0/24"
# (c) hackingyseguridad.com 2023
echo "=================================================================" & echo "rango: " $1 
nmap $1 -Pn -sT -p 143,443,587,465,8000,7443,8443,8080,8888,10443 --open --script=ssl-cert |grep DNS:
