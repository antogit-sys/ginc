#!/bin/bash
#
# github: antogit-sys		
#							


#1. import functions file
source "/bin/fooginc/color/color.sh"
source "/bin/fooginc/app/config.sh"
source "/bin/fooginc/app/download.sh"

#2. out logo
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

function main {	
	local c="" #choice
	messageBox #call function messageBox
	
	#- exits when c == 0 and c==3
	while [[ $c != "0" ]]
	do
		logo
		# --> 3. menu
		USRNAME=$(git config user.name)
		USREMAIL=$(git config user.email)
		printf "\t${GREEN}username:${NC} ${USRNAME}\t\n"
		printf "\t${GREEN}email:${NC} ${USREMAIL}\n\n"
		printf "\t${RED}[${NC}1${RED}]${NC} config\n"
		printf "\t${RED}[${NC}2${RED}]${NC} download remote repository\n"
		printf "\t${RED}[${NC}3${RED}]${NC} exit\n"
		echo #new line
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		read c #input string
		if [[ $c == "1" ]] 
		then
			config
		elif [[ $c == "2" ]]
		then
			dl-repo
		elif [[ $c == "3" ]]
		then
			break
		fi
	done

exit
}


#- temporary function
messageBox(){
	dialog --msgbox "this tool is covered by the gpl3 license\n
	\ngithub: antogit-sys
	\nemail: antonio.perrucci.lavoro@gmail.com" 10 50 #10x50
}

main #call main
