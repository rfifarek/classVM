#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
then
  echo "Error: Please run with sudo"
  exit
fi

echo "Stopping ElasticSearch"
/usr/bin/systemctl stop elasticsearch
echo "Stopping Filebeat"
/usr/bin/systemctl stop filebeat
echo "Stopping Kibana"
/usr/bin/systemctl stop kibana
echo "Stopping Wazuh Manager"
/usr/bin/systemctl stop wazuh-manager
