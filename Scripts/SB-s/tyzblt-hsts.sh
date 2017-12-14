#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/data/tyzbit/hosts | sed 's/^127.0.0.1[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/tyzblt-hsts.txt

cp /Users/rayyan/Github/Scrpts/Lists/tyzblt-hsts.txt /Users/rayyan/Github/SB-s/tyzblt-hsts.txt
