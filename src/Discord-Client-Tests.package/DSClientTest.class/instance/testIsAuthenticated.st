tests
testIsAuthenticated
	"Default user should not be authenticated"
	client := self newClient.
	self deny: client isAuthenticated