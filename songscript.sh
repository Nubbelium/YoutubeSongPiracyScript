#!/bin/bash
# A Song Piracy Script

#	      Jyrell Go
#              3/12/20
#	
#Pirates youtube songs and playlists


echo -e
echo -e "--------------------You are running the Youtube Song \e[5m\e[31m\e[1;4mPiracy\e[0m Script---------------------"
echo -e
echo -e "         Please do not share as this code, it is completely for personal use"
echo -e
echo -e "---------------------------------------------------------------------------------------"
echo -e
echo -e "Please input the directory you want your music placed in:"
echo -e 
	
	read directory

echo -e
echo -e "Your songs will be placed in" $directory
echo -e
echo -e "Please paste your link to the video/playlist:"
echo -e

	read link

echo -e
echo -e "Do you want to download a Playlist? [yes/no] (no is just individual songs)"
echo -e

	read answermode

echo -e 
echo -e "Starting download please wait up to 5 minutes......"
echo -e 

	if [ "$answermode" = "yes" ]
		then
		echo -e
    cd $directory && youtube-dl -x --audio-format mp3 --yes-playlist --embed-thumbnail --embed-subs --add-metadata $link | grep 'download'
		echo -e
		else
		echo -e
    cd $directory && youtube-dl -x --audio-format mp3 --no-playlist --embed-thumbnail --embed-subs --add-metadata $link | grep 'download'
		echo -e
	fi

echo -e "The script has finished exiting........."
echo -e
exit
