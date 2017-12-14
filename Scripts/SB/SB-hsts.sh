#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | sed 's/^0.0.0.0[ \t]*//' | sed '1,67d' | sed '/piratecams.com/d' | sed '/myfreecams.com/d' | sed '/mydirtystuff.com/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/SB-hsts.txt

cp /Users/rayyan/Github/Scrpts/Lists/SB-hsts.txt /Users/rayyan/Github/SB/SB-hsts.txt
