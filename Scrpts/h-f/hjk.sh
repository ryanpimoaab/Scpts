#! /bin/bash

curl -s https://hosts-file.net/hjk.txt | sed '1,9d' | sed 's/^127.0.0.1//' | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/h-f-hjk.txt

 cp /Users/rayyan/Github/Scrpts/Lists/h-f-hjk.txt /Users/rayyan/Github/h-f/hjk.txt
