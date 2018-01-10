tests
testReadyEvent
	websocketDelegate handler: [ :socket |
		socket sendMessage: self gatewayModelJsonMapping jsonReadyPayload ].
	client announcer 
		when: DSClientConnectedAnnouncement
		do: [ :announcement | 
			self mockServerRequests add: announcement. 
			self signalMockServerSemaphore ]. 
	client connect.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests first equals: #apiGateway.
	self assert: self mockServerRequests second class equals: DSClientConnectedAnnouncement.
	self assert: client me username equals: 'Nelly'.
	self assert: client guilds size equals: 1.
	self assert: client guilds first name equals: 'guild name (2-100 characters)'.