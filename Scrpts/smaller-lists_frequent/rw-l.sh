#! /bin/bash

curl -s https://ransomwaretracker.abuse.ch/downloads/RW_DOMBL.txt | sed '/^\#/d; s/[[:space:]]\#.*$//g; /^\!/d; s/[[:space:]]\!.*$//g; /^\./d; /\.$/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/rw-l.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/rw-l.txt /Volumes/Rayyan/Pi/Github/smaller-lists/rw-l.txt
