#! /bin/bash

curl -s -L https://github.com/409H/EtherAddressLookup/raw/master/blacklists/domains.json | awk '!x[$0]++' | awk '{print tolower($0)}' | sed 1,1d | awk -F'"' '{print $2}' > /Users/rayyan/Github/Scrpts/Lists/et-pk-lu.txt

cp /Users/rayyan/Github/Scrpts/Lists/et-pk-lu.txt /Users/rayyan/Github/c0ln/et-pk-lu.txt
