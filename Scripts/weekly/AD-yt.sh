#! /bin/bash

curl -s https://raw.githubusercontent.com/anudeepND/youtubeadsblacklist/master/hosts.txt | sed 's/^0.0.0.0[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/AD-yt.txt

cp /Users/rayyan/Github/Scrpts/Lists/AD-yt.txt /Users/rayyan/Github/weekly/AD-yt.txt
