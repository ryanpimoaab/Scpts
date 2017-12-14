#! /bin/bash

curl -s https://raw.githubusercontent.com/quidsup/notrack/master/malicious-sites.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/ntrck-mlcs.txt

cp /Users/rayyan/Github/Scrpts/Lists/ntrck-mlcs.txt /Users/rayyan/Github/nope/ntrck-mlcs.txt
