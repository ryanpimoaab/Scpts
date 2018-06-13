#! /bin/bash
curl -s https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers.txt | sed 's/^||//' | cut -d'^' -f-1 | sort | sed 's#\!.*##' | sed '/^$/d' | sed 's#\/.*##' | sed 's#\$.*##' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/EZList-adsrv.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/EZList-adsrv.txt /Volumes/Rayyan/Pi/Github/EZList/adsrv.txt
