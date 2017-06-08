private - commands
receiveReadyEventOrInvalidSessionCode
	"Receive the Ready Event or OP 9 Invalid Session.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	| message json |
	message := self websocket readMessage.
	json := self toJsonObject: message.
	(self isReadyEvent: json) 
		ifTrue: [ "Ready Event" 
			self readyEvent: json ]
		ifFalse: [ "Should be OP 9 Invalid Session"
			self invalidSession: json ]
