tests - public - user
testMeGuilds
	| guilds |
	self startMockServer initializeUsersMeGuildsDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi announcer 
		subscribe: DSAnnouncement 
		do: [ :ann | self mockServerRequests add: ann ].
	guilds := restApi guilds.
	self assertUsersMeGuilds: guilds.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second class equals: DSGuildsAnnouncement.
	self assert: self mockServerRequests second guilds equals: guilds.