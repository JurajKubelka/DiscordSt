tests
testStop
	"Do three heartbeat cycles and then close the connection"
	| semaphore |
	semaphore := Semaphore new.
	self startZnServer.
	self serverDelegate: (ZnWebSocketDelegate map: 'gateway' to: [ :socket |
		self serverRequests add: #server.
		self serverRequests add: socket readMessage.
		self serverRequests add: #waiting.
		self signalServerSemaphore.
		self deny: (semaphore waitTimeoutMSecs: 100).
		self serverRequests add: #finished.
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
	self assert: self serverRequests size equals: 4.
	self 
		assert: self serverRequests asArray 
		equals: #( #server '{"op":1}' #waiting #finished ).
	self deny: process canDoNextCycle.
