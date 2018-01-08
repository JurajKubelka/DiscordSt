tests
testMessageUpdateEvent
	"I have received 
	DSUnauthorizedOperationError: {""code"": 20002, ""message"": ""Only bots can use this endpoint""}
	when asking for the message. So let's dicable it for now and suppose that Gateway returns 
	whole message for real users."
	websocketDelegate handler: [ :socket |
		socket sendMessage: self gatewayModelJsonMapping jsonMessageUpdatePayload ].
	self mockServerDelegate map: '/api/channels/5930/messages/36576' to: [ :request :response |
		self mockServerRequests add: #message.
		response entity: (ZnEntity text: self messageObjectString) ].
	client announcer 
		when: DSGatewayMessageUpdateAnnouncement  
		do: [ :announcement | self mockServerRequests add: announcement. self signalMockServerSemaphore ]. 
	client connect.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests first equals: #apiGateway.
	self assert: self mockServerRequests second class equals: DSGatewayMessageUpdateAnnouncement.