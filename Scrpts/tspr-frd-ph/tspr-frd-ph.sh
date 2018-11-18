#! /bin/bash

curl -s https://tspprs.com/dl/fraud https://tspprs.com/dl/phishing | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' | awk '/apple/ || /google/ || /playstation/ || /samsung/ || /microsoft/ || /halifax/ || /hsbc/ || /barclay/ || /natwest/ || /santander/ || /lloyds/ || /netflix/ || /tube/ || /reddit/ || /payp/ || /ebay/ || /itunes/ || /cloud/ || /cloud/ || /crypt/ || /whatsap/ || /mail/ || /psn/ || /xbox/ || /mac/ || /ios/ || /chrome/ || /firefox/ || /safari/ || /droid/ || /spotify/ || /amazon/ || /twitch/ || /phone/ || /flash/ || /adobe/ || /porn/ || /linux/ || /coin/ || /bitt/ || /bank/ || /verify/ || /log/ || /facebook/ || /insta/ || /twitter/ || /snapchat/ || /outlook/ || /office/ || /hub/ || /down/ || /dl/ || /update/{print}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-frd-ph.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-frd-ph.txt /Volumes/Rayyan/Pi/Github/tspr-frd-ph/tspr-frd-ph.txt
