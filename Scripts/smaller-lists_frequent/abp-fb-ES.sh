#! /bin/bash

curl -s https://www.fanboy.co.nz/enhancedstats.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/abp-fb-ES.txt

cp /Users/rayyan/Github/Scrpts/Lists/abp-fb-ES.txt /Users/rayyan/Github/smaller-lists/abp-fb-ES.txt
