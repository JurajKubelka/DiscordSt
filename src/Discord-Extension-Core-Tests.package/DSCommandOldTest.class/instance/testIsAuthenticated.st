tests
testIsAuthenticated
	command := self newObjectToTest.
	command client: self newClient.
	self deny: command isAuthenticated