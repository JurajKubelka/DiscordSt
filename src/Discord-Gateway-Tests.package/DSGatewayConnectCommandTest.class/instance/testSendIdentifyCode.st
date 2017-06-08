tests
testSendIdentifyCode
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server.
		self serverRequests add: socket readMessage.
		self signalServerSemaphore. ]).
	command := self newCommand.
	command gatewayUrl: self gatewayConnectUrl.
	command identifyData: self identifyData.
	self defaultConnectionTimeoutDuring: [ command ensureConnectedWebSocket ].
	self defaultConnectionTimeoutDuring: [ command sendIdentifyCode ].
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second isString.
	