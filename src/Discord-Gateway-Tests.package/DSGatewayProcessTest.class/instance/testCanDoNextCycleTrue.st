tests
testCanDoNextCycleTrue
	"Heartbeat is allowed by default, because of connected WebSocket"
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self mockServerRequests add: #server ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	self assert: process canDoNextCycle.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first equals: #server.	
	