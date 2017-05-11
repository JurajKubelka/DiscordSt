execute
execute
	"Receive the Ready Event or OP 9 Invalid Session.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	| message json |
	message := self api websocket readMessage.
	json := self api toJsonObject: message.
	(json at: 'op' ifAbsent: nil) 
		ifNil: [ "Ready Event" 
			self readyEvent: json ]
		ifNotNil: [ "Should be OP 9 Invalid Session"
			self invalidSession: json ]
