tests
testChannelsInGuild
	"Return Three channels"
	| channels guild |
	self startMockServer initializeGuildsGuildChannels.
	restApi := self newRestApiWithApiUrlAndToken.
	guild := DSGuild new id: '41771983423143937'; yourself.
	channels := restApi channelsInGuild: guild.
	self assertChannels: channels.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.
