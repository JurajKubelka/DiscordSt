tests-event handling
testMessageCreateEvent
	websocketDelegate handler: [ :socket |
		socket sendMessage: self gatewayModelJsonMapping jsonMessageCreatePayload ].
	client announcer 
		when: DSGatewayMessageCreateAnnouncement  
		do: [ :announcement | self serverRequests add: announcement. self signalServerSemaphore ]. 
	client connect.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #apiGateway.
	self assert: self serverRequests second class equals: DSGatewayMessageCreateAnnouncement.