tests
testDisableNextCycle
	"Heartbeat is not allowed explicitly"
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self serverRequests add: #server ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process disableNextCycle.
	self deny: process canDoNextCycle.
	