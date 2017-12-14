#! /bin/bash

curl -s https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/uB-p.txt

awk '!seen[$0]++' /Users/rayyan/Github/Scrpts/Lists/uB-p.txt > /Users/rayyan/Github/uB-Ag/uB-p.txt
