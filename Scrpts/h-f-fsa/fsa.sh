#! /bin/bash

curl -s https://hosts-file.net/fsa.txt | sed '1,9d' | sed 's/^127.0.0.1//' | awk '{$1=$1}1' | sed '/fullmatchesandshows.com/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/h-f-fsa.txt

 cp /Users/rayyan/Github/Scrpts/Lists/h-f-fsa.txt /Users/rayyan/Github/h-f-fsa/fsa.txt
