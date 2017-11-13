tests
testStart
	"Do three heartbeat cycles and then close the connection"
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self serverRequests add: #readOne.
		self serverRequests add: socket readMessage.
		self serverRequests add: #readTwo.
		self serverRequests add: socket readMessage.
		self serverRequests add: #readThree.
		self serverRequests add: socket readMessage.
		self serverRequests add: #finished.
		socket close.
		self signalServerSemaphore ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process heartbeatInterval: 10.
	process start.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 7.
	self 
		assert: self serverRequests asArray 
		equals: #( #readOne '{"op":1}' #readTwo '{"op":1}' #readThree '{"op":1}' #finished ).