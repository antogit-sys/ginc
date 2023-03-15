#
# - DOWNLOAD MENU
#===================>

#1. import functions download file
source "/bin/fooginc/app/downl/down.sh"

function dl-repo {
	local n="" #choice
	
	#2. menu
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
		printf "\t${RED}[${NC}2${RED}]${NC} download remote repository\n"
		printf "\t${RED}[${NC}3${RED}]${NC} status project\n"
		printf "\t${RED}[${NC}4${RED}]${NC} list commit\n"
		printf "\t${RED}[${NC}5${RED}]${NC} trace project files\n"
		printf "\t${RED}[${NC}6${RED}]${NC} commit project files\n"
		printf "\t${RED}[${NC}7${RED}]${NC} config local branch\n"
		printf "\t${RED}[${NC}8${RED}]${NC} push project\n\n"
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		read n
		if [[ $n == 1 ]]
		then
			new-project
		elif [[ $n == 2 ]]
		then
			download_remoteRepo
		elif [[ $n == 3 ]]
		then
			git status
			printf "${YELLOW}press the enter...${NC}"
			read -p ""
		elif [[ $n == 4 ]]
		then
			git log
			printf "${YELLOW}press the enter...${NC}"
			read -p ""
		elif [[ $n == 5 ]]
		then
			track-file
		elif [[ $n == 6 ]]
		then
			new-commit
		elif [[ $n == 7 ]]
		then
			#soon...
			printf "${RED}work in progress...${NC}\n"
			printf "${YELLOW}press the enter...${NC}"
			read -p ""
		elif [[ $n == 8 ]]
		then
			push-masterproject
		fi
	done
}
