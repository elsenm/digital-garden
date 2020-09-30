#!/bin/bash
git add .
git commit -S -m "$1"
git push
mkdocs build
sshpass -f ~/.ssh/wiki scp -r ./site/* "$WIKI_USER"@"$WIKI_SERVER":/
rm -r site
