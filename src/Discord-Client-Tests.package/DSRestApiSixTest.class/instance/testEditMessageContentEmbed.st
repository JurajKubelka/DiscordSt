tests-public
testEditMessageContentEmbed
	self startMockServer.
	restApi := self newRestApi.
	restApi apiUrl: self apiUrl.
	restApi token: self constants tokenString.
	self mockServerDelegate map: '/api/channels/45930/messages/84266' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: self constants messageObjectWithEmbedsString) ].
		restApi 
			editMessage: (self constants messageObjectWithEmbedsObject: restApi)
			content: self constants anyString 
			embed: (self constants messageObjectWithEmbedsObject: restApi) embeds first.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #PATCH.
	