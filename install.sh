#
# INSTALL
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
		install_dialog
		messageBox
		execute
	fi
exit
}

install_dialog() {
	apt install dialog
	clear
	pacman -S dialog
	clear
	yum install dialog #centos based
	clear
	dnf install dialog
	clear
}

messageBox() {
	dialog --backtitle "Setup install GINC" --title "Ginc Is Not Client install" \
	--msgbox "this tool is covered by the gpl3 license\n
		\ngithub: antogit-sys\n\n\n
		proceed with the installation?..." \
	10 50
	clear
}

execute() {
	#- execute
	printf "${LYELLOW}install GINC\n"
	echo -e "------------------${NC}"
	printf "ginc.sh is... "
	sleep 1
	printf "${LGREEN}executable ${NC}\n"
	chmod a+x ginc.sh
	printf "copy ginc.sh in... "
	sleep 1
	printf "${LGREEN}/bin/ginc${NC}\n"
	cp ginc.sh /bin/ginc
	printf "copy recursive fooginc in..."
	sleep 2
	printf "${LGREEN}/bin/fooginc${NC}\n"
	cp -r fooginc /bin/fooginc
	printf "${LCYAN}[!] END INSTALL${NC}\n"
}

main
