tests
testSendHeartbeat
	"Send one heartbeat message to a server"
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self mockServerRequests add: #server.
		self mockServerRequests add: socket readMessage.
		self mockServerRequests add: #finished.
		self signalMockServerSemaphore. ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process sendHeartbeat.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 3.