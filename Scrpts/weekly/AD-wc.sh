#! /bin/bash

curl -s https://raw.githubusercontent.com/anudeepND/adservers/master/wildcard.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-wc.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-wc.txt /Volumes/Rayyan/Pi/Github/weekly/AD-wc.txt
