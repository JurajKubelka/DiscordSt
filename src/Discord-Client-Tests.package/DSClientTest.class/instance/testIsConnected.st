tests
testIsConnected
	"Default user should not be connected"
	client := self newClient.
	self deny: client isConnected