#! /bin/bash

curl -s https://hosts-file.net/pup.txt | sed '1,9d' | sed 's/^127.0.0.1//' | sed '/home.bt.com/d' | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/h-f-pup.txt

 cp /Users/rayyan/Github/Scrpts/Lists/h-f-pup.txt /Users/rayyan/Github/h-f/pup.txt
