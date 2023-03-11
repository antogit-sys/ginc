#
# ~> Function downlaod section
#

function new-project {
	local fname newfoldername
	printf "${LCYAN}enter the project name to initialize the folder:${NC} "
	read fname 
	newfoldername="$(pwd)/${fname}"
	if [ -d $newfoldername ] 
	then
		printf "${YELLOW}cannot create directory ${newfoldername}: File already exists\n"
		printf "press the enter...${NC}"
		read -p ""
	else
		printf "${LCYAN}[choice]${NC}@ginc-hub${LCYAN}>${NC} "
		printf "${RED}git init $fname ${NC}\n"
		git init $newfoldername
		printf "\npress the enter..."
		read -p ""
	fi
}
