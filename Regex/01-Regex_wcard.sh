#!/bin/bash
# Regex and wildcard list

###########################
## Format own Wcard list ##
###########################

## Sort list alphabetically and remove duplicates

awk '!x[$0]++' < /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Wcard-dup.txt > /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt

## Sort alphabetically

sort /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt

## Replace '.' with '\.' from domains

sed 's/\./\\./g' <  /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt

## Prepend list with '(^|\.)' . Note - Adding extra \ otherwise it wouldn't show

awk '{ print "(^|\\.)"$0"$"}' < /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt

## Add seperators from rest of list

awk 'BEGIN{print "####### Own WCard list ########"}; {print}; END{print "####### End of own list #######"}' /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt

###########################
## Format own regex list ##
###########################

## Add seperators from rest of list

awk 'BEGIN{print "###### Own regex list #########"}; {print}; END{print "#### End of Own regex list ####"}' /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Own-List.txt > tmp && cat /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard.txt tmp > /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard_regex.txt

#########################
## Add MMti regex list ##
#########################

# Copy List

curl -s https://raw.githubusercontent.com/mmotti/pihole-regex/master/regex.list > /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/mmti-rgx.txt

# Prepend and append with message

awk 'BEGIN{print "####### Mmti regex list #######"}; {print}; END{print "###### End of MMti list #######"}' /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/mmti-rgx.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/mmti-rgx.txt

###############################
## Add MMti to complete list ##
###############################

cat /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/Wcard_regex.txt /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Clean/mmti-rgx.txt > tmp && mv tmp /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Regex-complete.txt

# Copy complete list to github repo

cp /Volumes/Rayyan/Pi/Github/Scrpts/Regex/Regex-complete.txt /Volumes/Rayyan/Pi/Github/mylists/Regex.txt
