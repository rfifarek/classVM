#!/bin/bash

if [[ -r "/etc/passwd" ]]; then
   echo /etc/passwd is readable
else
   echo Error: /etc/passwd is not readable
fi

if [[ -r /etc/shadow ]]; then
   echo Error: /etc/shadow is readable
else
   echo /etc/shadow is not readable
fi
