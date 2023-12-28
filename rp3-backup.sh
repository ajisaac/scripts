#!/bin/zsh
#
# copy files from rp3 to macbook
#

if [ ! -d /Volumes/RP3/RetroidPocketGames/Saves ]; then
	echo "Retroid Pocket 3+ sd card not mounted, exiting"
	exit
else
	echo "\nFound Retroid Pocket 3+ sd card at /Volumes/RP3/RetroidPocketGames"
	echo "Running backup\n"
	rsync -avz --progress /Volumes/RP3/RetroidPocketGames/Saves /Users/aaron/Backups/RP3
fi

