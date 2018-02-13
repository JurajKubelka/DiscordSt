public - authentication
disconnect
	"Disconnect from Discord Gateway.
	Discord Gateway is a server that informs clients about new messages and other events.
	Discord Gateway uses WebSocket connection."
	self isConnected ifFalse: [ ^ self ].
	self gateway disconnect.
	self announce: DSClientDisconnectedAnnouncement.