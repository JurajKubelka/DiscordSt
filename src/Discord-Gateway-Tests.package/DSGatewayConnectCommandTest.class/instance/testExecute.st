tests
testExecute
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server ]).
	command := self newCommand.
	command api: self.
	self defaultConnectionTimeoutDuring: [ command execute ].
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #websocket.
