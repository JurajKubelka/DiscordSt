tests-public
testEditMessageContentEmbed
	self startZnServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/channels/45930/messages/84266' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: self messageObjectWithEmbedsString) ].
		api 
			editMessage: (self messageObjectWithEmbedsObject: api)
			content: self anyString 
			embed: (self messageObjectWithEmbedsObject: api) embeds first.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #PATCH.
	