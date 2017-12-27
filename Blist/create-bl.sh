#! /bin/bash
# Remove www. , sort, and remove duplicates
sed 's#^www.##' /Users/rayyan/Github/Scrpts/Blist/bl-dup.txt | sort -u | awk '!seen[$0]++' > /Users/rayyan/Github/Scrpts/Blist/bl-no-w.txt

# Add www. to 2nd list
awk '$0="www."$0' /Users/rayyan/Github/Scrpts/Blist/bl-no-w.txt > /Users/rayyan/Github/Scrpts/Blist/bl-with-www.txt

# Combine two lists into one
cat /Users/rayyan/Github/Scrpts/Blist/bl-no-w.txt /Users/rayyan/Github/Scrpts/Blist/bl-with-www.txt > /Users/rayyan/Github/Scrpts/Blist/My-bl.txt

# Copy to github
cp /Users/rayyan/Github/Scrpts/Blist/My-bl.txt /Users/rayyan/Github/mylists/My-bl.txt
