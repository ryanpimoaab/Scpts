#! /bin/bash

curl -s https://raw.githubusercontent.com/Dawsey21/Lists/master/adblock-list.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/abp-l.txt

cp /Users/rayyan/Github/Scrpts/Lists/abp-l.txt /Users/rayyan/Github/smaller-lists/abp-l.txt
