#
# UNISTALL
#
# -- costant
declare -r LGREEN='\033[1;92m'
declare -r RED='\033[1;31m'
declare -r LYELLOW='\033[1;33m'
declare -r LCYAN='\033[0;96m'
declare -r NC='\033[0m' # No Color


function main {
	if [ $UID != 0 ]
	then
		printf "${RED}[!]This script can only be used by the root user ${NC}\n"
		
	else
		messageBox
		execute
	fi
exit
}

messageBox() {
	dialog --backtitle "unistall GINC" --title "Ginc Is Not Client unistall" \
	--msgbox "this tool is covered by the gpl3 license\n
		\ngithub: antogit-sys\n\n\n
		proceed with the unistallation?..." \
	10 50
	clear
}

execute() {
	#- execute
	printf "${LYELLOW}unistall GINC\n"
	echo -e "------------------${NC}"
	printf "ginc.sh is... "
	sleep 1
	printf "${RED}deleetd ${NC}\n"
	rm -rf ../ginc/*
	printf "deleted ginc.sh in... "
	sleep 1
	printf "${RED}/bin/ginc${NC}\n"
	rm /bin/ginc
	printf "deleted recursive fooginc in..."
	sleep 2
	printf "${RED}/bin/fooginc${NC}\n"
	rm -rf /bin/fooginc
	printf "${RED}[!] END UNISTALL${NC}\n"
}

main
