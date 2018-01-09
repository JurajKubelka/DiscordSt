tests - public - guild
testChannelsInGuild
	"Return Three channels"
	| channels guild |
	self startMockServer initializeGuildsGuildChannels.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi announcer 
		subscribe: DSAnnouncement 
		do: [ :ann | self mockServerRequests add: ann ].
	guild := DSGuild new id: '41771983423143937'; yourself.
	channels := restApi channelsInGuild: guild.
	self assertChannels: channels.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second class equals: DSChannelsAnnouncement.
	self assert: self mockServerRequests second guild equals: guild.
	self assert: self mockServerRequests second channels equals: channels.
