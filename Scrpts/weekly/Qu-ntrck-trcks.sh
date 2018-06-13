#! /bin/bash

curl -s https://raw.githubusercontent.com/quidsup/notrack/master/trackers.txt | sed 's/^||//' | sed '/^\#/d; s/[[:space:]]\#.*$//g; /^\!/d; s/[[:space:]]\!.*$//g; /^\./d; /\.$/d' | cut -d'^' -f-1 | awk '!x[$0]++' | awk '{print tolower($0)}' | awk '!/imgclick.net/' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Qu-ntrck-trcks.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/Qu-ntrck-trcks.txt /Volumes/Rayyan/Pi/Github/weekly/Qu-ntrck-trcks.txt
