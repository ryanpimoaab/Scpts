#! /bin/bash
curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt | sed '1,4d' | awk '!x[$0]++' | sort | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/dc-me-smpl_trckng.txt

cp /Users/rayyan/Github/Scrpts/Lists/dc-me-smpl_trckng.txt /Users/rayyan/Github/dc-me/smpl_trckng.txt
