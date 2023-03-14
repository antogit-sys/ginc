#
# ~> Function downlaod section
#

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
