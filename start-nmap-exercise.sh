#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Error: Please run with sudo"
  exit
fi

if [ -f /usr/local/apache2/bin/apachectl ]
   then /usr/local/apache2/bin/apachectl -f `pwd`/httpd.conf -k start 2>/dev/null &
else
   ncat -kl 80 2>/dev/null &
fi

for port in 22 23 53 443 8080 3306 5432 7802 12345 
do
	ncat -kl $port 2>/dev/null &
done
