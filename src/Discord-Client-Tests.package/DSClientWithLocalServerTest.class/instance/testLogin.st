tests
testLogin
	self serverDelegate map: '/api/auth/login' to: [ :request :response |
		self serverRequests add: #login.
		response entity: (ZnEntity text: '{"token":"secret-token"}') ].
	client announcer 
		when: DSAuthenticatedAnnouncement 
		do: [ :announcement | self serverRequests add: announcement. self signalServerSemaphore ]. 
	client login.
	self assertServerSemaphore.
	self assert: self serverRequests size equals: 2.
	self assert: self serverRequests first equals: #login.
	self assert: self serverRequests second class equals: DSAuthenticatedAnnouncement.