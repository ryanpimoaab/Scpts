#! /bin/bash

curl -s https://raw.githubusercontent.com/anudeepND/adservers/master/adservers.txt | sed 's/^0.0.0.0[ \t]*//' | sed '/ae01.alicdn.com/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/AD-adsrv.txt

cp /Users/rayyan/Github/Scrpts/Lists/AD-adsrv.txt /Users/rayyan/Github/smaller-lists/AD-adsrv.txt
