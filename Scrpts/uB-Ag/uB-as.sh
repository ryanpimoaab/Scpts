#! /bin/bash

curl -s https://raw.githubusercontent.com/byaka/ublock-antiskimming-list/master/build/data.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/uB-as.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/uB-as.txt /Volumes/Rayyan/Pi/Github/uB-Ag/uB-as.txt
