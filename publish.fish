#!/usr/bin/fish
jpegoptim -ptsv (ls -d docs/assets/images/* | string match -er '.jpg|.jpeg|.JPG|.JPEG')
optipng (ls -d docs/assets/images/* | string match -er '.png|.PNG')
git add .
git commit --gpg-sign="$WIKI_GPG_KEY" -m $argv[1] 
git push
. .venv/bin/activate.fish
mkdocs build
deactivate
sshpass -f ~/.ssh/wiki rsync -aq --no-perms --omit-dir-times site/ "$WIKI_USER"@"$WIKI_SERVER":/mnt/web009/d3/76/57512676/htdocs/
