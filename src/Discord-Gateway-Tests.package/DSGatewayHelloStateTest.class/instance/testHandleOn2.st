tests
testHandleOn2
	"Client sends OP 6 Resume code to a Discord server."
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests 
			add: #server;
			add: socket readMessage.
		self signalServerSemaphore ]).
	state := self newGatewayState.
	self connectToGateway.
	self setSessionId.
	self defaultConnectionTimeoutDuring: [ state handleOn: self ].
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 4.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #websocket.
	self assert: self serverRequests third class equals: DSGatewayResumingState.
	self assert: self serverRequests fourth equals: self resumeMessageString.
