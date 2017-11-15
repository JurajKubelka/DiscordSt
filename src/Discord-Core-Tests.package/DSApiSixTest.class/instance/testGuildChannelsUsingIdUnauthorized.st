tests
testGuildChannelsUsingIdUnauthorized
	self startZnServer.
	api := self newApi.
	api apiUrl: self apiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/guilds/1234/channels' to: self unauthorizedResponseBlock.
	self
		should: [ api guildChannelsUsingId: 1234 ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #GET.
