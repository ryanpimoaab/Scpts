#! /bin/bash

curl -s https://raw.githubusercontent.com/quidsup/notrack/master/malicious-sites.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/ntrck-mlcs.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/ntrck-mlcs.txt /Volumes/Rayyan/Pi/Github/nope/ntrck-mlcs.txt
