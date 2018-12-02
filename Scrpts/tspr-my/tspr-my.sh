#! /bin/bash

curl -s https://tspprs.com/dl/crypto https://tspprs.com/dl/ransomware https://tspprs.com/dl/spam > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-c-rw-spm.txt

awk '!/.at$|.bid$|.cn$|.kim$|.li$|.link$|.pw$|.review$|.ro$|.ru$|.su$|.tk$|.top$|.ua$|.ve$|.work$|.ch$|.lol$|.v$|.w$|.loan$|.click$/ {print}' /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-c-rw-spm.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-c-rw-spm.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/tspr-c-rw-spm.txt /Volumes/Rayyan/Pi/Github/tspr-my/tspr-c-rw-spm.txt
