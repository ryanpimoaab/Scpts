#! /bin/bash

curl -s https://raw.githubusercontent.com/anudeepND/blacklist/master/CoinMiner.txt | sed 's/^0.0.0.0[ \t]*//' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/AD-CM.txt

cp /Users/rayyan/Github/Scrpts/Lists/AD-CM.txt /Users/rayyan/Github/c0ln/AD-CM.txt
