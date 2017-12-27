#! /bin/bash

curl -s https://mirror.cedia.org.ec/malwaredomains/immortal_domains.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/mw-i_d.txt

cp /Users/rayyan/Github/Scrpts/Lists/mw-i_d.txt /Users/rayyan/Github/mwd-id/mw-i_d.txt
