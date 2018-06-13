#! /bin/bash

curl -s https://filters.adtidy.org/extension/chromium/filters/11.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!/facebook.com/' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Ag-m-a.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Ag-m-a.txt /Volumes/Rayyan/Pi/Github/uB-Ag/Ag-m-a.txt
