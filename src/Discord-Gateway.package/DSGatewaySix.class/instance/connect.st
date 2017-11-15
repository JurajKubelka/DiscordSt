public
connect
	"Initialize the connection with the Discord Gateway.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	self session isAuthenticated ifFalse: [ 
		DSTokenRequiredError signal: 'Cannot authorize the client.' ].
	"Connect"
	self ensureConnectedWebSocket.
	self startReadingProcesses.
	