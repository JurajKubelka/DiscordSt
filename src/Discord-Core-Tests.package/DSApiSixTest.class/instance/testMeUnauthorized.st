tests
testMeUnauthorized
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/users/@me' to: self unauthorizedResponseBlock.
	self
		should: [ api me ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #GET.
