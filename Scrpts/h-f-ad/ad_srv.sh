#! /bin/bash

curl -s https://hosts-file.net/ad_servers.txt | sed '1,10d' | sed 's/^127.0.0.1//' | awk '{$1=$1}1' |  awk '!/cex.io/'| awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/h-f-ad_srv.txt

 cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/h-f-ad_srv.txt /Volumes/Rayyan/Pi/Github/h-f-ad/ad_srv.txt
