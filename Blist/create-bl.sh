#! /bin/bash
# Remove www. , sort, and remove duplicates
sed 's#^www.##' /Volumes/Rayyan/Pi/Github/Scrpts/Blist/bl-dup.txt | sort -u | awk '!seen[$0]++' > /Volumes/Rayyan/Pi/Github/Scrpts/Blist/bl-no-w.txt

# Add www. to 2nd list
awk '$0="www."$0' /Volumes/Rayyan/Pi/Github/Scrpts/Blist/bl-no-w.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Blist/bl-with-www.txt

# Combine two lists into one
cat /Volumes/Rayyan/Pi/Github/Scrpts/Blist/bl-no-w.txt /Volumes/Rayyan/Pi/Github/Scrpts/Blist/bl-with-www.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Blist/My-bl.txt

# Copy to github
cp /Volumes/Rayyan/Pi/Github/Scrpts/Blist/My-bl.txt /Volumes/Rayyan/Pi/Github/mylists/My-bl.txt
