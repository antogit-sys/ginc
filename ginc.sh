#!/bin/bash

source "lib/color/color.sh"

logo(){
	#clear
	printf "$LGREEN
	 ██████╗ ██╗███╗   ██╗ ██████╗
	██╔════╝ ██║████╗  ██║██╔════╝
	██║  ███╗██║██╔██╗ ██║██║
	██║   ██║██║██║╚██╗██║██║
	╚██████╔╝██║██║ ╚████║╚██████╗
	╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝
	$NC\n"
}

function main {	
	local let c=1
	while [[ $c != 0 ]]
	do
		logo
		printf "\t${GREEN}username:${NC} $(git config user.name)\t\n"
		printf "\t${GREEN}email:${NC} $(git config user.email)\n\n"
		printf "\t${RED}[${NC}1${RED}]${NC} config\n"
		printf "\t${RED}[${NC}2${RED}]${NC} download remote repository\n"
		printf "\t${RED}[${NC}3${RED}]${NC} exit\n"
		echo
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		read -p "" c
	done
	
}

main
