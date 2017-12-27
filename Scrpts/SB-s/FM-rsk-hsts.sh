#! /bin/bash

curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts | sed 's/^0.0.0.0[ \t]*//' | sed '1,4d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/FM-rsk-hsts.txt

cp /Users/rayyan/Github/Scrpts/Lists/FM-rsk-hsts.txt /Users/rayyan/Github/SB-s/FM-rsk-hsts.txt
