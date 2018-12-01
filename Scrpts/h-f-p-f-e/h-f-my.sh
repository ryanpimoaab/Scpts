#! /bin/bash

curl -s https://hosts-file.net/psh.txt https://hosts-file.net/fsa.txt https://hosts-file.net/emd.txt https://hosts-file.net/pup.txt | sed 's/^127.0.0.1[ \t]*//' | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' | awk '/apple/ || /google/ || /playstation/ || /samsung/ || /microsoft/ || /halifax/ || /hsbc/ || /barclay/ || /natwest/ || /netflix/ || /reddit/ || /payp/ || /ebay/ || /itunes/ || /cloud/ || /crypt/ || /whatsap/ || /psn/ || /mac/ || /ios/ || /chrome/ || /safari/ || /droid/ || /amazon/ || /twitch/ || /flash/ || /adobe/ || /linux/ || /coin/ || /bitt/ || /bank/ || /facebook/ || /insta/ || /twitter/ || /snapchat/ || /down/ || /update/{print}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/h-f-psh-fsa-emd-pup.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/h-f-psh-fsa-emd-pup.txt /Volumes/Rayyan/Pi/Github/h-f-p-f-e/h-f-my.txt
