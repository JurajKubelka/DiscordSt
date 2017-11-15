tests
testLoginEmailDoesNotExist
	self startZnServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	self serverDelegate map: '/api/auth/login' to: [ :request :response |
		self serverRequests add: request.
		response 
			entity: (ZnEntity text: '{"email": ["Email does not exist."]}');
			setContentType: ZnMimeType applicationJson.
		response statusLine
			code: 400;
			reason: 'BAD REQUEST'.
		response. ].
	api email: self emailString password: self passwordString.
	self should: [ api login ] raise: DSCannotLoginError withExceptionDo: [ :exception | 
		self assert: exception response notNil.
		self assert: exception response code = 400.
		self assert: exception response contents equals: '{"email": ["Email does not exist."]}' ].
	self deny: api isAuthenticated.
	self assert: api token isNil.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first contents equals: '{"email":"email@example.com","password":"secret password"}'.
	self assert: self serverRequests first method equals: #POST.