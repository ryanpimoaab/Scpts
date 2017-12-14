#! /bin/bash

curl -s https://hosts-file.net/psh.txt | sed '1,13d' | sed 's/^127.0.0.1[ \t]*//' | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/h-f-psh.txt

cp /Users/rayyan/Github/Scrpts/Lists/h-f-psh.txt /Users/rayyan/Github/h-f-psh/psh.txt
