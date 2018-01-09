tests - public - user
testMeChannels
	| channels |
	self startMockServer initializeUsersMeChannelsDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi announcer 
		subscribe: DSAnnouncement 
		do: [ :ann | self mockServerRequests add: ann ].
	channels := restApi directChannels.
	self assertDirectChannels: channels.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second class equals: DSDirectChannelsAnnouncement.
	self assert: self mockServerRequests second channels equals: channels.