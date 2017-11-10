tests
testConnect
	"Connect using a gateway websocket URL"
	self startZnServer.
	self serverDelegate 
		map: '/api/gateway' to: [ :request :response | 
			self serverRequests add: #apiGateway.
			response entity: (ZnEntity text: self gatewayUrlMessage) ];
		map: '/gateway' to: [ :request :response | (ZnWebSocketDelegate handler: [ :webSocket | 
		self serverRequests add: #hello.
		webSocket sendMessage: DSGatewayModelJsonMapping jsonHelloPayload.
		self serverRequests add: #identify.
		webSocket readMessage.
		self serverRequests add: #ready.
		webSocket sendMessage: DSGatewayModelJsonMapping jsonReadyPayload.
		self serverRequests add: #finished.
		self signalServerSemaphore ]) handleRequest: request ].
	api := self newGateway. 
	api session token: self tokenString.
	api restApiUrl: self apiUrl.
	api when: DSGatewayReadyAnnouncement do: [ :ann | 
		self serverRequests add: ann. self signalServerSemaphore ].
	self defaultConnectionTimeoutDuring: [ api connect ].
	self assertServerSemaphore.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 6.
	self assert: self serverRequests first equals: #apiGateway.
	self assert: self serverRequests second equals: #hello.
	self assert: self serverRequests third equals: #identify.
	self assert: self serverRequests fourth equals: #ready.
	self assert: self serverRequests fifth equals: #finished.
	self assert: self serverRequests sixth isReadyEvent.
	self assert: api heartbeatInterval equals: 41250.
	self assert: api sessionId equals: 'e22975'.
	self assert: api sequenceNumber equals: 1.
	self assert: api websocket notNil.
