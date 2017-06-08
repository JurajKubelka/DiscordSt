tests
testExecute
	self skip: 'obsolete'.
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server.
		self serverRequests add: socket readMessage.
		self signalServerSemaphore. ]).
	command := self newCommand.
	command api: self.
	"self connectToGateway."
	self defaultConnectionTimeoutDuring: [ command execute ].
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 3.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #websocket.
	self assert: self serverRequests third equals: self resumeMessageString.
	