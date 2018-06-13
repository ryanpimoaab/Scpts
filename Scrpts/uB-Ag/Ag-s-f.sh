#! /bin/bash

curl -s https://filters.adtidy.org/extension/chromium/filters/12.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Ag-s-f.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Ag-s-f.txt /Volumes/Rayyan/Pi/Github/uB-Ag/Ag-s-f.txt
