tests - public - user
testMeGuildsUnauthorized
	self startMockServer.
	restApi := self newRestApi.
	restApi apiUrl: self apiUrl.
	restApi token: self constants tokenString.
	self mockServerDelegate map: '/api/users/@me/guilds' to: self unauthorizedResponseBlock.
	self
		should: [ restApi guilds ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.
