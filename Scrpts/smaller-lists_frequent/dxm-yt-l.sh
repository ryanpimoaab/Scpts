#! /bin/bash

curl -s https://pastebin.com/raw/yuGgBxSh | awk '!x[$0]++' | awk '!/code.jquery.com/' | awk '{print tolower($0)}' | sed 's#^https://www.googleadservices.com#googladservices.com#' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dxm-yt-l.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dxm-yt-l.txt /Volumes/Rayyan/Pi/Github/smaller-lists/dxm-yt-l.txt
