initialization
setUp
	super setUp.
	self startZnServer.
	websocketDelegate := ZnWebSocketDelegate new.
	self serverDelegate
		map: '/api/gateway'
			to: [ :request :response | 
			self serverRequests add: #apiGateway.
			response entity: (ZnEntity text: self gatewayUrlMessage) ];
		map: '/gateway'
			to: [ :request :response | websocketDelegate handleRequest: request ].
	"Configure the client"
	client := self newClient.
	client restApi apiUrl: self apiUrl.
	client gatewayApi apiUrl: self apiUrl.
	client token: self token