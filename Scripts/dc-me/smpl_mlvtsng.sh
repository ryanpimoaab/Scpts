#! /bin/bash

curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt | sed '1,4d' | awk '!x[$0]++' | sort | awk '{print tolower($0)}' | sed 's/^\s\+[ \t]//g; s/\s\+[ \t]$//g; /^\s*$/d; / /d' > /Users/rayyan/Github/Scrpts/Lists/dc-me-smpl_mlvtsng.txt

cp /Users/rayyan/Github/Scrpts/Lists/dc-me-smpl_mlvtsng.txt /Users/rayyan/Github/dc-me/smpl_mlvtsng.txt
