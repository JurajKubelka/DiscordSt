tests
testExecute
	"Send Ready Event message."
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server.
		socket sendMessage: self readyEventMessageString ]).
	command := self newCommand.
	command api: self.
	self connectToGateway.
	self defaultConnectionTimeoutDuring: [ command execute ].
	self assert: self serverRequests size equals: 8.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #websocket.
	self assert: self serverRequests third equals: #sequenceNumber.
	self assert: self serverRequests fourth equals: 1.
	self assert: self serverRequests fifth equals: #sessionId.
	self assert: self serverRequests sixth equals: 'e22975'.
	self assert: self serverRequests seventh equals: #readyEvent.
	self assert: self serverRequests eighth equals: (DSJSONApiWriter fromString: self readyEventMessageString).
