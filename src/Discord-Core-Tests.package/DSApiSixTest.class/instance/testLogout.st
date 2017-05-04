tests
testLogout
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: 'secret-token'.
	delegate map: '/api/auth/logout' to: [ :request :response |
		serverRequests add: request.
		response entity: (ZnEntity text: '{}') ].
	api logout.
	self deny: api isAuthenticated.
	self assert: api token isNil.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first contents equals: '{"token":"secret-token"}'.
	self assert: serverRequests first method equals: #POST.