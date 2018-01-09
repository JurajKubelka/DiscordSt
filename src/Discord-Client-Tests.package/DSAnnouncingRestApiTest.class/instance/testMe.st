tests - public - user
testMe
	| user |
	self startMockServer initializeUsersMeDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi announcer 
		subscribe: DSAnnouncement 
		do: [ :ann | self mockServerRequests add: ann ].
	user := restApi me.
	self assertUsersMe: user.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second class equals: DSUserAnnouncement.
	self assert: self mockServerRequests second user equals: user.