#! /bin/bash

cd /Users/rayyan/Github/mwd-id
[ -s hsts.txt ] || /Users/rayyan/Github/Scrpts/Scripts/mwd-id/hsts.sh

echo -e "\033[1;31m AgD \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/AgD/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m c0ln \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/c0ln/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m h-f \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/h-f/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m dc-me \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/dc-me/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m rw-list \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/rw-list/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m SB-s \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/SB-s/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m smaller-lists \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/smaller-lists_frequent/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m uB-Ag \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/uB-Ag/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m win \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/win/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m EZList \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/EZList
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m Prgnt \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/Prgnt
for f in *.sh; do
bash "$f" -H
done
