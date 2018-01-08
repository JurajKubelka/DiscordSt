tests
testLogout
	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: 'secret-token'.
	self mockServerDelegate map: '/api/auth/logout' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: '{}') ].
	api logout.
	self deny: api isAuthenticated.
	self assert: api token isNil.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first contents equals: '{"token":"secret-token"}'.
	self assert: self mockServerRequests first method equals: #POST.