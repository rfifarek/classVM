#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
then 
  echo "Error: Please run with sudo"
  exit
fi

if [ -f /usr/local/apache2/bin/apachectl ]
then
  /usr/local/apache2/bin/apachectl -k start 2>/dev/null &
  /usr/sbin/iptables -A INPUT -m tcp -p tcp -s 127.0.0.1 -d 127.0.0.1 --dport 25 -j DROP
else
   ncat -kl 80 2>/dev/null >/dev/null &
fi

for port in 22 53 443 8080 3306 5432 7802 12345 
do
	ncat -kl $port 2>/dev/null >/dev/null &
done
