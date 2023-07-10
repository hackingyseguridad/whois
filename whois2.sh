nmap -iL ip.txt  $1, $2 -Pn -sT -R  -p 110,993,995,143,443,587,465,8000,7443,8443,8080,8888,10443  --open --script=ssl-cert -oG resultado.txt | grep "Nmap\|DNS:"
