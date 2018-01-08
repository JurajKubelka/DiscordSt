tests
testLogout
	self startMockServer.
	restApi := self newRestApi.
	restApi apiUrl: self apiUrl.
	restApi token: 'secret-token'.
	self mockServerDelegate map: '/api/auth/logout' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: '{}') ].
	restApi logout.
	self deny: restApi isAuthenticated.
	self assert: restApi token isNil.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first contents equals: '{"token":"secret-token"}'.
	self assert: self mockServerRequests first method equals: #POST.