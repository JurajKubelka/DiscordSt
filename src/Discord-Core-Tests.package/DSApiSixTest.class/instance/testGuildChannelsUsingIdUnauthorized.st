tests
testGuildChannelsUsingIdUnauthorized
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	delegate map: '/api/guilds/1234/channels' to: self unauthorizedResponseBlock.
	self
		should: [ api guildChannelsUsingId: 1234 ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first method equals: #GET.
