#! /bin/bash

curl -s https://reddestdream.github.io/Projects/MinimalHosts/etc/MinimalHostsBlocker/minimalhosts | sed '1,5d' | sed 's/^:: //' | sed 's/^0 //' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mnmlhsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/mnmlhsts.txt /Volumes/Rayyan/Pi/Github/nope/mnmlhsts.txt
