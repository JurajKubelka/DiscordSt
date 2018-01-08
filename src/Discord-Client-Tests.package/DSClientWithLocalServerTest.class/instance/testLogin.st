tests
testLogin
	self mockServerDelegate map: '/api/auth/login' to: [ :request :response |
		self mockServerRequests add: #login.
		response entity: (ZnEntity text: '{"token":"secret-token"}') ].
	client announcer 
		when: DSAuthenticatedAnnouncement 
		do: [ :announcement | self mockServerRequests add: announcement. self signalMockServerSemaphore ]. 
	client login.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests first equals: #login.
	self assert: self mockServerRequests second class equals: DSAuthenticatedAnnouncement.