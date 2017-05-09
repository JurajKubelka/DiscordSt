tests
testGateway
	"Ask for a gateway websocket URL"
	| url |
	self startZnServer.
	delegate map: '/api/gateway' to: [ :request :response |
		serverRequests add: request.
		response entity: (ZnEntity text: '{"url": "wss://gateway.discord.gg"}') ].
	api := self newApi. 
	api apiUrl: self localServerApiUrl.
	url := api gateway.
	self assert: url equals: 'wss://gateway.discord.gg'.
	self assert: api gateway == url.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first contents isNil.
	self assert: serverRequests first method equals: #GET.