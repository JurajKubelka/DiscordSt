tests
testIsAuthenticated
	command := self newCommand.
	command client: self newClient.
	self deny: command isAuthenticated