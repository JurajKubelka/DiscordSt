tests - public - guild
testMembersOfGuild
	| members guild |
	self startMockServer initializeGuildsGuildMembers.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi announcer 
		subscribe: DSAnnouncement 
		do: [ :ann | self mockServerRequests add: ann ].
	guild := DSGuild new id: '41771983423143937'; yourself.
	members := restApi membersOfGuild: guild.
	self assertMembers: members.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second class equals: DSMembersAnnouncement.
	self assert: self mockServerRequests second guild equals: guild.
	self assert: self mockServerRequests second members equals: members.
