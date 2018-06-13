#! /bin/bash

curl -s -L https://github.com/409H/EtherAddressLookup/raw/master/blacklists/domains.json | awk '!x[$0]++' | awk '{print tolower($0)}' | sed 1,1d | awk -F'"' '{print $2}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/et-pk-lu.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/et-pk-lu.txt /Volumes/Rayyan/Pi/Github/c0ln/et-pk-lu.txt
