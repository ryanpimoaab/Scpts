#! /bin/bash

curl -s https://filters.adtidy.org/extension/chromium/filters/12.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/Ag-s-f.txt

cp /Users/rayyan/Github/Scrpts/Lists/Ag-s-f.txt /Users/rayyan/Github/uB-Ag/Ag-s-f.txt
