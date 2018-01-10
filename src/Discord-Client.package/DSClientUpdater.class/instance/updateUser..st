private - updating
updateUser: aDSUser 
	aDSUser restApi: self client restApi.
	self client me: aDSUser.