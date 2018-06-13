#! /bin/bash

curl -s http://sysctl.org/cameleon/hosts | sed '1,2d' | sed 's/^127.0.0.1[ \t]*//' | awk '{$1=$1}1' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/sycl-cmln_hsts.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/sycl-cmln_hsts.txt /Volumes/Rayyan/Pi/Github/sycl-cmln/hsts.txt
