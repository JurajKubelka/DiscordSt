tests
testGetWebSocketUrl
	"Ask for a gateway websocket URL"
	| url |
	self startMockServer.
	self mockServerDelegate map: '/api/gateway' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: '{"url": "wss://gateway.discord.gg"}') ].
	api := self newGateway. 
	api restApiUrl: self apiUrl.
	url := api getWebsocketUrl.
	self assert: url equals: 'wss://gateway.discord.gg/?v=6&enconding=json' asZnUrl.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first contents isNil.
	self assert: self mockServerRequests first method equals: #GET.