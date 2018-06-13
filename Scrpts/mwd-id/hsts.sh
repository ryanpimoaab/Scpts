#! /bin/bash

curl -s https://www.malwaredomainlist.com/hostslist/hosts.txt | sed '1,6d' | sed 's/^127.0.0.1[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mwd-hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mwd-hsts.txt /Volumes/Rayyan/Pi/Github/mwd-id/hsts.txt
