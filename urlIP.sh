#!/bin/bash
file='UrlIP.txt'

while IFS= read -r var
do

if [[ $var =~ ^[0-9]{1,3}+\.[0-9]{1,3}+\.[0-9]{1,3}+\.[0-9]{1,3}+$ ]]; then
  echo "success"
fi

done < "$file"
