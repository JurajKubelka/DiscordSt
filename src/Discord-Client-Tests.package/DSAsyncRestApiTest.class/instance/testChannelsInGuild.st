tests
testChannelsInGuild
	"Return Three channels"
	| guild |
	self startMockServer initializeGuildsGuildChannels.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi onSuccess: [ :aChannels | 
		self mockServerRequests add: aChannels. 
		self signalMockServerSemaphore ].
	guild := DSGuild new id: '41771983423143937'; yourself.
	restApi channelsInGuild: guild.
	self assertMockServerSemaphore.
	self assert: self mockServerRequests size equals: 2.
	self assertChannels: self mockServerRequests second.