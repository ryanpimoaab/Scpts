#! /bin/bash

curl -s https://hosts-file.net/emd.txt | sed '1,9d' | sed 's/^127.0.0.1[ \t]*//' | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/h-f-emd.txt

 cp /Users/rayyan/Github/Scrpts/Lists/h-f-emd.txt /Users/rayyan/Github/h-f-emd/emd.txt
