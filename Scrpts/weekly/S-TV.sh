#! /bin/bash

curl -s https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/S-TV.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/S-TV.txt /Volumes/Rayyan/Pi/Github/weekly/S-TV.txt
