#! /bin/bash
curl -s https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers_popup.txt | sed 's/^||//' | cut -d'^' -f-1 | sort | sed 's#\/.*##' | sed 's#\$.*##'  > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/EZList-adsrv_pup.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/EZList-adsrv_pup.txt /Volumes/Rayyan/Pi/Github/EZList/pup.txt
