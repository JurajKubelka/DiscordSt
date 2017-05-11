tests
testExecute
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server.
		socket sendMessage: '{"t":null,"s":null,"op":10,"d":{"heartbeat_interval":41250,"_trace":["discord-gateway-prd-1-2"]}}' ]).
	command := self newCommand.
	command api: self.
	self connectToGateway.
	self defaultConnectionTimeoutDuring: [ command execute ].
	self assert: self serverRequests size equals: 3.
	self assert: self serverRequests first equals: #server.
	self assert: self serverRequests second equals: #websocket.
	self assert: self serverRequests third equals: #heartbeatInterval.
	self assert: self heartbeatInterval equals: 41250.
