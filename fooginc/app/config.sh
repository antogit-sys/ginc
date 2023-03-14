#
# - CONFIG MENU
#===================>

#1. import functions conf file
source "lib/app/conf/conf.sh"

function config {
	local n="" #choice
	while [[ $n != "0" ]]
	do
		clear
		printf "$LCYAN
		____ ____ _  _ ____ _ ____
		|    |  | |\ | |___ | | __
		|___ |__| | \| |    | |__]
		$NC\n"
		printf ">>>>>>> $LGREEN${USRNAME}$NC\n"
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		printf "${RED}git config --list --show-origin${NC}\n"
		git config --list --show-origin #actual command
		printf "\n ${RED}[${NC}0${RED}]${NC} exit\n"
		printf " ${RED}[${NC}1${RED}]${NC} ${NC}config username\n"
		printf " ${RED}[${NC}2${RED}]${NC} ${NC}config email\n"
		printf " ${RED}[${NC}3${RED}]${NC} config credential helper\n"
		printf " ${RED}[${NC}4${RED}]${NC} config all(username, email, credential)\n"
		printf " ${RED}[${NC}5${RED}]${NC} logout\n\n"
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		read n
		# 2. menu
		if [[ $n == "1" ]] 
		then
			configure_username
		elif [[ $n == "2" ]]
		then 
			configure_email
		elif [[ $n == "3" ]]
		then
			configure_credentialHelper 
		elif [[ $n == "4" ]]
		then
			configure_username
			configure_email
			configure_credentialHelper
		elif [[ $n == "5" ]]
		then
			logout
		fi #end if
	done #end while

}
