tests
testHandleOn
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server ]).
	state := self newGatewayState.
	self defaultConnectionTimeoutDuring: [ state handleOn: self ].
	self assert: self serverRequests size equals: 3.
	self assert: self serverRequests last class equals: DSGatewayWithWebSocketState.
