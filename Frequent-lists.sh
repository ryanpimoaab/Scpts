#! /bin/bash

cd /Users/rayyan/Github/mwd-id
[ -s hsts.txt ] || /Users/rayyan/Github/Scrpts/Scripts/mwd-id/hsts.sh

echo AgD

cd /Users/rayyan/Github/Scrpts/Scripts/AgD/
for f in *.sh; do
bash "$f" -H
done

echo c0ln

cd /Users/rayyan/Github/Scrpts/Scripts/c0ln/
for f in *.sh; do
bash "$f" -H
done

echo h-f

cd /Users/rayyan/Github/Scrpts/Scripts/h-f/
for f in *.sh; do
bash "$f" -H
done

echo dc-me

cd /Users/rayyan/Github/Scrpts/Scripts/dc-me/
for f in *.sh; do
bash "$f" -H
done

echo rw-list

cd /Users/rayyan/Github/Scrpts/Scripts/rw-list/
for f in *.sh; do
bash "$f" -H
done

echo SB-s

cd /Users/rayyan/Github/Scrpts/Scripts/SB-s/
for f in *.sh; do
bash "$f" -H
done

echo smaller-lists

cd /Users/rayyan/Github/Scrpts/Scripts/smaller-lists_frequent/
for f in *.sh; do
bash "$f" -H
done

echo uB-Ag

cd /Users/rayyan/Github/Scrpts/Scripts/uB-Ag/
for f in *.sh; do
bash "$f" -H
done

echo win

cd /Users/rayyan/Github/Scrpts/Scripts/win/
for f in *.sh; do
bash "$f" -H
done

echo EZList

cd /Users/rayyan/Github/Scrpts/Scripts/EZList
for f in *.sh; do
bash "$f" -H
done

echo Prgnt

cd /Users/rayyan/Github/Scrpts/Scripts/Prgnt
for f in *.sh; do
bash "$f" -H
done
