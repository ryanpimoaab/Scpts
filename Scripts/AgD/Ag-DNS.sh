#! /bin/bash

curl -s https://filters.adtidy.org/windows/filters/15.txt | egrep '^\|\|' | cut -d'/' -f1 | cut -d '^' -f1 | cut -d '$' -f1 | tr -d '|' | awk '!x[$0]++' | awk '!localbitcoins.com/' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/Ag-DNS.txt

cp /Users/rayyan/Github/Scrpts/Lists/Ag-DNS.txt /Users/rayyan/Github/AgD/Ag-DNS.txt
