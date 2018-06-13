#! /bin/bash

curl -s https://filters.adtidy.org/windows/filters/15.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '!/localbitcoins.com/' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Ag-DNS.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Ag-DNS.txt /Volumes/Rayyan/Pi/Github/AgD/Ag-DNS.txt
