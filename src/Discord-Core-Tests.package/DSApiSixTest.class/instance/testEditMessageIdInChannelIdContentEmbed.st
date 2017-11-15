tests-public
testEditMessageIdInChannelIdContentEmbed
	self startZnServer.
	api := self newApi.
	api apiUrl: self apiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/channels/channel-id/messages/message-id' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: self messageObjectWithEmbedsString) ].
		api editMessageId: 'message-id' 
		inChannelId: 'channel-id' 
		content: self anyString 
		embed: (self messageObjectWithEmbedsObject: api) embeds first.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #PATCH.
	