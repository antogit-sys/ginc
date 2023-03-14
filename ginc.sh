#!/bin/bash

source "lib/color/color.sh"
source "lib/app/config.sh"
source "lib/app/download.sh"

logo(){
	clear
	printf "$LGREEN
	 ██████╗ ██╗███╗   ██╗ ██████╗
	██╔════╝ ██║████╗  ██║██╔════╝
	██║  ███╗██║██╔██╗ ██║██║
	██║   ██║██║██║╚██╗██║██║
	╚██████╔╝██║██║ ╚████║╚██████╗
	╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝
	$NC\n"
}

messageBox(){
	dialog --msgbox "this tool is covered by the gpl3 license\n
	\ngithub: antogit-sys
	\nemail: antonio.perrucci.lavoro@gmail.com" 10 50
}

function main {	
	local c=""
	messageBox
	while [[ $c != "0" ]]
	do
		logo
		USRNAME=$(git config user.name)
		USREMAIL=$(git config user.email)
		printf "\t${GREEN}username:${NC} ${USRNAME}\t\n"
		printf "\t${GREEN}email:${NC} ${USREMAIL}\n\n"
		printf "\t${RED}[${NC}1${RED}]${NC} config\n"
		printf "\t${RED}[${NC}2${RED}]${NC} download remote repository\n"
		printf "\t${RED}[${NC}3${RED}]${NC} exit\n"
		echo
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		read c
		if [[ $c == "1" ]] 
		then
			config
		elif [[ $c == "2" ]]
		then
			dl-repo
		elif [[ $c == "3" ]]
		then
			echo
		fi
	done
	
}

main
