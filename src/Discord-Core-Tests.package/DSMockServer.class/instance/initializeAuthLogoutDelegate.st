initialization
initializeAuthLogoutDelegate
	self delegate map: '/api/auth/logout' to: [ :request :response |
		self collection add: request.
		response entity: (ZnEntity text: '{}') ].