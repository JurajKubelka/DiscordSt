asserting
assertUsersMeGuilds: aDSGuilds
	self assert: aDSGuilds notNil.
	self assert: aDSGuilds isCollection.
	self assert: aDSGuilds size equals: 1.
	self assert: aDSGuilds first name equals: 'guild name (2-100 characters)'.
	self 
		assert: aDSGuilds first restApi == self sharedRestApi 
		description: 'It should have the api object'.