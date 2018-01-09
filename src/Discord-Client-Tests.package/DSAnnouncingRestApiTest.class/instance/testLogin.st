tests - public - authentication
testLogin
	self startMockServer initializeAuthLoginDelegate.
	restApi := self classToTest new.
	restApi apiUrl: self apiUrl.
	restApi email: self constants emailString password: self constants passwordString.
	restApi announcer 
		subscribe: DSAnnouncement 
		do: [ :ann | self mockServerRequests add: ann ].
	restApi login.
	self assert: restApi isAuthenticated.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second class equals: DSAuthenticatedAnnouncement.