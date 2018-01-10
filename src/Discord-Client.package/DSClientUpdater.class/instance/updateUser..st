private - updating
updateUser: aDSUser 
	aDSUser restApi: self client.
	self client me: aDSUser.