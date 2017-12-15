#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/data/StevenBlack/hosts | sed '1,3d' | sed 's/^127.0.0.1[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/SB-phsts.txt

cp /Users/rayyan/Github/Scrpts/Lists/SB-phsts.txt /Users/rayyan/Github/SB-s/phsts.txt
