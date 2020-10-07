#!/usr/bin/fish
git add .
git commit -S -m $argv[1] 
git push
mkdocs build
sshpass -f ~/.ssh/wiki rsync -aq --no-perms --omit-dir-times site/ "$WIKI_USER"@"$WIKI_SERVER":/mnt/web009/d3/76/57512676/htdocs/
