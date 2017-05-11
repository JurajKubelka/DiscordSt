tests
testMeGuildsUnauthorized
	self startZnServer.
	api := self newApi.
	api apiUrl: self apiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/users/@me/guilds' to: self unauthorizedResponseBlock.
	self
		should: [ api meGuilds ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #GET.
