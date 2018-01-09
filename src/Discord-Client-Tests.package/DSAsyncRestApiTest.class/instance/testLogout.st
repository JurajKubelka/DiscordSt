tests - public - authentication
testLogout
	self startMockServer initializeAuthLogoutDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi onSuccess: [ 
		self mockServerRequests add: #logout.
		self signalMockServerSemaphore ].
	restApi logout.
	self assertMockServerSemaphore.
	self deny: restApi isAuthenticated.
	self assert: restApi token isNil.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second equals: #logout.