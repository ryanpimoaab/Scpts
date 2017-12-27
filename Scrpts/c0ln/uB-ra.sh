#! /bin/bash

curl -s https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/uB-ra.txt

cp /Users/rayyan/Github/Scrpts/Lists/uB-ra.txt /Users/rayyan/Github/c0ln/uB-ra.txt
