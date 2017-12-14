#! /bin/bash
curl -s https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers.txt | sed 's/^||//' | cut -d'^' -f-1 | sort | sed 's#\!.*##' | sed '/^$/d' | sed 's#\/.*##' | sed 's#\$.*##' > /Users/rayyan/Github/Scrpts/Lists/EZList-adsrv.txt

cp /Users/rayyan/Github/Scrpts/Lists/EZList-adsrv.txt /Users/rayyan/Github/EZList/adsrv.txt
