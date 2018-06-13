#! /bin/bash
curl -s https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_trackingservers.txt | sed 's/^||//' | cut -d'^' -f-1 | sed 's#^! Mining##' | sed 's#^.space##' | sed 's#^://api.*/lib/native.wasm$third-party##' | sed 's#^,websocket##' | sed 's#^! Admiral##' | sed 's#\/.*##' | sed '/^$/d' | sed 's#\$.*##' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/EZList-priv.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/EZList-priv.txt /Volumes/Rayyan/Pi/Github/EZlist/priv.txt
