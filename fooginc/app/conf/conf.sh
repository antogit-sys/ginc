#
# ~> Function configure section
# 

function configure_username {
	local name
	printf "\n${GREEN} - config username - ${NC}\n"
	printf "\n${LCYAN}name: ${NC}" 
	read name
	git config user.name $name 	#actual command
}

function configure_email {
	local email
	printf "\n${GREEN} - config email - ${NC}\n"
	printf "\n${LCYAN}email: ${NC}" 
	read email
	git config user.email $email #actual command	
}

function configure_credentialHelper {
	local ch
	printf "\n${GREEN} - config credential helper - ${NC}\n"
	printf "\n${LCYAN}credential helper: ${NC}" 
	read ch
	git config credential.helper $ch #actual command
}

function logout {
	git config user.name ""
	git config user.email ""
	git config credential.helper ""
}
