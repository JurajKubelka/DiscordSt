tests - public - user
testMeGuilds
	self startMockServer initializeUsersMeGuildDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi onSuccess: [ :aGuilds | 
		self mockServerRequests add: aGuilds. 
		self signalMockServerSemaphore ].
	restApi meGuilds.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assertUsersMeGuilds: self mockServerRequests second.