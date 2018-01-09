tests - public - guild
testMembersOfGuild
	| members guild |
	self startMockServer initializeGuildsGuildMembers.
	restApi := self newRestApiWithApiUrlAndToken.
	guild := DSGuild new id: '41771983423143937'; yourself.
	members := restApi membersOfGuild: guild.
	self assertMembers: members.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.
