private - commands
receiveHelloCode
	"Receive the OP 10 Hello message and set heartbeat interval.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	| message json |
	self websocket ifNil: [ ^ ZnWebSocketClosed signal ].
	self websocket isConnected ifFalse: [ ^ ZnWebSocketClosed signal ].
	message := self websocket readMessage.
	json := self toJsonObject: message.
	self heartbeatInterval: ((json at: 'd') at: 'heartbeat_interval').