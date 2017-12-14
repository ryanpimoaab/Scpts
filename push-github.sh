timestamp=$(echo `date`)
git add .
git commit -m "Edit $timestamp"
git push -u origin master
