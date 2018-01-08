initialization
initializeDelegate
	self delegate map: '/api/users/@me' to: [ :request :response |
		self collection add: request.
		response entity: (ZnEntity text: self jsonMappingClass jsonUser) ].