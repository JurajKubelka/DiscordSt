tests
testReceiveHelloCode
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket | 
		self serverRequests add: #server.
		socket sendMessage: self helloPayloadString.
		self serverRequests add: #finished ]).
	command := self newCommand.
	command gatewayUrl: self gatewayConnectUrl.
	self
		defaultConnectionTimeoutDuring: [ command ensureConnectedWebSocket ].
	self defaultConnectionTimeoutDuring: [ command receiveHelloCode ].
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #finished.
	self assert: command heartbeatInterval equals: 41250