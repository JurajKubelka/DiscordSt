tests
testReadyEvent
	"Send Ready Event message."
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server.
		socket sendMessage: self readyEventMessageString.
		self serverRequests add: #finished. ]).
	command := self newCommand.
	command gatewayUrl: self gatewayConnectUrl.
	command identifyData: self identifyData.
	self defaultConnectionTimeoutDuring: [ command ensureConnectedWebSocket ].
	self defaultConnectionTimeoutDuring: [ command receiveReadyEventOrInvalidSessionCode ].
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #finished.
	self assert: command sequenceNumber equals: 1.
	self assert: command sessionId equals: 'e22975'.