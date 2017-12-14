#! /bin/bash

curl -s http://mirror1.malwaredomains.com/files/justdomains | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/mwd-jd.txt

cp /Users/rayyan/Github/Scrpts/Lists/mwd-jd.txt /Users/rayyan/Github/mwd-id/jd.txt
