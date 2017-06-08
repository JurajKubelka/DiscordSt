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
			"OP 10 Hello"
		self serverRequests add: #gateway.
		webSocket sendMessage: self helloMessageString ]) handleRequest: request ].
	api := self newApi. 
	api session token: self tokenString.
	api apiUrl: self apiUrl.
	self defaultConnectionTimeoutDuring: [ api connect ].
	self assert: api heartbeatInterval equals: 41250.
	self assert: self serverRequests size equals: 1.
