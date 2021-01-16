#!/usr/bin/fish

set WIKI_SERVER_USER marvin-elsen.de
set WIKI_SERVER_ADDRESS ssh.strato.de
set WIKI_SERVER_DIRECTORY /mnt/web009/d3/76/57512676/htdocs/
set WIKI_GPG_KEY_ID 4C94573FFD8EFDD8

function echo_success
    echo -e "\e[1;32mSUCCESS:\e[0m $argv"
end

function echo_fail
    echo -e "\e[1;31mFAIL:\e[0m $argv"
end

echo 'Optimizing JPEG images...'
jpegoptim -ptsq (ls -d docs/assets/images/* | string match -er '.jpg|.jpeg|.JPG|.JPEG')
and echo_success 'Optimizing JPEG images'
or echo_fail 'Optimizing JPEG images'

echo 'Optimizing PNG images...'
optipng -strip all -preserve -quiet (ls -d docs/assets/images/* | string match -er '.png|.PNG')
and echo_success 'Optimizing PNG images'
or echo_fail 'Optimizing PNG images'

echo 'Adding changes to git...'
git add .
and echo_success 'Adding changes to git'
or echo_fail 'Adding changes to git'

echo 'Committing changes to git...'
git commit --quiet --gpg-sign=$WIKI_GPG_KEY -m $argv[1] 
and echo_success 'Committing changes to git'
or echo_fail 'Committing changes to git'

echo 'Pushing changes to GitHub...'
git push --quiet
and echo_success 'Pushing changes to GitHub'
or echo_fail 'Pushing changes to GitHub'

echo 'Building website...'
. .venv/bin/activate.fish
mkdocs build --quiet
deactivate
and echo_success 'Building website'
or echo_fail 'Building website'

echo 'Uploading website...'
sshpass -f ~/.ssh/wiki rsync -aq --no-perms --omit-dir-times site/ .htaccess "$WIKI_USER"@"$WIKI_SERVER":"$WIKI_SERVER_DIRECTORY"
and echo_success 'Uploading website'
or echo_fail 'Uploading website'
