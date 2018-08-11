# Remove duplicate lines
awk '!seen[$0]++' /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcard-dup.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcard.txt

# Add phrase to a beginning of a line
awk '$0="address=/"$0' /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcard.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcard-address.txt

# Add phrase end of line
awk '{print $0"/192.168.1.80"}' /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcard-address.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcardpi1.txt
awk '{print $0"/192.168.1.79"}' /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcard-address.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcardpi0w2.txt

# Copy list to github repo
cp /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcardpi1.txt /Volumes/Rayyan/Pi/Github/mylists/Old/pi1-Wcard.txt
cp /Volumes/Rayyan/Pi/Github/Scrpts/Wcard/Wcardpi0w2.txt /Volumes/Rayyan/Pi/Github/mylists/Old/pi02-Wcard.txt
