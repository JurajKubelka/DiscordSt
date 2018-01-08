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
		self signalMockServerSemaphore.
		self deny: (semaphore waitTimeoutMSecs: 100).
		self mockServerRequests add: #finished.
		self signalMockServerSemaphore. ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process heartbeatInterval: 10.
	process start.
	self assertMockServerSemaphore.
	process stop.
	semaphore signal.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 4.
	self 
		assert: self mockServerRequests asArray 
		equals: #( #server '{"op":1}' #waiting #finished ).
	self deny: process canDoNextCycle.
