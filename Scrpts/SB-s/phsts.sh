#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/data/StevenBlack/hosts | sed '1,3d' | sed 's/^127.0.0.1[ \t]*//' | sed 's/^0.0.0.0[ \t]*//' | sed '/^\#/d' | sed '/^$/d' | awk -F'#' '{print $1}' | awk '!x[$0]++' | awk '{print tolower($0)}' | sed '/camsoda.com/d' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-phsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-phsts.txt /Volumes/Rayyan/Pi/Github/SB-s/phsts.txt
