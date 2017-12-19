#! /bin/bash

curl -s https://raw.githubusercontent.com/ZeroDot1/CoinBlockerLists/master/list.txt | sed '/poloniex.com/d' | sed '/coinbase/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/0.1-c0lnbl-l.txt

cp /Users/rayyan/Github/Scrpts/Lists/0.1-c0lnbl-l.txt /Users/rayyan/Github/c0ln/0.1-c0lnbl-l.txt
