#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/data/tyzbit/hosts | sed 's/^127.0.0.1[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tyzblt-hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tyzblt-hsts.txt /Volumes/Rayyan/Pi/Github/SB-s/tyzblt-hsts.txt
