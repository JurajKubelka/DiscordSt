tests
testLogin
	self startMockServer.
	api := self classToTest new.
	api apiUrl: self apiUrl.
	self mockServerDelegate map: '/api/auth/login' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: '{"token":"secret-token"}') ].
	api email: self constants emailString password: self constants passwordString.
	api login.
	self assert: api isAuthenticated.
	self assert: api token equals: 'secret-token'.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first contents equals: '{"email":"email@example.com","password":"secret password"}'.
	self assert: self mockServerRequests first method equals: #POST.