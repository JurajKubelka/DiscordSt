tests - public - user
testMeGuilds
	self startMockServer initializeUsersMeGuildsDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi onSuccess: [ :aGuilds | 
		self mockServerRequests add: aGuilds. 
		self signalMockServerSemaphore ].
	restApi guilds.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assertUsersMeGuilds: self mockServerRequests second.