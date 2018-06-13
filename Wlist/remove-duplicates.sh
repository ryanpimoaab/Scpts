#! /bin/bash
# Remove www. , sort, and remove duplicates
sed 's#^www.##' /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/Wlist-dup.txt | sort | awk '!seen[$0]++' > /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/Wlist.txt

# Add www. to 2nd list
awk '$0="www."$0' /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/Wlist.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/Wlist-with-www.txt

# Combine two lists into one
cat /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/Wlist.txt /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/Wlist-with-www.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/My-Wlist.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Wlist/My-Wlist.txt /Volumes/Rayyan/Pi/Github/mylists/Wlist.txt
