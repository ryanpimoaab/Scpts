#! /bin/bash

curl -s https://gist.githubusercontent.com/joielechong/d0042338fd3132013aec4ee56045e558/raw/b0dc02d397be2f465e83b5e70edf658385525d0f/hosts | sed 's/^127.0.0.1[ \t]*//' | sed '/^\#/d; s/[[:space:]]\#.*$//g; /^\!/d; s/[[:space:]]\!.*$//g; /^\./d; /\.$/d' | sed '1,1d' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/skp-ads.txt

cp /Users/rayyan/Github/Scrpts/Lists/skp-ads.txt /Users/rayyan/Github/win/skp-ads.txt
