#! /bin/bash

echo mw-id

cd /Users/rayyan/Github/Scrpts/Scripts/mwd-id/
for f in *.sh; do
bash "$f" -H
done

cd /Users/rayyan/Github/mwd-id
[ -s hsts.txt ] || /Users/rayyan/Github/Scrpts/Scripts/mwd-id/hsts.sh

echo SB

cd /Users/rayyan/Github/Scrpts/Scripts/SB/
for f in *.sh; do
bash "$f" -H
done

echo weekly

cd /Users/rayyan/Github/Scrpts/Scripts/weekly/
for f in *.sh; do
bash "$f" -H
done

echo h-f-ad

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-ad/
for f in *.sh; do
bash "$f" -H
done

echo h-f-emd

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-emd
for f in *.sh; do
bash "$f" -H
done

echo h-f-psh

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-psh
for f in *.sh; do
bash "$f" -H
done

echo h-f-fsa

cd /Users/rayyan/Github/Scrpts/Scripts/h-f-fsa
for f in *.sh; do
bash "$f" -H
done

echo nope

cd /Users/rayyan/Github/Scrpts/Scripts/nope
for f in *.sh; do
bash "$f" -H
done

echo sycl-cmln

cd /Users/rayyan/Github/Scrpts/Scripts/sycl-cmln
for f in *.sh; do
bash "$f" -H
done

echo Prgnt-psh

cd /Users/rayyan/Github/Scrpts/Scripts/Prgnt-psh
for f in *.sh; do
bash "$f" -H
done
