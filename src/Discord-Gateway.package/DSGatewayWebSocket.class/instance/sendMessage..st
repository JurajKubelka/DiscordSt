protocol
sendMessage: aString 
	"Send message to the Discord Gateway server if possible."
	^ writeMutex critical: [ 
		self websocket 
			ifNotNil: [ :aWebSocket | aWebSocket sendMessage: aString ]
			ifNil: [ ZnWebSocketClosed signal ] ]