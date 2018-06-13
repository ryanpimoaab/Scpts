#! /bin/bash

curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/data/add.Spam/hosts | sed '1,4d' | sed 's/^0.0.0.0[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-s-spm-hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/SB-s-spm-hsts.txt /Volumes/Rayyan/Pi/Github/SB-s/spm-hsts.txt
