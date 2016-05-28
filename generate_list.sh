#!/bin/bash

SED='gsed'

echo -n > list.txt

PSW=`security find-generic-password -l 'github-oxid' -a "rezonanc-oxid" -w`

curl -u "rezonanc-oxid:$PSW" https://api.github.com/user/repos?per_page=100 | grep full_name | $SED -r 's/\s+"full_name": "(.+)",/\1/g' >> list.txt
cat "static_list.txt" >> list.txt
