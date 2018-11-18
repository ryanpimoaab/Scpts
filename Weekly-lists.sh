#! /bin/bash

echo -e "\033[1;31m mw-id \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/mwd-id/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m SB \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/SB/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m Weekly \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/weekly/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m h-f-ad \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/h-f-ad/
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m nope \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/nope
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m sycl-cmln \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/sycl-cmln
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m h-f-p-f-e \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/h-f-p-f-e
for f in *.sh; do
bash "$f" -H
done

echo -e "\033[1;31m tspr-frd-ph \033[0m"

cd /Volumes/Rayyan/Pi/Github/Scrpts/Scrpts/tspr-frd-ph
for f in *.sh; do
bash "$f" -H
done

read -p "Done" -n1 junk
echo
