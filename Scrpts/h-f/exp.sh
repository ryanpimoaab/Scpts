#! /bin/bash

curl -s https://hosts-file.net/exp.txt | sed '1,9d' | sed 's/^127.0.0.1//' | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/h-f-exp.txt

 cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/h-f-exp.txt /Volumes/Rayyan/Pi/Github/h-f/exp.txt
