initialization
setUp
	super setUp.
	self startMockServer.
	websocketDelegate := ZnWebSocketDelegate new.
	self mockServerDelegate
		map: '/api/gateway'
			to: [ :request :response | 
			self mockServerRequests add: #apiGateway.
			response entity: (ZnEntity text: self gatewayUrlMessage) ];
		map: '/gateway'
			to: [ :request :response | websocketDelegate handleRequest: request ].
	"Configure the client"
	client := self newClient.
	client restApi apiUrl: self apiUrl.
	client gateway restApiUrl: self apiUrl.
	client token: self token