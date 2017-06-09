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
	heartbeatInterval := 20.
	process heartbeatInterval: heartbeatInterval.
	process start.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 4.
	self assert: self serverRequests first + heartbeatInterval milliSeconds < self serverRequests second.
	self assert: self serverRequests second + heartbeatInterval milliSeconds < self serverRequests third.
	self assert: self serverRequests third + heartbeatInterval milliSeconds < self serverRequests fourth.
