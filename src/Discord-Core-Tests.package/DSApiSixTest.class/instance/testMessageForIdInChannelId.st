tests
testMessageForIdInChannelId
	| message |
	self startZnServer.
	api := self newApi.
	api apiUrl: self apiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/channels/5930/messages/36576' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: self messageObjectString) ].
	message := api messageForId: 36576 inChannelId: 5930.
	self assert: message notNil.
	self assert: message isMessage.
	self assert: message author username equals: 'user one'.
	self assert: message restApi == api description: 'It should have the api object'.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #GET.
