#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/data/add.2o7Net/hosts | sed '1,6d' | sed 's/^0.0.0.0[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/2o7N3t-hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/2o7N3t-hsts.txt /Volumes/Rayyan/Pi/Github/SB-s/2o7N3t-hsts.txt
