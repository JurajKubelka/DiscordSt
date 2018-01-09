asserting
assertDirectChannels: aDSChannels
	self assert: aDSChannels notNil.
	self assert: aDSChannels isCollection.
	self assert: aDSChannels size equals: 1.
	self assert: aDSChannels first name equals: 'DM Channel: test'.
	aDSChannels allChannelsDo: [ :eachChannel | 
		self 
			assert: eachChannel restApi == self sharedRestApi 
			description: 'It should have the same api object' ].
