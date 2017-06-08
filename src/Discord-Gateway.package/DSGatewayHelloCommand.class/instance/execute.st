execute
execute
	"Receive the OP 10 Hello message and set heartbeat interval.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	| message json heartbeatInterval |
	self api websocket ifNil: [ ^ ZnWebSocketClosed signal ].
	self api websocket isConnected ifFalse: [ ^ ZnWebSocketClosed signal ].
	message := self api websocket readMessage.
	json := self api toJsonObject: message.
	heartbeatInterval := (json at: 'd') at: 'heartbeat_interval'.
	self api heartbeatInterval: heartbeatInterval.