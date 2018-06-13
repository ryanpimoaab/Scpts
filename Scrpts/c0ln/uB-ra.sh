#! /bin/bash

curl -s https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/uB-ra.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/uB-ra.txt /Volumes/Rayyan/Pi/Github/c0ln/uB-ra.txt
