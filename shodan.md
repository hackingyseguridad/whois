## ./shodan.sh script

En fichero ip.txt ponemos la lista de IP a revisar

## Ejemplo de busqueda

shodan search --fields ip_str,port,org:"Telefonica" country:"ES" product:"OpenSSH" 

shodan search --fields ip_str,port,data,product "ownCloud" | ag '302 Found' | ag -o 'Location: .*' | cut -d"\\" -f1 | awk '{print $2}'

#count port 445 in certain country and region

shodan count "country:CA region:NB port:445" 

#Search SMB Authentication enabled and SMB version 1

port:445 country:CA region:NB "SMB Status Authentication: enabled SMB Version: 1"

#Get Info for account

Shodan info

#Search port 445 and download the results

shodan download Port44_NB_August_2019 port:445 country:CA region:NB

#Search UPnP 

shodan download UPNP_NB_AUG_2019 upnp country:CA region:NB

#PowerShell command to read JSON file

Get-Content ./Port445_NB_August_2019.json | ConvertFrom-Json

#Powershell command to extract IP and Data field

Get-Content ./Port445_NB_August_2019.json | ConvertFrom-Json | Select-Object ip_str,data | Where-Object {$_.data -like "*enabled*"}| fl

#Shodan command download Linux OS

shodan download Linux_2.6.x_NB_Aug country:CA region:NB os:Linux

#Shodan download Windows server 2008 r2

shodan download windows2008r2_NB_Aug "os:'Windows Server 2008 r2' country:CA region:NB"

#Shodan download data for "Shared Services Canada" (Pay attention to spaces and query)

shodan download Shared_Services_Canada "org:'Shared Services Canada'"

#Buscadores de dispositivos similares:

https://www.shodan.io/

https://search.censys.io/

https://www.zoomeye.org/

https://en.fofa.info/

https://intelx.io/

https://fullhunt.io/

https://phonebook.cz/

https://www.onyphe.io/

https://viz.greynoise.io/

https://www.shadowserver.org/what-we-do/network-reporting/get-reports/

https://socradar.io/

https://securitytrails.com/

https://www.criminalip.io/

https://hunter.how/

@hackyseguridad



https://www.shodan.io/search/examples


## http://www.hackingyseguridad.com
#
