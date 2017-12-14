#! /bin/bash

curl -s https://hosts-file.net/mmt.txt | sed '1,9d' | sed 's/^127.0.0.1//' | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' | sed '/chaturbate.com/d' > /Users/rayyan/Github/Scrpts/Lists/h-f-mmt.txt

 cp /Users/rayyan/Github/Scrpts/Lists/h-f-mmt.txt /Users/rayyan/Github/h-f/mmt.txt
