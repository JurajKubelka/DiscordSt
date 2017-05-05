tests
testNewMeUser
	| user |
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	delegate map: '/api/users/@me' to: [ :request :response |
		serverRequests add: request.
		response entity: (ZnEntity text: '{"username": "example user name", "verified": false, "mfa_enabled": false, "id": "1234", "phone": null, "avatar": null, "discriminator": "5678", "email": "email@example.com"}') ].
	user := api newMeUser.
	self assert: user notNil.
	self assert: user username equals: 'example user name'.
	self assert: user api == api description: 'It should have the api object'.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first method equals: #GET.