#! /bin/bash

curl -s https://pastebin.com/raw/yuGgBxSh | awk '!x[$0]++' | awk '{print tolower($0)}' | sed 's#^https://www.googleadservices.com#googladservices.com#' > /Users/rayyan/Github/Scrpts/Lists/dxm-yt-l.txt

cp /Users/rayyan/Github/Scrpts/Lists/dxm-yt-l.txt /Users/rayyan/Github/smaller-lists/dxm-yt-l.txt
