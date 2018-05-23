#! /bin/bash

curl -s https://raw.githubusercontent.com/jmdugan/blocklists/master/corporations/facebook/all | sed 1,18d | awk '!x[$0]++' | awk '{print tolower($0)}' | sed 's/^0.0.0.0[ \t]*//' > /Users/rayyan/Github/Scrpts/Lists/fb-all.txt

cp /Users/rayyan/Github/Scrpts/Lists/fb-all.txt /Users/rayyan/Github/weekly/fb-all.txt
