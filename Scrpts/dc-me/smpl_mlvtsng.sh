#! /bin/bash

curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt | sed '1,4d' | awk '!x[$0]++' | sort | awk '{print tolower($0)}' | sed 's/^\s\+[ \t]//g; s/\s\+[ \t]$//g; /^\s*$/d; / /d' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dc-me-smpl_mlvtsng.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dc-me-smpl_mlvtsng.txt /Volumes/Rayyan/Pi/Github/dc-me/smpl_mlvtsng.txt
