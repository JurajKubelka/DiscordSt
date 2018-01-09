tests - public - user
testMeChannels
	self startMockServer initializeUsersMeChannelsDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi onSuccess: [ :aChannels | 
		self mockServerRequests add: aChannels. 
		self signalMockServerSemaphore ].
	restApi directChannels.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assertDirectChannels: self mockServerRequests second.