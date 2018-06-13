# Copy list exactly as is

#! /bin/bash

curl -s https://gist.githubusercontent.com/anudeepND/adac7982307fec6ee23605e281a57f1a/raw/5b8582b906a9497624c3f3187a49ebc23a9cf2fb/Test.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-yt-test.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/AD-yt-test.txt /Volumes/Rayyan/Pi/Github/smaller-lists/AD-yt-test.txt
