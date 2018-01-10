initialization
initializeChannelsChannelMessagesPostDelegate
	self delegate
		map: '/api/channels/376284541188962813/messages'
		to: [ :request :response |
			self collection add: request.
			response entity: (ZnEntity text: self jsonMappingClass jsonMessage) ].