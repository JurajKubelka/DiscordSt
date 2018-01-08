tests
testLogin
	self startMockServer initializeAuthLoginDelegate.
	restApi := self classToTest new.
	restApi apiUrl: self apiUrl.
	restApi email: self constants emailString password: self constants passwordString.
	restApi onSuccess: [ 
		self mockServerRequests add: #login.
		self signalMockServerSemaphore ].
	restApi login.
	self assertMockServerSemaphore.
	self assert: restApi isAuthenticated.
	self assert: self mockServerRequests size equals: 2.
	self assert: self mockServerRequests second equals: #login.