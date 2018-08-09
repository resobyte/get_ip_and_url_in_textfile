#!/bin/bash
file=$1
regex_ip='([0-9]{1,3}[\.]){3}[0-9]{1,3}'
ip_output=$2
url_output=$3


grep -E -o $regex_ip $file > $ip_output

grep -E -v $regex_ip $file > $url_output
