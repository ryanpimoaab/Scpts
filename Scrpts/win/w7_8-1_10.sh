#! /bin/bash

curl -s https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/win7/spy.txt https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/win81/spy.txt https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/win10/spy.txt | sed 's/^0.0.0.0[ \t]*//' | sed 1,3d |  cut -d'^' -f-1 | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/w7_8-1_10.txt

cp /Users/rayyan/Github/Scrpts/Lists/w7_8-1_10.txt /Users/rayyan/Github/win/w7_8-1_10.txt
