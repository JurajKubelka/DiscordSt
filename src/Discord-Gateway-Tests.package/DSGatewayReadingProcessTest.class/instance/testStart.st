tests
testStart
	"Do three reading cycles and then close the connection"
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		socket 
			sendMessage: '21';
			sendMessage: '42';
			sendMessage: '108' ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process receiver: [ :message | self serverRequests add: message. self signalServerSemaphore ].
	process start.
	self assertServerSemaphore.
	self assertServerSemaphore.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 3.
	self 
		assert: self serverRequests asArray 
		equals: #( '21' '42' '108' ).