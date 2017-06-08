tests
testEnsureConnectedWebSocket
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server ]).
	command := self newCommand.
	command gatewayUrl: self gatewayConnectUrl.
	self defaultConnectionTimeoutDuring: [ command ensureConnectedWebSocket ].
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first equals: #server.
