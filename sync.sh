#!/bin/zsh
cd "$(dirname "$0")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" -av . ~
}
if [ "$1" = "--force" -o "$1" = "-f" ]; then
	doIt
else
	echo -n "This may overwrite existing files in your home directory. Are you sure? (y/n) "
	read -n 1 response 
	if [[ $response =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.zsh_profile