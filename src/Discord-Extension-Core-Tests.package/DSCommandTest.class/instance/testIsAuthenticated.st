tests
testIsAuthenticated
	command := self newObject.
	command client: self newClient.
	self deny: command isAuthenticated