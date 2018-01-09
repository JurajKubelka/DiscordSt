initialization
initializeUsersMeChannelsDelegate
	self delegate map: '/api/users/@me/channels' to: [ :request :response |
		self collection add: request.
		response entity: (ZnEntity text: self jsonMappingClass jsonCollectionOfDirectChannelsOne) ].