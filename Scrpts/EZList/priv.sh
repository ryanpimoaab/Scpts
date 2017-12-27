#! /bin/bash
curl -s https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_trackingservers.txt | sed 's/^||//' | cut -d'^' -f-1 | sed 's#^! Mining##' | sed 's#^.space##' | sed 's#^://api.*/lib/native.wasm$third-party##' | sed 's#^,websocket##' | sed 's#^! Admiral##' | sed 's#\/.*##' | sed '/^$/d' | sed 's#\$.*##' > /Users/rayyan/Github/Scrpts/Lists/EZList-priv.txt

cp /Users/rayyan/Github/Scrpts/Lists/EZList-priv.txt /Users/rayyan/Github/EZlist/priv.txt
