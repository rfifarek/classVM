#!/bin/bash

if [[ -r "/etc/passwd" ]]; then
   echo /etc/passwd is readable
else
   echo ERROR! /etc/passwd is not readable
fi

if [[ -r /etc/shadow ]]; then
   echo ERROR! /etc/shadow is readable
else
   echo /etc/shadow is not readable
fi
