public - authentication
connect
	"Connect to Discord Gateway.
	Discord Gateway is a server that informs clients about new messages and other events.
	Discord Gateway uses WebSocket connection."
	self isConnected ifTrue: [ ^ self ].
	self isAuthenticated ifFalse: [ self authenticate ].
	self isAuthenticated ifTrue: [ self gateway connect ].