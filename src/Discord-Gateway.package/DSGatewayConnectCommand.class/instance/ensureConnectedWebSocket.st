private - commands
ensureConnectedWebSocket
	"Establish the WebSocket with a Discord Gateway. 
	The api object knows the URL. I set
	See https://discordapp.com/developers/docs/topics/gateway#get-gateway"
	self websocket ifNotNil: [ :aWebSocket | 
		aWebSocket isConnected ifTrue: [ ^ self ] ].
	self websocket: (ZnWebSocket to: self gatewayUrl).