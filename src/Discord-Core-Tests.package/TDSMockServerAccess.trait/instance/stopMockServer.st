mock server - start - stop
stopMockServer
	"Stop a ZnServer that simulates the Discord server."
	self mockServer ifNotNil: #stop.