#!/bin/bash
# A Song Piracy Script 1.0.1

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
echo -e "\e[4mPlease input the directory you want your music placed in:\e[0m"
echo -e 
	
	echo "Directory: " && read directory

echo -e
echo -e "\e[1mYour songs will be placed in\e[0m" $directory
echo -e
echo -e "\e[4mPlease paste your link to the video/playlist:\e[0m"
echo -e

	echo "Link: " && read link

echo -e
echo -e "\e[4mDo you want to download a Playlist? [yes/no] (no is just individual songs)\e[0m"
echo -e

	read answermode
cd ~
echo -e 
echo -e "\e[1mStarting download please wait up to 5 minutes......\e[0m"
echo -e 

	if [ "$answermode" = "yes" ]
		then
		echo -e
		function getsong() {
    			cd $directory && youtube-dl -f bestaudio -x --audio-quality 4 --audio-format mp3 --add-metadata --newline --no-warnings --skip-unavailable-fragments -i $link | grep 'download'
		}
		for i in {1..1000}; do getsong && break || sleep 15; done
		echo -e
		else
		echo -e
		function getplaylist() {
    cd $directory && youtube-dl -f bestaudio -x --audio-quality 4 --audio-format mp3 --add-metadata --newline --no-warnings --skip-unavailable-fragments -i $link | grep 'download'
		}
    		for i in {1..1000}; do getplaylist && break || sleep 15; done 
    		echo -e
	fi

echo -e "The script has finished exiting........."
echo -e
exit
