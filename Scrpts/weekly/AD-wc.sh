#! /bin/bash

curl -s https://raw.githubusercontent.com/anudeepND/adservers/master/wildcard.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/AD-wc.txt

cp /Users/rayyan/Github/Scrpts/Lists/AD-wc.txt /Users/rayyan/Github/weekly/AD-wc.txt
