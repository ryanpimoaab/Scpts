#! /bin/bash

curl -s http://mirror1.malwaredomains.com/files/justdomains | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mwd-jd.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mwd-jd.txt /Volumes/Rayyan/Pi/Github/mwd-id/jd.txt
