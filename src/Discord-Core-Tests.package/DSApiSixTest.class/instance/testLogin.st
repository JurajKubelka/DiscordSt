tests
testLogin
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	self serverDelegate map: '/api/auth/login' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: '{"token":"secret-token"}') ].
	api email: self emailString password: self passwordString.
	api login.
	self assert: api isAuthenticated.
	self assert: api token equals: 'secret-token'.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first contents equals: '{"email":"email@example.com","password":"secret password"}'.
	self assert: self serverRequests first method equals: #POST.