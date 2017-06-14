tests
testIsAuthenticated
	command := self newSendCommand.
	command client: self newClient.
	self deny: command isAuthenticated