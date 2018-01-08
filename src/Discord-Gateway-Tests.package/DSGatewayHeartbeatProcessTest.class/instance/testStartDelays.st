tests
testStartDelays
	"Check delays between three heartbeat cycles"
	| heartbeatInterval |
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self mockServerRequests add: DateAndTime now.
		socket readMessage.
		self mockServerRequests add: DateAndTime now.
		socket readMessage.
		self mockServerRequests add: DateAndTime now.
		socket readMessage.
		self mockServerRequests add: DateAndTime now.
		socket close.
		self signalMockServerSemaphore ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	heartbeatInterval := 300.
	process heartbeatInterval: heartbeatInterval.
	process start.
	self mockServerSemaphoreTimeout: heartbeatInterval * 5.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 4.
	self assertDelay: heartbeatInterval between: self mockServerRequests first and: self mockServerRequests second.
	self assertDelay: heartbeatInterval between: self mockServerRequests second and: self mockServerRequests third.
	self assertDelay: heartbeatInterval between: self mockServerRequests third and: self mockServerRequests fourth.
