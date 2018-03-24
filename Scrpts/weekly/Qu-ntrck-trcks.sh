#! /bin/bash

curl -s https://raw.githubusercontent.com/quidsup/notrack/master/trackers.txt | sed 's/^||//' | sed '/^\#/d; s/[[:space:]]\#.*$//g; /^\!/d; s/[[:space:]]\!.*$//g; /^\./d; /\.$/d' | cut -d'^' -f-1 | awk '!x[$0]++' | awk '{print tolower($0)}' | awk '!/imgclick.net/' > /Users/rayyan/Github/Scrpts/Lists/Qu-ntrck-trcks.txt

cp /Users/rayyan/Github/Scrpts/Lists/Qu-ntrck-trcks.txt /Users/rayyan/Github/weekly/Qu-ntrck-trcks.txt
