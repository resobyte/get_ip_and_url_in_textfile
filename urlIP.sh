#!/bin/bash
file='UrlIP.txt'

grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $file > IP.txt
          
grep -E -v "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $file > url.txt
