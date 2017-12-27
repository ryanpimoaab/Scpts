#! /bin/bash
# Remove www. , sort, and remove duplicates
sed 's#^www.##' /Users/rayyan/Github/Scrpts/Wlist/Wlist-dup.txt | sort | awk '!seen[$0]++' > /Users/rayyan/Github/Scrpts/Wlist/Wlist.txt

# Add www. to 2nd list
awk '$0="www."$0' /Users/rayyan/Github/Scrpts/Wlist/Wlist.txt > /Users/rayyan/Github/Scrpts/Wlist/Wlist-with-www.txt

# Combine two lists into one
cat /Users/rayyan/Github/Scrpts/Wlist/Wlist.txt /Users/rayyan/Github/Scrpts/Wlist/Wlist-with-www.txt > /Users/rayyan/Github/Scrpts/Wlist/My-Wlist.txt

cp /Users/rayyan/Github/Scrpts/Wlist/My-Wlist.txt /Users/rayyan/Github/mylists/Wlist.txt
