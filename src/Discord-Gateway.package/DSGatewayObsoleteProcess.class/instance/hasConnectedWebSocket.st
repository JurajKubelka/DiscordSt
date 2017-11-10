testing
hasConnectedWebSocket
	"Return true if there is a connected websocket."
	^ self websocket
		ifNotNil: #isConnected
		ifNil: false