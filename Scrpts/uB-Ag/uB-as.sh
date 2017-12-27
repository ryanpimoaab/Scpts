#! /bin/bash

curl -s https://raw.githubusercontent.com/byaka/ublock-antiskimming-list/master/build/data.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/uB-as.txt

cp /Users/rayyan/Github/Scrpts/Lists/uB-as.txt /Users/rayyan/Github/uB-Ag/uB-as.txt
