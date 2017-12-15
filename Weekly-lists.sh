#! /bin/bash

echo -e "\033[1;31m mw-id \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/mwd-id/
for f in *.sh; do
bash "$f" -H
done

cd /Users/rayyan/Github/mwd-id
[ -s hsts.txt ] || /Users/rayyan/Github/Scrpts/Scripts/mwd-id/hsts.sh

echo -e "\033[1;31m SB \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/SB/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m Weekly \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/weekly/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m h-f-ad \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-ad/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m h-f-emd \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-emd
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m h-f-psh \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-psh
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m h-f-fsa \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-fsa
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m nope \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/nope
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m sycl-cmln \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/sycl-cmln
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m Prgnt-psh \033[0m"

cd /Users/rayyan/Github/Scrpts/Scripts/Prgnt-psh
for f in *.sh; do
bash "$f" -H
done
