tests
testConnect
	"Connect using a gateway websocket URL"
	self startMockServer.
	self mockServerDelegate 
		map: '/api/gateway' to: [ :request :response | 
			self mockServerRequests add: #apiGateway.
			response entity: (ZnEntity text: self gatewayUrlMessage) ];
		map: '/gateway' to: [ :request :response | (ZnWebSocketDelegate handler: [ :webSocket | 
		self mockServerRequests add: #hello.
		webSocket sendMessage: DSGatewayModelJsonMapping jsonHelloPayload.
		self mockServerRequests add: #identify.
		webSocket readMessage.
		self mockServerRequests add: #ready.
		webSocket sendMessage: DSGatewayModelJsonMapping jsonReadyPayload.
		self mockServerRequests add: #finished.
		self signalMockServerSemaphore ]) handleRequest: request ].
	api := self newGateway. 
	api session: (DSSession new token: self tokenString; yourself).
	api restApiUrl: self apiUrl.
	api when: DSGatewayReadyAnnouncement do: [ :ann | 
		self mockServerRequests add: ann. self signalMockServerSemaphore ].
	self defaultConnectionTimeoutDuring: [ api connect ].
	self assertMockServerSemaphore.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 6.
	self assert: self mockServerRequests first equals: #apiGateway.
	self assert: self mockServerRequests second equals: #hello.
	self assert: self mockServerRequests third equals: #identify.
	self assert: self mockServerRequests fourth equals: #ready.
	self assert: self mockServerRequests fifth equals: #finished.
	self assert: self mockServerRequests sixth class equals: DSGatewayReadyAnnouncement.
	self assert: api heartbeatInterval equals: 41250.
	self assert: api sessionId equals: 21.
	self assert: api sequenceNumber equals: 2.
	self assert: api websocket notNil.
