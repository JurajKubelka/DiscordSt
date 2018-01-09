tests - public - user
testMe
	self startMockServer initializeUsersMeDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi onSuccess: [ :aUser | 
		self mockServerRequests add: aUser. 
		self signalMockServerSemaphore ].
	restApi me.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assertUsersMe: self mockServerRequests second.