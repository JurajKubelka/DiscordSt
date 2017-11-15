tests
testCanDoNextCycleTrue
	"Heartbeat is allowed by default, because of connected WebSocket"
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self serverRequests add: #server ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	self assert: process canDoNextCycle.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first equals: #server.	
	