initialization
initializeAuthLoginDelegate
	self delegate map: '/api/auth/login' to: [ :request :response |
		self collection add: request.
		response entity: (ZnEntity text: '{"token":"secret-token"}') ].
