mock server - start - stop
startMockServer
	"Start a ZnServer that simulates the Discord server."
	self mockServer: self newMockServer.
	self mockServer start