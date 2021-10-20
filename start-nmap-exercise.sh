#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Error: Please run with sudo"
  exit
fi

for port in 22 23 53 80 443 8080 3306 5432 7802 12345 
do
	ncat -kl $port 2>/dev/null &
done
