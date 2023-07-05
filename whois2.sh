nmap -iL ip.txt  $1, $2 -Pn -sT -R  -p 443,8443,8080,8888,10443 --open --script=ssl-cert -oG resultado.txt | grep "Nmap\|DNS:"
