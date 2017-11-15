tests
testSendHeartbeat
	"Send one heartbeat message to a server"
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self serverRequests add: #server.
		self serverRequests add: socket readMessage.
		self serverRequests add: #finished.
		self signalServerSemaphore. ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process sendHeartbeat.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 3.