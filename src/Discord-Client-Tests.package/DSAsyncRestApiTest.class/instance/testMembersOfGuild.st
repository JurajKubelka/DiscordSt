tests - public - guild
testMembersOfGuild
	| guild |
	self startMockServer initializeGuildsGuildMembers.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi onSuccess: [ :aMembers | 
		self mockServerRequests add: aMembers. 
		self signalMockServerSemaphore ].
	guild := DSGuild new id: '41771983423143937'; yourself.
	restApi membersOfGuild: guild.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assertMembers: self mockServerRequests second.