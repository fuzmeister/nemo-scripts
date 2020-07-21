#!/bin/bash
function cover_art() {

	local fgblk="${rst}$(tput setaf 0)" # Black - Regular
	local fgred="${rst}$(tput setaf 1)" # Red
	local fggrn="${rst}$(tput setaf 2)" # Green
	local fgylw="${rst}$(tput setaf 3)" # Yellow
	local fgblu="${rst}$(tput setaf 4)" # Blue
	local fgpur="${rst}$(tput setaf 5)" # Purple
	local fgcyn="${rst}$(tput setaf 6)" # Cyan
	local fgwht="${rst}$(tput setaf 7)" # White

	echo "${fgwht}Removing any existing cover art from files..."
	echo ""

	if [ -z "$1" ]
	then

		# If no parameters were provided, apply the first .jpg file in the current directory to all mp3 files in that directory.

		for file in ./*.jpg; do
			echo "${fgwht}Adding ${fgcyn}$file ${fgwht}as cover art..."	
			for a in ./*.mp3; do
				eyeD3 -l 'error' --remove-all-images "$a" > /dev/null ;
				eyeD3 -l 'error' --add-image="$file":FRONT_COVER ./"$a" > /dev/null ;
			done

			break 1;
		done

	else
		notify-send "Removing any existing cover art from MP3 files..."
		find "$1" -type f -name "*.mp3" -execdir eyeD3 -l 'error' --remove-all-images {} > /dev/null \;

		if [ -z "$2" ]
		then
			for file in "$1"/*.jpg; do
				echo "${fgylw}Second parameter not provided."
				echo "${fgwht}Adding ${fgcyn}$file ${fgwht}as cover art..."	

				find "$1" -type f -name "*.mp3" -execdir eyeD3 -l 'error' --add-image="$file":FRONT_COVER {} > /dev/null \;		
				break 1;
			done
		else
			echo "${fgwht}Adding ${fgcyn}$2 ${fgwht}as cover art..."
			notify-send "Adding '$2' as cover art..."
			find "$1" -type f -name "*.mp3" -execdir eyeD3 -l 'error' --add-image="$2":FRONT_COVER {} >/dev/null \;
			notify-send "Front cover art set for MP3 files in '$1'."
		fi

	fi

	echo ""
	echo "${fggrn}All done!"
}

cover_art "$1" "$2"
