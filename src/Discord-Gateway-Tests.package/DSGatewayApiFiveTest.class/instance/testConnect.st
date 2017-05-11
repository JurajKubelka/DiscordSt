tests
testConnect
	"Connect using a gateway websocket URL"
	self startZnServer.
	self serverDelegate map: '/' to: (ZnWebSocketDelegate handler: [ :webSocket | 
		"OP 10 Hello"
		self serverRequests add: webSocket.
		webSocket sendMessage: '{"t":null,"s":null,"op":10,"d":{"heartbeat_interval":41250,"_trace":["discord-gateway-prd-1-2"]}}' ]).
	api := self newApi. 
	api apiUrl: self apiUrl.
	api connect.
	self assert: api heartBeatInterval equals: 41250.
	self assert: self serverRequests size equals: 1.
