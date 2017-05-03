tests
testIsAuthenticated
	session := self newSession.
	self deny: session isAuthenticated.