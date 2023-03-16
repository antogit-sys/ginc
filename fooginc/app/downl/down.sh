#
# ~> Function downlaod section
#

function download_remoteRepo {
	local link
	printf "${LCYAN}link repo github:?${NC} "
	read link
	downloadCommandExecute="git remote add origin ${link}"
	$downloadCommandExecute
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git remote add origin ${link}${NC}\n"
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git pull origin master${NC}\n"
	git pull origin master
	printf "\n${YELLOW}press the enter..."
	read -p ""
}

function new-project {
	git init $fname #actual command
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git init${NC}\n"
	printf "\npress the enter..."
	read -p ""	#pause		
}

function track-file {
	printf "${GREEN}file:${NC}\n"
	ls -al
	printf "${LCYAN}files to track:?${NC} "
	read namefile
	git add -f $namefile #actual command | -f ignored file .gitignore
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git add -f ${namefile}${NC}\n"
	printf "\n${YELLOW}press the enter..."
	read -p ""
}

function new-commit {
	printf "${LCYAN}commit name:${NC} "
	read commitname
	git commit -m "${commitname}" #actual command
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git commit -m \"$commitname\"${NC}\n"
	printf "${YELLOW}press the enter...${NC}"
	read -p "" #pause
}

function push-masterproject {
	printf "${YELLOW}attention, instead of the password put the token generated on the github site!!${NC}\n"
	git push origin master #actual command
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git push origin master${NC}\n"
	printf "${YELLOW}press the enter...${NC}"
	read -p "" #pause
}
