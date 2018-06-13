#! /bin/bash

curl -s https://raw.githubusercontent.com/Dawsey21/Lists/master/adblock-list.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/abp-l.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/abp-l.txt /Volumes/Rayyan/Pi/Github/smaller-lists/abp-l.txt
