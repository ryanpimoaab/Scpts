#! /bin/bash

curl -s https://www.malwaredomainlist.com/hostslist/hosts.txt | sed '1,6d' | sed 's/^127.0.0.1[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/mwd-hsts.txt

cp /Users/rayyan/Github/Scrpts/Lists/mwd-hsts.txt /Users/rayyan/Github/mwd-id/hsts.txt
