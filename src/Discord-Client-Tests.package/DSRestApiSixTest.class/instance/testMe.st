tests
testMe
	| user |
	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: self constants tokenString.
	self mockServerDelegate map: '/api/users/@me' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: '{"username": "example user name", "verified": false, "mfa_enabled": false, "id": "1234", "phone": null, "avatar": null, "discriminator": "5678", "email": "email@example.com"}') ].
	user := api me.
	self assert: user notNil.
	self assert: user username equals: 'example user name'.
	self assert: user restApi == api description: 'It should have the api object'.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.