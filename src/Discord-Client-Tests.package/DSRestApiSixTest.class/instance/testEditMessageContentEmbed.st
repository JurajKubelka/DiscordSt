tests-public
testEditMessageContentEmbed
	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: self constants tokenString.
	self mockServerDelegate map: '/api/channels/45930/messages/84266' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: self constants messageObjectWithEmbedsString) ].
		api 
			editMessage: (self constants messageObjectWithEmbedsObject: api)
			content: self constants anyString 
			embed: (self constants messageObjectWithEmbedsObject: api) embeds first.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #PATCH.
	