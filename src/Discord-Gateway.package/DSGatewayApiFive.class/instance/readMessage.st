websocket - api
readMessage
	"Read a message from the Discord Gateway server if possible."
	^ readMutex critical: [ 
		self websocket 
			ifNotNil: [ :aWebSocket | aWebSocket readMessage ]
			ifNil: [ ZnWebSocketClosed signal ] ]