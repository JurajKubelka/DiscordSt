mock server - actions
stopMockServer
	"Stop a ZnServer that simulates the Discord server."
	self mockServer ifNotNil: #stop.