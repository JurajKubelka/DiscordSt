tests - public - authentication
testLogout
	self startMockServer initializeAuthLogoutDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	restApi logout.
	self deny: restApi isAuthenticated.
	self assert: restApi token isNil.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first contents equals: '{"token":"secret-token"}'.
	self assert: self mockServerRequests first method equals: #POST.