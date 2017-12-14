#! /bin/bash

curl -s https://ransomwaretracker.abuse.ch/downloads/RW_DOMBL.txt | sed '/^\#/d; s/[[:space:]]\#.*$//g; /^\!/d; s/[[:space:]]\!.*$//g; /^\./d; /\.$/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/rw-l.txt

cp /Users/rayyan/Github/Scrpts/Lists/rw-l.txt /Users/rayyan/Github/smaller-lists/rw-l.txt
