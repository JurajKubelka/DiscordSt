tests
testHandleOn
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket | | message |
		self serverRequests 
			add: #server;
			add: socket readMessage ]).
	state := self newGatewayState.
	self connectToGateway.
	self defaultConnectionTimeoutDuring: [ state handleOn: self ].
	self assert: self serverRequests size equals: 4.
	self assert: self serverRequests last class equals: DSGatewayHelloState.
	self assert: self heartbeatInterval equals: 41250.
