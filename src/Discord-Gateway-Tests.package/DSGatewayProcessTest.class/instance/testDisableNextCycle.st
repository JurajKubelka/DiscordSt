tests
testDisableNextCycle
	"Heartbeat is not allowed explicitly"
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self mockServerRequests add: #server ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process disableNextCycle.
	self deny: process canDoNextCycle.
	