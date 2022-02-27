#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
then
  echo "Error: Please run with sudo"
  exit
fi

echo "Starting ElasticSearch"
/usr/bin/systemctl start elasticsearch
echo "Starting Filebeat"
/usr/bin/systemctl start filebeat
echo "Starting Kibana"
/usr/bin/systemctl start kibana
echo "Starting Wazuh Manager"
/usr/bin/systemctl start wazuh-manager
