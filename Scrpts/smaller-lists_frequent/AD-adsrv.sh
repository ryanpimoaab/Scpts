#! /bin/bash

curl -s https://raw.githubusercontent.com/anudeepND/adservers/master/adservers.txt | sed 's/^0.0.0.0[ \t]*//' | sed '/ae01.alicdn.com/d' | sed '/604fc.v.fwmrm.net/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-adsrv.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-adsrv.txt /Volumes/Rayyan/Pi/Github/smaller-lists/AD-adsrv.txt
