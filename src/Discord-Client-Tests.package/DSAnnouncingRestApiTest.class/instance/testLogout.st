tests - public - authentication
testLogout
	self startMockServer initializeAuthLogoutDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi announcer 
		subscribe: DSAnnouncement 
		do: [ :ann | self mockServerRequests add: ann ].
	restApi logout.
	self deny: restApi isAuthenticated.
	self assert: restApi token isNil.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second class equals: DSUnauthenticatedAnnouncement.