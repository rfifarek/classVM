#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
then
  echo "Error: Please run with sudo"
  exit
fi

/usr/bin/systemctl start elasticsearch
/usr/bin/systemctl start filebeat
/usr/bin/systemctl start kibana
/usr/bin/systemctl start wazuh-manager
