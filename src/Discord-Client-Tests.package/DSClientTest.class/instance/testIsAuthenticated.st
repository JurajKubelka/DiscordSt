tests
testIsAuthenticated
	client := self newClient.
	self deny: client isAuthenticated.