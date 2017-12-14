#! /bin/bash
# Remove www. , sort, and remove duplicates
sed 's#^www.##' /Users/rayyan/Github/Scrpts/Whitelist/whitelist-dup.txt | sort | awk '!seen[$0]++' > /Users/rayyan/Github/Scrpts/Whitelist/whitelist.txt

# Add www. to 2nd list
awk '$0="www."$0' /Users/rayyan/Github/Scrpts/Whitelist/whitelist.txt > /Users/rayyan/Github/Scrpts/Whitelist/whitelist-with-www.txt

# Combine two lists into one
cat /Users/rayyan/Github/Scrpts/Whitelist/whitelist.txt /Users/rayyan/Github/Scrpts/Whitelist/whitelist-with-www.txt > /Users/rayyan/Github/Scrpts/Whitelist/My-whitelist.txt

cp /Users/rayyan/Github/Scrpts/Whitelist/My-whitelist.txt /Users/rayyan/Github/mylists/whitelist.txt
