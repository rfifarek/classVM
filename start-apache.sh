
if [ -f /usr/local/apache2/bin/apachectl ]
   then /usr/local/apache2/bin/apachectl -f `pwd`/httpd.conf -k start 2>/dev/null &
