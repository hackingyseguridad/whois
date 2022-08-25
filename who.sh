echo "=================================================================" & echo "IP" $1 & host $1; dig -x $1 +short;
sudo whois $1 |grep descr:
nmap $1 -Pn -sT -p 143,443,8443,8080,8888 --open --script=ssl-cert |grep DNS:
nmap $1 -sL -R --dns-servers 194.179.1.100 
nmap $1 -p0 --script whois-ip --script-args whodb=nofile
