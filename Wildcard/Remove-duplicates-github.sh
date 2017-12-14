# Remove duplicate lines
awk '!seen[$0]++' /Users/rayyan/Github/Scrpts/Wildcard/Wildcard-dup.txt > /Users/rayyan/Github/Scrpts/Wildcard/Wildcard.txt
