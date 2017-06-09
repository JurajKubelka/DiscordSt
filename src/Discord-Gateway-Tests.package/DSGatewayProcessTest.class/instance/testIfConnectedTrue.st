tests
testIfConnectedTrue
	| value |
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self serverRequests add: #server ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	value := nil.
	process ifConnected: [ :aSocket | value := 42 ].
	self assert: value equals: 42.
	