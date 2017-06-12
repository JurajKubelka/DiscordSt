public
connect
	"Initialize the connection with the Discord Gateway.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	| command |
	self session isAuthenticated ifFalse: [ 
		DSTokenRequiredError signal: 'Cannot authorize the client.' ].
	"Connect"
	command := DSGatewayConnectCommand new
		websocket: self websocket;
		gatewayUrl: self gatewayConnectUrl;
		identifyData: self identifyData;
		execute;
		yourself.
	self sessionId: command sessionId.
	self sequenceNumber: command sequenceNumber.
	self websocket: command websocket.
	self heartbeatInterval: command heartbeatInterval.
	self startProcesses.
	