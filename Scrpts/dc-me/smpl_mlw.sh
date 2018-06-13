#! /bin/bash

curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_malware.txt | sed '1,4d' | awk '!x[$0]++' | sort | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dc-me-smpl_mlw.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dc-me-smpl_mlw.txt /Volumes/Rayyan/Pi/Github/dc-me/smpl_mlw.txt
