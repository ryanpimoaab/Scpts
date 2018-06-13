#! /bin/bash

curl -s https://raw.githubusercontent.com/anudeepND/youtubeadsblacklist/master/hosts.txt | sed 's/^0.0.0.0[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-yt.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-yt.txt /Volumes/Rayyan/Pi/Github/weekly/AD-yt.txt
