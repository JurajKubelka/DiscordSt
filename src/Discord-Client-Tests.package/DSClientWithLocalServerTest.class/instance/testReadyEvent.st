tests
testReadyEvent
	websocketDelegate handler: [ :socket |
		socket sendMessage: self gatewayModelJsonMapping jsonReadyPayload ].
	client announcer 
		when: DSGatewayReadyAnnouncement
		do: [ :announcement | self mockServerRequests add: announcement. self signalMockServerSemaphore ]. 
	client connect.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests first equals: #apiGateway.
	self assert: self mockServerRequests second class equals: DSGatewayReadyAnnouncement.