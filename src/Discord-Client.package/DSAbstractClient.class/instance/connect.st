public - authentication
connect
	"Connect to Discord Gateway.
	Discord Gateway is a server that informs clients about new messages and other events.
	Discord Gateway uses WebSocket connection."

	self isAuthenticated ifFalse: [ self authenticate ].
	self isAuthenticated ifTrue: [ self gateway connect ].