tests
testLogout
	self startZnServer.
	api := self newApi.
	api apiUrl: self apiUrl.
	api token: 'secret-token'.
	self serverDelegate map: '/api/auth/logout' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: '{}') ].
	api logout.
	self deny: api isAuthenticated.
	self assert: api token isNil.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first contents equals: '{"token":"secret-token"}'.
	self assert: self serverRequests first method equals: #POST.