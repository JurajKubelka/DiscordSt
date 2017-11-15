tests
testStartDelays
	"Check delays between three heartbeat cycles"
	| heartbeatInterval |
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self serverRequests add: DateAndTime now.
		socket readMessage.
		self serverRequests add: DateAndTime now.
		socket readMessage.
		self serverRequests add: DateAndTime now.
		socket readMessage.
		self serverRequests add: DateAndTime now.
		socket close.
		self signalServerSemaphore ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	heartbeatInterval := 300.
	process heartbeatInterval: heartbeatInterval.
	process start.
	self serverSemaphoreTimeout: heartbeatInterval * 5.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 4.
	self assertDelay: heartbeatInterval between: self serverRequests first and: self serverRequests second.
	self assertDelay: heartbeatInterval between: self serverRequests second and: self serverRequests third.
	self assertDelay: heartbeatInterval between: self serverRequests third and: self serverRequests fourth.
