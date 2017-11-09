tests-event handling
testReadyEvent
	websocketDelegate handler: [ :socket |
		socket sendMessage: DSGatewayModelJsonMapping jsonReadyPayload ].
	client announcer 
		when: DSReadyAnnouncement 
		do: [ :announcement | self serverRequests add: announcement. self signalServerSemaphore ]. 
	client connect.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #apiGateway.
	self assert: self serverRequests second class equals: DSReadyAnnouncement.