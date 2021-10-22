#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Error: Please run with sudo"
  exit
fi

if [ -f /usr/local/apache2/bin/apachectl ]
   then /usr/local/apache2/bin/apachectl -f `pwd`/httpd.conf -k start 2>/dev/null &
