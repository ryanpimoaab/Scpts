#! /bin/bash

curl -s https://raw.githubusercontent.com/ZeroDot1/CoinBlockerLists/master/list_browser.txt | sed '/coinbase/d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/0.1-c0lnbl_b.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/0.1-c0lnbl_b.txt /Volumes/Rayyan/Pi/Github/c0ln/0.1-c0lnbl_b.txt
