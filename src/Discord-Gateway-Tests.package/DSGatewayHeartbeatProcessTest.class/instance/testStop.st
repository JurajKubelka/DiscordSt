tests
testStop
	"Do three heartbeat cycles and then close the connection"
	| semaphore |
	semaphore := Semaphore new.
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self mockServerRequests add: #server.
		self mockServerRequests add: socket readMessage.
		self mockServerRequests add: #waiting.
		self signalServerSemaphore.
		self deny: (semaphore waitTimeoutMSecs: 100).
		self mockServerRequests add: #finished.
		self signalServerSemaphore. ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process heartbeatInterval: 10.
	process start.
	self assertServerSemaphore.
	process stop.
	semaphore signal.
	self assertServerSemaphore.
	self assert: self mockServerRequests size equals: 4.
	self 
		assert: self mockServerRequests asArray 
		equals: #( #server '{"op":1}' #waiting #finished ).
	self deny: process canDoNextCycle.
