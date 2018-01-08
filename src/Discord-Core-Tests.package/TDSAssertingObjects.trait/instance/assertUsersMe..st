asserting
assertUsersMe: aDSUser
	self assert: aDSUser notNil.
	self assert: aDSUser username equals: 'Nelly'.
	self assert: aDSUser restApi == self sharedRestApi description: 'It should have the api object'.
