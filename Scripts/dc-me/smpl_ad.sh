#! /bin/bash

curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt | sed '1,4d' | awk '!x[$0]++' | sort | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/dc-me-smpl_ad.txt

cp /Users/rayyan/Github/Scrpts/Lists/dc-me-smpl_ad.txt /Users/rayyan/Github/dc-me/smpl_ad.txt
