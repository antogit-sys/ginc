#
# ~> Function configure section
# 

function configure_username {
	#clear
	local name
	#printf $NC
	printf "\n${GREEN} - config username - ${NC}\n"
	printf "\n${LCYAN}name: ${NC}" 
	read name
	git config user.name $name 	
}

function configure_email {
	#clear
	local email
	#printf $NC
	printf "\n${GREEN} - config email - ${NC}\n"
	printf "\n${LCYAN}email: ${NC}" 
	read email
	git config user.email $email 	
}

function configure_credentialHelper {
	local ch
	printf "\n${GREEN} - config credential helper - ${NC}\n"
	printf "\n${LCYAN}credential helper: ${NC}" 
	read ch
	git config credential.helper $ch	
}

function logout {
	git config user.name ""
	git config user.email ""
	git config credential.helper ""
}
