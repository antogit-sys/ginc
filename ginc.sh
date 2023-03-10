# -- declare costant
RED='\033[1;31m'
GREEN='\033[0;32m'
LGREEN='\033[1;92m'
NC='\033[0m' # No Color
CYAN='\033[0;36m'
LGRAY='\033[0;37m'
LCYAN='\033[0;96m'
BLUE='\033[0;34m'
WHITE='\033[1;97m'
YELLOW='\033[0;33m'

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
	logo	
	local let c=1
	while [[ $c != 0 ]]
	do
		logo
		printf "\t${RED}[${NC}1${RED}]${NC} config\n"
        printf "\t${RED}[${NC}2${RED}]${NC} download remote repository\n"
        printf "\t${RED}[${NC}3${RED}]${NC} exit\n"
		echo
		printf "${LCYAN}#choice#> ${NC}"
		read -p "" c
	done
	
	
}

main
