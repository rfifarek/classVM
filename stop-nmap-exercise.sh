#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Error: Please run with sudo"
  exit
fi

killall ncat
/usr/local/apache2/bin/apachectl stop
