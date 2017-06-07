tests
testHandleOn
	"Receive OP 10 Hello code and set hearbeat interval."
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: #server.
		socket sendMessage: '{"t":null,"s":null,"op":10,"d":{"heartbeat_interval":41250,"_trace":["discord-gateway-prd-1-2"]}}' ]).
	state := self newGatewayState.
	self connectToGateway.
	self defaultConnectionTimeoutDuring: [ state handleOn: self ].
	self assert: self serverRequests size equals: 4.
	self assert: self serverRequests last class equals: DSGatewayHelloState.
	self assert: self heartbeatInterval equals: 41250.
