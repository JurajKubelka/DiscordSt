tests - public - user
testMeChannels
	| channels |
	self startMockServer initializeUsersMeChannelsDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	channels := restApi directChannels.
	self assertDirectChannels: channels.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.