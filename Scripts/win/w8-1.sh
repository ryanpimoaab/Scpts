#! /bin/bash

curl -s https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/win81/spy.txt | sed 's/^0.0.0.0[ \t]*//' | sed 1,3d |  cut -d'^' -f-1 | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/w8-1.txt

cp /Users/rayyan/Github/Scrpts/Lists/w8-1.txt /Users/rayyan/Github/win/w8-1.txt
