#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | sed 's/^0.0.0.0[ \t]*//' | sed '1,67d' | sed '/piratecams.com/d' | sed '/connect.facebook.net/d' | sed '/myfreecams.com/d' | sed '/mydirtystuff.com/d' | sed '/camsoda.com/d' | sed '/motherless.com/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-hsts.txt /Volumes/Rayyan/Pi/Github/SB/SB-hsts.txt
