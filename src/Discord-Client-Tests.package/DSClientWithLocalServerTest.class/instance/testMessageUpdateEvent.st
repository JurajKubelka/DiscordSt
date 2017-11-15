tests
testMessageUpdateEvent
	"I have received 
	DSUnauthorizedOperationError: {""code"": 20002, ""message"": ""Only bots can use this endpoint""}
	when asking for the message. So let's dicable it for now and suppose that Gateway returns 
	whole message for real users."
	websocketDelegate handler: [ :socket |
		socket sendMessage: self gatewayModelJsonMapping jsonMessageUpdatePayload ].
	self serverDelegate map: '/api/channels/5930/messages/36576' to: [ :request :response |
		self serverRequests add: #message.
		response entity: (ZnEntity text: self messageObjectString) ].
	client announcer 
		when: DSGatewayMessageUpdateAnnouncement  
		do: [ :announcement | self serverRequests add: announcement. self signalServerSemaphore ]. 
	client connect.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #apiGateway.
	self assert: self serverRequests second class equals: DSGatewayMessageUpdateAnnouncement.