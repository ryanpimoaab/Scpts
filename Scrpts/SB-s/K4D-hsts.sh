#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/data/KADhosts/hosts | sed '1,12d' | sed 's/^0.0.0.0[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-s-K4D-hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-s-K4D-hsts.txt /Volumes/Rayyan/Pi/Github/SB-s/K4D-hsts.txt
