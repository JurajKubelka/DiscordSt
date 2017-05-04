tests
testLogin
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	delegate map: '/api/auth/login' to: [ :request :response |
		serverRequests add: request.
		response entity: (ZnEntity text: '{"token":"secret-token"}') ].
	api email: self emailString password: self passwordString.
	api login.
	self assert: api isAuthenticated.
	self assert: api token equals: 'secret-token'.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first contents equals: '{"email":"email@example.com","password":"secret password"}'.
	self assert: serverRequests first method equals: #POST.