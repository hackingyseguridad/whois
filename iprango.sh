#!/bin/bash
echo
echo "Uso.: sh iprango.sh 8.8.8.8"
# (c) hackingyseguridad.com 2024
echo "=================================================================" & echo "rango de la IP : " $1 
echo
whois $1 $2 |grep route:
