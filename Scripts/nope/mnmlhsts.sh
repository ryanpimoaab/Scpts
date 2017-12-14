#! /bin/bash

curl -s https://reddestdream.github.io/Projects/MinimalHosts/etc/MinimalHostsBlocker/minimalhosts | sed '1,5d' | sed 's/^:: //' | sed 's/^0 //' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/mnmlhsts.txt

cp /Users/rayyan/Github/Scrpts/Lists/mnmlhsts.txt /Users/rayyan/Github/nope/mnmlhsts.txt
