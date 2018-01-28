#! /bin/bash

curl -s https://gist.githubusercontent.com/unixfox/8e5bce4a1e4627055d098c951c94986f/raw/1d104314f31441486bdaf4867cb8b81e12b3b3d6/ealhosts.txt | awk '!x[$0]++' | awk '{print tolower($0)}' > /Users/rayyan/Github/Scrpts/Lists/et-pk-lu.txt

cp /Users/rayyan/Github/Scrpts/Lists/et-pk-lu.txt /Users/rayyan/Github/c0ln/et-pk-lu.txt
