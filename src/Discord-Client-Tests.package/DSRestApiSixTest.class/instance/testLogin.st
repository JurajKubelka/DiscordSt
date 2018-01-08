tests
testLogin
	self startMockServer initializeAuthLoginDelegate.
	restApi := self classToTest new.
	restApi apiUrl: self apiUrl.
	restApi email: self constants emailString password: self constants passwordString.
	restApi login.
	self assert: restApi isAuthenticated.
	self assert: restApi token equals: 'secret-token'.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first contents equals: '{"email":"email@example.com","password":"secret password"}'.
	self assert: self mockServerRequests first method equals: #POST.