#
# ~> Function downlaod section
#

function new-project {
	git init $fname
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git init${NC}\n"
	printf "\npress the enter..."
	read -p ""			
}

function track-file {
	printf "${GREEN}file:${NC}\n"
	ls -al
	printf "${LCYAN}files to track:?${NC} "
	read namefile
	git add $namefile
	printf "\n${YELLOW}press the enter..."
}

function new-commit {
	printf "${LCYAN}commit name:${NC} "
	read commitname
	git commit -m "${commitname}"
	printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
	printf "${RED}git commit -m \"$commitname\"${NC}\n"
	printf "${YELLOW}press the enter...${NC}"
	read -p ""
}
