tests
testGetWebSocketUrl
	"Ask for a gateway websocket URL"
	| url |
	self startZnServer.
	self serverDelegate map: '/api/gateway' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: '{"url": "wss://gateway.discord.gg"}') ].
	api := self newGateway. 
	api restApiUrl: self apiUrl.
	url := api getWebsocketUrl.
	self assert: url equals: 'wss://gateway.discord.gg/?v=6&enconding=json' asZnUrl.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first contents isNil.
	self assert: self serverRequests first method equals: #GET.