#! /bin/bash

curl -s https://dshield.org/feeds/suspiciousdomains_High.txt https://dshield.org/feeds/suspiciousdomains_Medium.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dshd-HM.txt

awk '!/.at$|.bid$|.cn$|.kim$|.li$|.link$|.pw$|.review$|.ro$|.ru$|.su$|.tk$|.top$|.ua$|.us$|.ve$|.work$|.ch$|.lol$|.v$|.w$|.loan$|.click$|.xyz$|^#|^Site$/ {print}' /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dshd-HM.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dshd-HM.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/dshd-HM.txt /Volumes/Rayyan/Pi/Github/dshd/dshd-HM.txt
