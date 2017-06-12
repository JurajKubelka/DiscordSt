tests
testValueHelloEvent
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate handler: [ :socket |
		self serverRequests add: socket readMessage.
		self signalServerSemaphore. ]).
	receiver := self newMessageReceiver.
	receiver api: self newGatewayApi.
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	receiver api websocket: websocket.
	receiver value: self helloPayloadString.
	self assertServerSemaphore.
	self assert: receiver api heartbeatInterval equals: 41250.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first isString.