#! /bin/bash

curl -s https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt | sed 's/^0.0.0.0[ \t]*//' | sed 1,3d |  cut -d'^' -f-1 | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/w7_8-1_10.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/w7_8-1_10.txt /Volumes/Rayyan/Pi/Github/win/w7_8-1_10.txt
