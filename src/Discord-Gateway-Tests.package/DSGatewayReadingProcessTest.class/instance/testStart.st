tests
testStart
	"Do three reading cycles and then close the connection"
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		socket 
			sendMessage: '21';
			sendMessage: '42';
			sendMessage: '108' ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process receiver: [ :message | self mockServerRequests add: message. self signalMockServerSemaphore ].
	process start.
	self assertMockServerSemaphore.
	self assertMockServerSemaphore.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 3.
	self 
		assert: self mockServerRequests asArray 
		equals: #( '21' '42' '108' ).