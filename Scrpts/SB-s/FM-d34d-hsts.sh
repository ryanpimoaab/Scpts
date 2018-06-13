#! /bin/bash

curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Dead/hosts | sed '1,4d' | sed 's/^0.0.0.0[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/FM-d34d-hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/FM-d34d-hsts.txt /Volumes/Rayyan/Pi/Github/SB-s/FM-d34d-hsts.txt
