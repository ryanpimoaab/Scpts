# Remove duplicate lines
awk '!seen[$0]++' /Users/rayyan/Github/Scrpts/Wcard/Wcard-dup.txt > /Users/rayyan/Github/Scrpts/Wcard/Wcard.txt

# Add phrase to a beginning of a line
awk '$0="address=/"$0' /Users/rayyan/Github/Scrpts/Wcard/Wcard.txt > /Users/rayyan/Github/Scrpts/Wcard/Wcard-address.txt

# Add phrase end of line
awk '{print $0"/192.168.1.80"}' /Users/rayyan/Github/Scrpts/Wcard/Wcard-address.txt > /Users/rayyan/Github/Scrpts/Wcard/Wcardpi1.txt
awk '{print $0"/192.168.1.79"}' /Users/rayyan/Github/Scrpts/Wcard/Wcard-address.txt > /Users/rayyan/Github/Scrpts/Wcard/Wcardpi0w2.txt

# Copy list to github repo
cp /Users/rayyan/Github/Scrpts/Wcard/Wcardpi1.txt /Users/rayyan/Github/mylists/pi1-Wcard.txt
cp /Users/rayyan/Github/Scrpts/Wcard/Wcardpi0w2.txt /Users/rayyan/Github/mylists/pi02-Wcard.txt
