tests
testIsConnectedTrue
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self mockServerRequests add: #server ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	self assert: process isConnected.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first equals: #server.