tests
testMessageForIdInChannelId
	| message |
	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: self constants tokenString.
	self mockServerDelegate map: '/api/channels/5930/messages/36576' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: self constants messageObjectString) ].
	message := api messageForId: 36576 inChannelId: 5930.
	self assert: message notNil.
	self assert: message isMessage.
	self assert: message author username equals: 'user one'.
	self assert: message restApi == api description: 'It should have the api object'.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.
