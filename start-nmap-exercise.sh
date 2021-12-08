#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
then 
  echo "Error: Please run with sudo"
  exit
fi

if [ -f start-apache.sh ]
then 
  start-apache.sh
  /usr/sbin/ufw enable
  /usr/sbin/ufw deny to 127.0.0.1 port 25
else
   ncat -kl 80 2>/dev/null &
fi

for port in 22 23 53 443 8080 3306 5432 7802 12345 
do
	ncat -kl $port 2>/dev/null &
done
