nmap $1, $2 -Pn -sT -p 443,8443,8080,8888,10443 --open --script=ssl-cert -oG resultado.txt |grep DNS: -9
