#! /bin/bash
curl -s https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers_popup.txt | sed 's/^||//' | cut -d'^' -f-1 | sort | sed 's#\/.*##' | sed 's#\$.*##'  > /Users/rayyan/Github/Scrpts/Lists/EZList-adsrv_pup.txt

cp /Users/rayyan/Github/Scrpts/Lists/EZList-adsrv_pup.txt /Users/rayyan/Github/EZList/pup.txt
