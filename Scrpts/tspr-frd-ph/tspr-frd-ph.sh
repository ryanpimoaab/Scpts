#! /bin/bash

curl -s https://tspprs.com/dl/fraud https://tspprs.com/dl/phishing | awk '{$1=$1}1' | awk '!x[$0]++' | awk '{print tolower($0)}' | awk '/apple/ || /google/ || /playstation/ || /samsung/ || /microsoft/ || /halifax/ || /hsbc/ || /barclay/ || /natwest/ || /netflix/ || /reddit/ || /payp/ || /ebay/ || /itunes/ || /cloud/ || /crypt/ || /whatsap/ || /psn/ || /mac/ || /ios/ || /chrome/ || /safari/ || /droid/ || /amazon/ || /twitch/ || /flash/ || /adobe/ || /linux/ || /coin/ || /bitt/ || /bank/ || /facebook/ || /insta/ || /twitter/ || /snapchat/ || /down/ || /update/{print}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-frd-ph.txt

awk '!/.at$|.bid$|.cn$|.kim$|.li$|.link$|.pw$|.review$|.ro$|.ru$|.su$|.tk$|.top$|.ua$|.us$|.ve$|.work$|.ch$|.lol$|.v$|.w$|.loan$|.click$|.xyz$/ {print}' /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-frd-ph.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-frd-ph.txt


cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-frd-ph.txt /Volumes/Rayyan/Pi/Github/tspr-frd-ph/tspr-frd-ph.txt
