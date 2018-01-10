tests - public - user
testMeGuilds
	| guilds |
	self startMockServer initializeUsersMeGuildsDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	guilds := restApi guilds.
	self assertUsersMeGuilds: guilds.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.