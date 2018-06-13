#! /bin/bash

curl -s https://mirror.cedia.org.ec/malwaredomains/immortal_domains.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mw-i_d.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mw-i_d.txt /Volumes/Rayyan/Pi/Github/mwd-id/mw-i_d.txt
