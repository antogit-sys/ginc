
source "lib/app/downl/down.sh"

function dl-repo {
	local n=""
	while [[ $n != "0" ]]
	do
		clear
		printf "${LCYAN}
		___  ____ _ _ _ _  _ _    ____ ____ ___  
		|  \ |  | | | | |\ | |    |  | |__| |  \ 
		|__/ |__| |_|_| | \| |___ |__| |  | |__/                                          
		${NC}\n\n"
		printf "\t${RED}[${NC}0${RED}]${NC} exit\n"
		printf "\t${RED}[${NC}1${RED}]${NC} init(new project)\n"
		printf "\t${RED}[${NC}2${RED}]${NC} status project\n"
		printf "\t${RED}[${NC}3${RED}]${NC} list commit\n"
		printf "\t${RED}[${NC}4${RED}]${NC} trace project files\n"
		printf "\t${RED}[${NC}5${RED}]${NC} commit project files\n"
		printf "\t${RED}[${NC}6${RED}]${NC} config local branch\n"
		printf "\t${RED}[${NC}7${RED}]${NC} push project\n\n"
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		read n
		if [[ $n == 1 ]]
		then
			new-project
		elif [[ $n == 2 ]]
		then
			git status
			printf "${YELLOW}press the enter...${NC}"
			read -p ""
		elif [[ $n == 3 ]]
		then
			git log
			printf "${YELLOW}press the enter...${NC}"
			read -p ""
		elif [[ $n == 4 ]]
		then
			track-file
		elif [[ $n == 5 ]]
		then
			new-commit
		elif [[ $n == 6 ]]
		then
			echo
		elif [[ $n == 7 ]]
		then
			echo
		fi
	done
}
