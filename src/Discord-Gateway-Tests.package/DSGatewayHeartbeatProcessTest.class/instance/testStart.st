tests
testStart
	"Do three heartbeat cycles and then close the connection"
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self mockServerRequests add: #readOne.
		self mockServerRequests add: socket readMessage.
		self mockServerRequests add: #readTwo.
		self mockServerRequests add: socket readMessage.
		self mockServerRequests add: #readThree.
		self mockServerRequests add: socket readMessage.
		self mockServerRequests add: #finished.
		socket close.
		self signalServerSemaphore ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process heartbeatInterval: 10.
	process start.
	self assertServerSemaphore.
	self assert: self mockServerRequests size equals: 7.
	self 
		assert: self mockServerRequests asArray 
		equals: #( #readOne '{"op":1}' #readTwo '{"op":1}' #readThree '{"op":1}' #finished ).