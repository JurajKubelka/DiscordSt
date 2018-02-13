initialization
initializeUsersMeGuildsDelegate
	self delegate map: '/api/users/@me/guilds' to: [ :request :response |
		self collection add: request.
		response entity: (ZnEntity text: self jsonMappingClass jsonCollectionOfGuildsOne) ].