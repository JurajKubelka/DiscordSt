tests
testConnect
	"Connect using a gateway websocket URL"
	self startZnServer.
	server setDebugMode.
	self serverDelegate 
		map: '/api/gateway' to: [ :request :response | 
			self serverRequests add: #apiGateway.
			response entity: (ZnEntity text: self gatewayUrlMessage) ];
		map: '/gateway' to: [ :request :response | (ZnWebSocketDelegate handler: [ :webSocket | 
		self serverRequests add: #hello.
		webSocket sendMessage: self helloPayloadString.
		self serverRequests add: #identify.
		webSocket readMessage.
		self serverRequests add: #ready.
		webSocket sendMessage: self readyEventMessageString.
		self serverRequests add: #finished ]) handleRequest: request ].
	api := self newApi. 
	api session token: self tokenString.
	api apiUrl: self apiUrl.
	self defaultConnectionTimeoutDuring: [ api connect ].
	self assert: api heartbeatInterval equals: 41250.
	self assert: api sessionId equals: 'e22975'.
	self assert: api sequenceNumber equals: 1.
	self assert: api websocket notNil.
	self assert: self serverRequests size equals: 5.
	self assert: self serverRequests first equals: #apiGateway.
	self assert: self serverRequests second equals: #hello.
	self assert: self serverRequests third equals: #identify.
	self assert: self serverRequests fourth equals: #ready.
	self assert: self serverRequests fifth equals: #finished.
