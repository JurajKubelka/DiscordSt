tests
testGuildChannelsUsingIdUnauthorized
	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: self constants tokenString.
	self mockServerDelegate map: '/api/guilds/1234/channels' to: self unauthorizedResponseBlock.
	self
		should: [ api guildChannelsUsingId: 1234 ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.
