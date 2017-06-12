testing
isConnected
	^ self websocket 
		ifNotNil: #isConnected
		ifNil: false