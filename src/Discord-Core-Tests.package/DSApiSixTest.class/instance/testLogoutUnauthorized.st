tests
testLogoutUnauthorized
	"Unauthorized logout"
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: 'secret-token'.
	delegate map: '/api/auth/logout' to: [ :request :response |
		serverRequests add: request.
		response 
			entity: (ZnEntity text: '{"code": 0, "message": "401: Unauthorized"}');
			setContentType: ZnMimeType applicationJson.
		response statusLine
			code: 401;
			reason: 'UNAUTHORIZED'.
		response ].
	self should: [ api logout ] raise: DSCannotLogoutError withExceptionDo: [ :exception | 
		self assert: exception response notNil.
		self assert: exception response code = 401.
		self assert: exception response contents equals: '{"code": 0, "message": "401: Unauthorized"}' ].
	self assert: api isAuthenticated.
	self assert: api token equals: 'secret-token'.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first contents equals: '{"token":"secret-token"}'.
	self assert: serverRequests first method equals: #POST.