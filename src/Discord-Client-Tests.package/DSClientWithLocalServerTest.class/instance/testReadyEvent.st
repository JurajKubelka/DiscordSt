tests
testReadyEvent
	websocketDelegate handler: [ :socket |
		socket sendMessage: self gatewayModelJsonMapping jsonReadyPayload ].
	client announcer 
		when: DSClientUserChangedAnnouncement, DSClientGuildsChangedAnnouncement
		do: [ :announcement | 
			self mockServerRequests add: announcement. 
			self signalMockServerSemaphore ]. 
	client connect.
	self assertMockServerSemaphore.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 3.
	self assert: self mockServerRequests first equals: #apiGateway.
	self assert: self mockServerRequests second class equals: DSClientUserChangedAnnouncement.
	self assert: client me equals: self mockServerRequests second user.
	self assert: client guilds equals: self mockServerRequests third guilds.
	