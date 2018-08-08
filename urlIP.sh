#!/bin/bash
file='UrlIP.txt'

grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $file > IP.txt
          
grep -v '^[0-9]' $file > url.txt
          
while IFS= read -r var
do      

if [[ $var =~ ^[0-9]{1,3}+\.[0-9]{1,3}+\.[0-9]{1,3}+\.[0-9]{1,3}+$ ]];
then  
  echo "$var : success"
fi
    
done < "$file"
