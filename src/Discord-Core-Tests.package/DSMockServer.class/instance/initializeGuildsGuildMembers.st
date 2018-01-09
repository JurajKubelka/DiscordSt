initialization
initializeGuildsGuildMembers
	self delegate map: '/api/guilds/41771983423143937/members' to: [ :request :response |
		self collection add: request.
		response entity: (ZnEntity text: self jsonMappingClass jsonCollectionOfGuildMembersOne) ].