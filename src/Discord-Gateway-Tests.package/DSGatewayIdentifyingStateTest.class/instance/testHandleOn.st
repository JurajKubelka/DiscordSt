tests
testHandleOn
	"Client receives Ready Event from a Discord server."
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests 
			add: #server.
		socket sendMessage: self readyEventMessageString.
		self signalServerSemaphore ]).
	state := self newGatewayState.
	self connectToGateway.
	self fieldsAt: #isAlive put: true.
	self defaultConnectionTimeoutDuring: [ state handleOn: self ].
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 9.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #websocket.
	self assert: self serverRequests third equals: #sequenceNumber.
	self assert: self serverRequests fourth equals: 1.
	self assert: self serverRequests fifth equals: #sessionId.
	self assert: self serverRequests sixth equals: 'e22975'.
	self assert: self serverRequests seventh equals: #readyEvent.
	self assert: self serverRequests eighth equals: (DSJSONApiWriter fromString: self readyEventMessageString).
	self assert: self serverRequests ninth class equals: DSGatewayConnectedState.
