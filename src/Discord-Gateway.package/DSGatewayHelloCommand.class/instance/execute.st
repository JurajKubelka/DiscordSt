execute
execute
	"Receive the OP 10 Hello message and set heartbeat interval.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	| message json heartbeatInterval |
	message := self api websocket readMessage.
	json := self api toJsonObject: message.
	heartbeatInterval := (json at: 'd') at: 'heartbeat_interval'.
	self api heartbeatInterval: heartbeatInterval.