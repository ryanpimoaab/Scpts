#! /bin/bash

curl -s https://raw.githubusercontent.com/greatis/Anti-WebMiner/master/blacklist.txt | sed 's/^||//' | sed 1,3d | cut -d'^' -f-1 | awk '!x[$0]++' | sed '/yourporn.sexy/d' | sort | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/grts-wm.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/grts-wm.txt /Volumes/Rayyan/Pi/Github/c0ln/grts-wm.txt
