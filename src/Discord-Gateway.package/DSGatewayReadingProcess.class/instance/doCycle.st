private
doCycle
	"Read Payload/Event.
	It also receives heartbeat ACK code."
	| message |
	[ message := websocket readMessage ]
	on: ConnectionTimedOut, ConnectionClosed
	do: [ "ignore & continue" ].
	message ifNotNil: [ 
		self messageReceived: message ].
