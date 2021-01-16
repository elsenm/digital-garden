#!/usr/bin/fish
echo 'Optimizing JPEG images...'
jpegoptim -ptsq (ls -d docs/assets/images/* | string match -er '.jpg|.jpeg|.JPG|.JPEG')
echo 'Optimizing PNG images...'
optipng -strip all -preserve -o7 -quiet (ls -d docs/assets/images/* | string match -er '.png|.PNG')
echo 'Adding changes to git...'
git add .
echo 'Committing changes to git...'
git commit --quiet --gpg-sign="$WIKI_GPG_KEY" -m $argv[1] 
echo 'Pushing changes to GitHub...'
git push --quiet
echo 'Building website...'
. .venv/bin/activate.fish
mkdocs build --quiet
deactivate
echo 'Uploading website...'
sshpass -f ~/.ssh/wiki rsync -aq --no-perms --omit-dir-times site/ "$WIKI_USER"@"$WIKI_SERVER":/mnt/web009/d3/76/57512676/htdocs/
