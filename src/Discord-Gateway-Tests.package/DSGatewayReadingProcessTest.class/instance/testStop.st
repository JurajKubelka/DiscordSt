tests
testStop
	"Do three reading cycles and then close the connection"
	| semaphore |
	semaphore := Semaphore new.
	self startMockServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		socket sendMessage: '21'.
		self deny: (semaphore waitTimeoutMSecs: 100).
		self mockServerRequests add: #finished.
		self signalMockServerSemaphore ]).
	websocket := ZnWebSocket to: self gatewayConnectUrl.
	process := self newGatewayProcess.
	process websocket: websocket.
	process receiver: [ :message | self mockServerRequests add: message. self signalMockServerSemaphore ].
	process start.
	self assertMockServerSemaphore.
	process stop.
	semaphore signal.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self 
		assert: self mockServerRequests asArray 
		equals: #( '21' #finished ).