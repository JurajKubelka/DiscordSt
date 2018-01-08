tests
testLoginNewLoginLocationDetected
	self startMockServer.
	restApi := self newRestApi.
	restApi apiUrl: self apiUrl.
	self mockServerDelegate map: '/api/auth/login' to: [ :request :response |
		self mockServerRequests add: request.
		response 
			entity: (ZnEntity text: '{"email": ["New login location detected, please check your e-mail."]}');
			setContentType: ZnMimeType applicationJson.
		response statusLine
			code: 400;
			reason: 'BAD REQUEST'.
		response. ].
	restApi email: self constants emailString password: self constants passwordString.
	self should: [ restApi login ] raise: DSCannotLoginError withExceptionDo: [ :exception | 
		self assert: exception response notNil.
		self assert: exception response code = 400.
		self assert: exception response contents equals: '{"email": ["New login location detected, please check your e-mail."]}' ].
	self deny: restApi isAuthenticated.
	self assert: restApi token isNil.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first contents equals: '{"email":"email@example.com","password":"secret password"}'.
	self assert: self mockServerRequests first method equals: #POST.