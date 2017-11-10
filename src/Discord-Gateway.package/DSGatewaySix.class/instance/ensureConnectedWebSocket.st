private
ensureConnectedWebSocket
	"Establish the WebSocket with a Discord Gateway. 
	The api object knows the URL. I set
	See https://discordapp.com/developers/docs/topics/gateway#get-gateway"
	self isConnected ifTrue: [ ^ self ].
	self websocketUrl ifNil: [ self websocketUrl: self getWebsocketUrl ].
	self websocket websocket: (ZnWebSocket to: self websocketUrl).